import 'package:tdlib_ffi_poc/api/basics.dart';
import 'package:tdlib_ffi_poc/api/utils.dart';
import 'package:tdlib_ffi_poc/api/converter.dart';

class Ok extends TdObject {
  @override
  String get tdType => 'ok';

  @override
  Map<String, dynamic> get params => {};

  Ok();

  Ok.fromJson(Map<String, dynamic> json);
}

class Error extends TdObject {
  @override
  String get tdType => "error";

  int code;
  String message;

  @override
  Map<String, dynamic> get params => {
    "code": code,
    "message": message
  };
  Error(this.code, this.message);
  Error.fromJson(Map<String, dynamic> json):
      code = convertToTdObject(json['code']),
      message = convertToTdObject(json['message']);
}

abstract class OptionValue extends TdObject {}
class OptionValueBoolean extends OptionValue {
  @override
  String get tdType => 'optionValueBoolean';

  bool value;

  @override
  Map<String, dynamic> get params => {
    'value': value
  };

  OptionValueBoolean(bool val): value = val;
  OptionValueBoolean.fromJson(Map<String, dynamic> json):
      value = convertToTdObject(json['value']);
}
class OptionValueEmpty extends OptionValue {
  @override
  String get tdType => 'optionValueEmpty';

  @override
  Map<String, dynamic> get params => {};

  OptionValueEmpty();
  OptionValueEmpty.fromJson(Map<String, dynamic> json) {}
}
class OptionValueInteger extends OptionValue {
  @override
  String get tdType => 'optionValueInteger';

  int value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueInteger(int value): this.value = value;

  OptionValueInteger.fromJson(Map<String, dynamic> json):
      value = int.parse(convertToTdObject(json['value']));
}
class OptionValueString extends OptionValue {
  @override
  String get tdType => 'optionValueString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueString(String value): this.value = value;

  OptionValueString.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

abstract class AuthorizationState extends TdObject {}
class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitTdlibParameters';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateWaitTdlibParameters();

  AuthorizationStateWaitTdlibParameters.fromJson(Map<String, dynamic> json);
}
class AuthorizationStateWaitEncryptionKey extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitEncryptionKey';

  bool isEncrypted;

  @override
  Map<String, dynamic> get params => {
    'is_encrypted': isEncrypted,
  };

  AuthorizationStateWaitEncryptionKey(
    this.isEncrypted,
  );

  AuthorizationStateWaitEncryptionKey.fromJson(Map<String, dynamic> json):
    isEncrypted = convertToTdObject(json['is_encrypted']);
}
class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateWaitPhoneNumber();

  AuthorizationStateWaitPhoneNumber.fromJson(Map<String, dynamic> json);
}
class AuthorizationStateWaitCode extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitCode';

  AuthenticationCodeInfo codeInfo;

  @override
  Map<String, dynamic> get params => {
    'code_info': codeInfo,
  };

  AuthorizationStateWaitCode(
    this.codeInfo,
  );

  AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json):
    codeInfo = convertToTdObject(json['code_info']);
}
class AuthorizationStateWaitRegistration extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitRegistration';

  // TermsOfService termsOfService;

  @override
  Map<String, dynamic> get params => {
  //   'terms_of_service': termsOfService,
  };

  AuthorizationStateWaitRegistration(
    // this.termsOfService,
  );

  AuthorizationStateWaitRegistration.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
    // termsOfService = tryConvertToTdObject(json['terms_of_service']);
  }
}
class AuthorizationStateWaitPassword extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitPassword';

  String passwordHint;
  bool hasRecoveryEmailAddress;
  String recoveryEmailAddressPattern;

  @override
  Map<String, dynamic> get params => {
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'recovery_email_address_pattern': recoveryEmailAddressPattern,
  };

  AuthorizationStateWaitPassword(
    this.passwordHint,
    this.hasRecoveryEmailAddress,
    this.recoveryEmailAddressPattern,
  );

  AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json):
    passwordHint = convertToTdObject(json['password_hint']),
    hasRecoveryEmailAddress = convertToTdObject(json['has_recovery_email_address']),
    recoveryEmailAddressPattern = convertToTdObject(json['recovery_email_address_pattern']);
}
class AuthorizationStateReady extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateReady';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateReady();

  AuthorizationStateReady.fromJson(Map<String, dynamic> json);
}
class AuthorizationStateLoggingOut extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateLoggingOut';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateLoggingOut();

  AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json);
}
class AuthorizationStateClosing extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateClosing';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateClosing();

  AuthorizationStateClosing.fromJson(Map<String, dynamic> json);
}
class AuthorizationStateClosed extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateClosed';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateClosed();

  AuthorizationStateClosed.fromJson(Map<String, dynamic> json);
}

class TdlibParameters extends TdObject {
  @override
  String get tdType => 'tdlibParameters';

  bool useTestDc;
  String databaseDirectory;
  String filesDirectory;
  bool useFileDatabase;
  bool useChatInfoDatabase;
  bool useMessageDatabase;
  bool useSecretChats;
  int apiId;
  String apiHash;
  String systemLanguageCode;
  String deviceModel;
  String systemVersion;
  String applicationVersion;
  bool enableStorageOptimizer;
  bool ignoreFileNames;

