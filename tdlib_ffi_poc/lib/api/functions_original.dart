import 'dart:convert';

import 'package:tdlib_ffi_poc/api/objects.dart';
import 'package:tdlib_ffi_poc/api/basics.dart';
import 'package:tdlib_ffi_poc/api/utils.dart';
import 'package:tdlib_ffi_poc/api/converter.dart';

class SetTdlibParameters extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setTdlibParameters';

  TdlibParameters parameters;

  @override
  Map<String, dynamic> get params => {
    'parameters': parameters,
  };

  SetTdlibParameters(
      this.parameters,
      );

  SetTdlibParameters.fromJson(Map<String, dynamic> json):
    parameters = convertToTdObject(json['parameters']);
}

class CheckDatabaseEncryptionKey extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkDatabaseEncryptionKey';

  String encryptionKey;

  @override
  Map<String, dynamic> get params => {
    'encryption_key': encryptionKey,
  };

  CheckDatabaseEncryptionKey(String key): encryptionKey = base64.encode(utf8.encode(key));

  CheckDatabaseEncryptionKey.fromJson(Map<String, dynamic> json):
    encryptionKey = utf8.decode(base64.decode(convertToTdObject(json['encryption_key'])));
}

class SetAuthenticationPhoneNumber extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setAuthenticationPhoneNumber';

  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'settings': settings
  };

  SetAuthenticationPhoneNumber(
      this.phoneNumber,
      this.settings
      );

  SetAuthenticationPhoneNumber.fromJson(Map<String, dynamic> json):
    phoneNumber = convertToTdObject(json['phone_number']),
    settings = convertToTdObject(json['settings']);
}

class CheckAuthenticationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkAuthenticationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckAuthenticationCode(this.code);
  CheckAuthenticationCode.fromJson(Map<String, dynamic> json):
      code = convertToTdObject(json['code']);
}