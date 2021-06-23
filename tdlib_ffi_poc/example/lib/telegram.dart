import 'dart:convert';

import 'package:path_provider/path_provider.dart';
import 'package:tdlib_ffi_poc/api/functions.dart';
import 'package:tdlib_ffi_poc/api/objects.dart';
import 'package:tdlib_ffi_poc/api/raw_json_client.dart';

Future<void> telegram(TelegramClient client) async {
  while (true) {
    var obj = client.receive();
    if (obj is UpdateAuthorizationState) {
      await processAuthorization(client, obj);
    }

  }
}

Future<void> processAuthorization(TelegramClient client, UpdateAuthorizationState obj) async {
  if (obj.authorizationState is AuthorizationStateWaitTdlibParameters) {
    var dir = (await getApplicationSupportDirectory()).path;
    // That's shit, but its just prototype
    var func = SetTdlibParameters(TdlibParameters(
        false,
        dir + "/testDbDir",
        dir + "/testFilesDir",
        false,
        false,
        false,
        true,
        977897,
        "b43423865089556eca95329c30a1666d",
        "en_US",
        "laptop",
        "govno_arch_linux",
        "1337",
        true,
        true
    ));
    client.send(func);
  } else if (obj.authorizationState is AuthorizationStateWaitEncryptionKey) {
    var func = CheckDatabaseEncryptionKey(base64.encode(utf8.encode("encryptionKey")));
    client.send(func);
  } else if (obj.authorizationState is AuthorizationStateWaitPhoneNumber) {
    var func = SetAuthenticationPhoneNumber("+79872511259", PhoneNumberAuthenticationSettings(
        false, false, false
    ));
    client.send(func);
  } else if (obj.authorizationState is AuthorizationStateWaitCode) {
    var code = 72379;
    var t = (int c) {code = c;};
    var func = CheckAuthenticationCode(code.toString());
    client.send(func);
  } else if (obj.authorizationState is AuthorizationStateReady) {
    print("Cool, we are in");
  }
}