  @override
  Map<String, dynamic> get params => {
    'use_test_dc': useTestDc,
    'database_directory': databaseDirectory,
    'files_directory': filesDirectory,
    'use_file_database': useFileDatabase,
    'use_chat_info_database': useChatInfoDatabase,
    'use_message_database': useMessageDatabase,
    'use_secret_chats': useSecretChats,
    'api_id': apiId,
    'api_hash': apiHash,
    'system_language_code': systemLanguageCode,
    'device_model': deviceModel,
    'system_version': systemVersion,
    'application_version': applicationVersion,
    'enable_storage_optimizer': enableStorageOptimizer,
    'ignore_file_names': ignoreFileNames,
  };

  TdlibParameters(
    this.useTestDc,
    this.databaseDirectory,
    this.filesDirectory,
    this.useFileDatabase,
    this.useChatInfoDatabase,
    this.useMessageDatabase,
    this.useSecretChats,
    this.apiId,
    this.apiHash,
    this.systemLanguageCode,
    this.deviceModel,
    this.systemVersion,
    this.applicationVersion,
    this.enableStorageOptimizer,
    this.ignoreFileNames,
  );

  TdlibParameters.fromJson(Map<String, dynamic> json):
    useTestDc = convertToTdObject(json['use_test_dc']),
    databaseDirectory = convertToTdObject(json['database_directory']),
    filesDirectory = convertToTdObject(json['files_directory']),
    useFileDatabase = convertToTdObject(json['use_file_database']),
    useChatInfoDatabase = convertToTdObject(json['use_chat_info_database']),
    useMessageDatabase = convertToTdObject(json['use_message_database']),
    useSecretChats = convertToTdObject(json['use_secret_chats']),
    apiId = convertToTdObject(json['api_id']),
    apiHash = convertToTdObject(json['api_hash']),
    systemLanguageCode = convertToTdObject(json['system_language_code']),
    deviceModel = convertToTdObject(json['device_model']),
    systemVersion = convertToTdObject(json['system_version']),
    applicationVersion = convertToTdObject(json['application_version']),
    enableStorageOptimizer = convertToTdObject(json['enable_storage_optimizer']),
    ignoreFileNames = convertToTdObject(json['ignore_file_names']);
  }
class PhoneNumberAuthenticationSettings extends TdObject {
  @override
  String get tdType => 'phoneNumberAuthenticationSettings';

  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  bool allowSmsRetrieverApi;

  @override
  Map<String, dynamic> get params => {
    "allow_flash_call_": allowFlashCall,
    "is_current_phone_number_": isCurrentPhoneNumber,
    "allow_sms_retriever_api_": allowSmsRetrieverApi
  };

  PhoneNumberAuthenticationSettings(
      this.allowFlashCall,
      this.isCurrentPhoneNumber,
      this.allowSmsRetrieverApi
      );

  PhoneNumberAuthenticationSettings.fromJson(Map<String, dynamic> json):
      allowFlashCall = convertToTdObject(json['allow_flash_call_']),
      isCurrentPhoneNumber = convertToTdObject(json['is_current_phone_number_']),
      allowSmsRetrieverApi = convertToTdObject(json['allow_sms_retriever_api_']);

}

abstract class Update extends TdObject {}
class UpdateOption extends Update {
  @override
  String get tdType => "updateOption";

  String name;
  OptionValue value;

  @override
  Map<String, dynamic> get params =>  {
    'name': name,
    'value': value
  };

  UpdateOption(String name, OptionValue value):
    this.name = name,
    this.value = value;

  UpdateOption.fromJson(Map<String, dynamic> obj):
    name = convertToTdObject(obj['name']),
    value = convertToTdObject(obj['value']);
}
class UpdateAuthorizationState extends Update {
  @override
  String get tdType => "updateAuthorizationState";

  AuthorizationState authorizationState;

  @override
  Map<String, dynamic> get params => {
    "authorization_state": authorizationState
  };

  UpdateAuthorizationState(AuthorizationState as): this.authorizationState = as;

  UpdateAuthorizationState.fromJson(Map<String, dynamic> json):
    authorizationState = convertToTdObject(json["authorization_state"]);

  @override
  String toString() => "Instance of 'UpdateAuthorizationState' with state ${authorizationState.tdType}";
}

class AuthenticationCodeInfo extends TdObject {
  @override
  String get tdType => 'authenticationCodeInfo';

  String phoneNumber;
  AuthenticationCodeType type;
  AuthenticationCodeType nextType;
  int timeout;

  @override
  Map<String, dynamic> get params =>
      {
        'phone_number': phoneNumber,
        'type': type,
        'next_type': nextType,
        'timeout': timeout,
      };

  AuthenticationCodeInfo(this.phoneNumber,
      this.type,
      this.nextType,
      this.timeout,);

  AuthenticationCodeInfo.fromJson(Map<String, dynamic> json)
      :
        phoneNumber = convertToTdObject(json['phone_number']),
        type = convertToTdObject(json['type']),
        nextType = convertToTdObject(json['next_type']),
        timeout = convertToTdObject(json['timeout']);
}

abstract class AuthenticationCodeType extends TdObject {}

class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeTelegramMessage';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeTelegramMessage(
    this.length,
  );

  AuthenticationCodeTypeTelegramMessage.fromJson(Map<String, dynamic> json):
    length = convertToTdObject(json['length']);
}

class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeSms';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeSms(
    this.length,
  );

  AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json):
    length = convertToTdObject(json['length']);
}

class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeCall';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeCall(
    this.length,
  );

  AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json):
    length = convertToTdObject(json['length']);
}

class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeFlashCall';

  String pattern;

  @override
  Map<String, dynamic> get params => {
    'pattern': pattern,
  };

  AuthenticationCodeTypeFlashCall(
    this.pattern,
  );

  AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json):
    pattern = convertToTdObject(json['pattern']);
}