
import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:flutter/services.dart';
import 'package:tdlib_ffi_poc/api/basics.dart';
import 'package:tdlib_ffi_poc/api/utils.dart';
import 'package:tdlib_ffi_poc/api/converter.dart';

typedef Pointer<Void> td_json_client_create();
typedef Pointer<Void> JsonClientCreate();

typedef Void td_json_client_send(Pointer<Void> client, Pointer<Utf8> request);
typedef void JsonClientSend(Pointer<Void> client, Pointer<Utf8> request);

typedef Pointer<Utf8> td_json_client_receive(Pointer<Void> client, Double timeout);
typedef Pointer<Utf8> JsonClientReceive(Pointer<Void> client, double timeout);

typedef Pointer<Utf8> td_json_client_execute(Pointer<Void> client, Pointer<Utf8> request);
typedef Pointer<Utf8> JsonClientExecute(Pointer<Void> client, Pointer<Utf8> request);

typedef Void td_json_client_destroy(Pointer<Void> client);
typedef void JsonClientDestroy(Pointer<Void> client);

class TelegramClient {
  RawJsonClient _client;

  TelegramClient(): _client = RawJsonClient();

  void send(TdFunction object) {
    _client.send(object.serialize());
  }
  void execute(TdFunction object) {
    _client.execute(object.serialize());
  }

  TdObject receive([double timeout = 2.0]) {
    return convertToTdObject(_client.receive());
  }
}

class RawJsonClient {
  late Pointer<Void> _client;
  late JsonClientCreate _jsonClientCreate;
  late JsonClientSend _jsonClientSend;
  late JsonClientReceive _jsonClientReceive;
  late JsonClientExecute _jsonClientExecute;
  late JsonClientDestroy _jsonClientDestroy;

  RawJsonClient() {
    DynamicLibrary? lib = null;
    if (Platform.isAndroid)
      lib = DynamicLibrary.open("libtdjsonandroid.so");
    else if (Platform.isIOS)
      lib = DynamicLibrary.executable();
    else
      lib = DynamicLibrary.process();

    var createName = "td_json_client_create";
    var sendName = "td_json_client_send";
    var receiveName = "td_json_client_receive";
    var destroyName = "td_json_client_destroy";
    var executeName = "td_json_client_execute";

    if (Platform.isAndroid) {
      createName = "_" + createName;
      sendName = "_" + sendName;
      receiveName = "_" + receiveName;
      destroyName = "_" + destroyName;
      executeName = "_" + executeName;
    }

    _jsonClientCreate = lib
        .lookupFunction<td_json_client_create, JsonClientCreate>(createName);
    _jsonClientSend = lib
        .lookupFunction<td_json_client_send, JsonClientSend>(sendName);
    _jsonClientReceive = lib
        .lookupFunction<td_json_client_receive, JsonClientReceive>(receiveName);
    _jsonClientDestroy = lib
        .lookupFunction<td_json_client_destroy, JsonClientDestroy>(destroyName);
    _jsonClientExecute = lib
        .lookupFunction<td_json_client_execute, JsonClientExecute>(executeName);

    _client = _jsonClientCreate();
  }

  void send(Map<String, dynamic> req) {
    var reqJson = json.encode(req);
    var ptr = reqJson.toNativeUtf8();
    var orig = ptr.toDartString();
    _jsonClientSend(_client, ptr);
  }
  void execute(Map<String, dynamic> req) {
    var reqJson = json.encode(req);
    _jsonClientExecute(_client, reqJson.toNativeUtf8());
  }

  Map<String, dynamic> receive({double timeout = 10.0}) {
    final res = _jsonClientReceive(_client, timeout);
    final resJson = res.toDartString();
    return json.decode(resJson);
  }
}