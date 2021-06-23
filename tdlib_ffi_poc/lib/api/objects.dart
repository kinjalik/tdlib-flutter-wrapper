import 'basics.dart';
import 'utils.dart';
import 'converter.dart';

class Error extends TdObject {
  @override
  String get tdType => 'error';

  int code;
  String message;

  @override
  Map<String, dynamic> get params => {
    'code': code,
    'message': message,
  };

  Error(
    this.code,
    this.message,
  );

  Error.fromJson(Map<String, dynamic> json):
    code = json['code'] is int 
      ? convertToTdObject(json['code']) 
      : int.parse(convertToTdObject(json['code'])),
    message = convertToTdObject(json['message']);
}

class Ok extends TdObject {
  @override
  String get tdType => 'ok';

  @override
  Map<String, dynamic> get params => {};

  Ok();

  Ok.fromJson(Map<String, dynamic> json);
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
    apiId = json['api_id'] is int 
      ? convertToTdObject(json['api_id']) 
      : int.parse(convertToTdObject(json['api_id'])),
    apiHash = convertToTdObject(json['api_hash']),
    systemLanguageCode = convertToTdObject(json['system_language_code']),
    deviceModel = convertToTdObject(json['device_model']),
    systemVersion = convertToTdObject(json['system_version']),
    applicationVersion = convertToTdObject(json['application_version']),
    enableStorageOptimizer = convertToTdObject(json['enable_storage_optimizer']),
    ignoreFileNames = convertToTdObject(json['ignore_file_names']);
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
    length = json['length'] is int 
      ? convertToTdObject(json['length']) 
      : int.parse(convertToTdObject(json['length']));
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
    length = json['length'] is int 
      ? convertToTdObject(json['length']) 
      : int.parse(convertToTdObject(json['length']));
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
    length = json['length'] is int 
      ? convertToTdObject(json['length']) 
      : int.parse(convertToTdObject(json['length']));
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

class AuthenticationCodeInfo extends TdObject {
  @override
  String get tdType => 'authenticationCodeInfo';

  String phoneNumber;
  AuthenticationCodeType type;
  AuthenticationCodeType? nextType;
  int timeout;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'type': type,
    'next_type': nextType,
    'timeout': timeout,
  };

  AuthenticationCodeInfo(
    this.phoneNumber,
    this.type,
    this.nextType,
    this.timeout,
  );

  AuthenticationCodeInfo.fromJson(Map<String, dynamic> json):
    phoneNumber = convertToTdObject(json['phone_number']),
    type = convertToTdObject(json['type']),
    nextType = convertToTdObject(json['next_type']),
    timeout = json['timeout'] is int 
      ? convertToTdObject(json['timeout']) 
      : int.parse(convertToTdObject(json['timeout']));
}

class EmailAddressAuthenticationCodeInfo extends TdObject {
  @override
  String get tdType => 'emailAddressAuthenticationCodeInfo';

  String emailAddressPattern;
  int length;

  @override
  Map<String, dynamic> get params => {
    'email_address_pattern': emailAddressPattern,
    'length': length,
  };

  EmailAddressAuthenticationCodeInfo(
    this.emailAddressPattern,
    this.length,
  );

  EmailAddressAuthenticationCodeInfo.fromJson(Map<String, dynamic> json):
    emailAddressPattern = convertToTdObject(json['email_address_pattern']),
    length = json['length'] is int 
      ? convertToTdObject(json['length']) 
      : int.parse(convertToTdObject(json['length']));
}

class TextEntity extends TdObject {
  @override
  String get tdType => 'textEntity';

  int offset;
  int length;
  TextEntityType type;

  @override
  Map<String, dynamic> get params => {
    'offset': offset,
    'length': length,
    'type': type,
  };

  TextEntity(
    this.offset,
    this.length,
    this.type,
  );

  TextEntity.fromJson(Map<String, dynamic> json):
    offset = json['offset'] is int 
      ? convertToTdObject(json['offset']) 
      : int.parse(convertToTdObject(json['offset'])),
    length = json['length'] is int 
      ? convertToTdObject(json['length']) 
      : int.parse(convertToTdObject(json['length'])),
    type = convertToTdObject(json['type']);
}

class TextEntities extends TdObject {
  @override
  String get tdType => 'textEntities';

  List<TextEntity> entities;

  @override
  Map<String, dynamic> get params => {
    'entities': entities,
  };

  TextEntities(
    this.entities,
  );

  TextEntities.fromJson(Map<String, dynamic> json):
    entities = convertToTdObject(castList<TextEntity>(json['entities']));
}

class FormattedText extends TdObject {
  @override
  String get tdType => 'formattedText';

  String text;
  List<TextEntity> entities;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'entities': entities,
  };

  FormattedText(
    this.text,
    this.entities,
  );

  FormattedText.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    entities = convertToTdObject(castList<TextEntity>(json['entities']));
}

class TermsOfService extends TdObject {
  @override
  String get tdType => 'termsOfService';

  FormattedText text;
  int minUserAge;
  bool showPopup;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'min_user_age': minUserAge,
    'show_popup': showPopup,
  };

  TermsOfService(
    this.text,
    this.minUserAge,
    this.showPopup,
  );

  TermsOfService.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    minUserAge = json['min_user_age'] is int 
      ? convertToTdObject(json['min_user_age']) 
      : int.parse(convertToTdObject(json['min_user_age'])),
    showPopup = convertToTdObject(json['show_popup']);
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

class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitOtherDeviceConfirmation';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  AuthorizationStateWaitOtherDeviceConfirmation(
    this.link,
  );

  AuthorizationStateWaitOtherDeviceConfirmation.fromJson(Map<String, dynamic> json):
    link = convertToTdObject(json['link']);
}

class AuthorizationStateWaitRegistration extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitRegistration';

  TermsOfService termsOfService;

  @override
  Map<String, dynamic> get params => {
    'terms_of_service': termsOfService,
  };

  AuthorizationStateWaitRegistration(
    this.termsOfService,
  );

  AuthorizationStateWaitRegistration.fromJson(Map<String, dynamic> json):
    termsOfService = convertToTdObject(json['terms_of_service']);
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

class PasswordState extends TdObject {
  @override
  String get tdType => 'passwordState';

  bool hasPassword;
  String passwordHint;
  bool hasRecoveryEmailAddress;
  bool hasPassportData;
  EmailAddressAuthenticationCodeInfo? recoveryEmailAddressCodeInfo;

  @override
  Map<String, dynamic> get params => {
    'has_password': hasPassword,
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'has_passport_data': hasPassportData,
    'recovery_email_address_code_info': recoveryEmailAddressCodeInfo,
  };

  PasswordState(
    this.hasPassword,
    this.passwordHint,
    this.hasRecoveryEmailAddress,
    this.hasPassportData,
    this.recoveryEmailAddressCodeInfo,
  );

  PasswordState.fromJson(Map<String, dynamic> json):
    hasPassword = convertToTdObject(json['has_password']),
    passwordHint = convertToTdObject(json['password_hint']),
    hasRecoveryEmailAddress = convertToTdObject(json['has_recovery_email_address']),
    hasPassportData = convertToTdObject(json['has_passport_data']),
    recoveryEmailAddressCodeInfo = convertToTdObject(json['recovery_email_address_code_info']);
}

class RecoveryEmailAddress extends TdObject {
  @override
  String get tdType => 'recoveryEmailAddress';

  String recoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    'recovery_email_address': recoveryEmailAddress,
  };

  RecoveryEmailAddress(
    this.recoveryEmailAddress,
  );

  RecoveryEmailAddress.fromJson(Map<String, dynamic> json):
    recoveryEmailAddress = convertToTdObject(json['recovery_email_address']);
}

class TemporaryPasswordState extends TdObject {
  @override
  String get tdType => 'temporaryPasswordState';

  bool hasPassword;
  int validFor;

  @override
  Map<String, dynamic> get params => {
    'has_password': hasPassword,
    'valid_for': validFor,
  };

  TemporaryPasswordState(
    this.hasPassword,
    this.validFor,
  );

  TemporaryPasswordState.fromJson(Map<String, dynamic> json):
    hasPassword = convertToTdObject(json['has_password']),
    validFor = json['valid_for'] is int 
      ? convertToTdObject(json['valid_for']) 
      : int.parse(convertToTdObject(json['valid_for']));
}

class LocalFile extends TdObject {
  @override
  String get tdType => 'localFile';

  String path;
  bool canBeDownloaded;
  bool canBeDeleted;
  bool isDownloadingActive;
  bool isDownloadingCompleted;
  int downloadOffset;
  int downloadedPrefixSize;
  int downloadedSize;

  @override
  Map<String, dynamic> get params => {
    'path': path,
    'can_be_downloaded': canBeDownloaded,
    'can_be_deleted': canBeDeleted,
    'is_downloading_active': isDownloadingActive,
    'is_downloading_completed': isDownloadingCompleted,
    'download_offset': downloadOffset,
    'downloaded_prefix_size': downloadedPrefixSize,
    'downloaded_size': downloadedSize,
  };

  LocalFile(
    this.path,
    this.canBeDownloaded,
    this.canBeDeleted,
    this.isDownloadingActive,
    this.isDownloadingCompleted,
    this.downloadOffset,
    this.downloadedPrefixSize,
    this.downloadedSize,
  );

  LocalFile.fromJson(Map<String, dynamic> json):
    path = convertToTdObject(json['path']),
    canBeDownloaded = convertToTdObject(json['can_be_downloaded']),
    canBeDeleted = convertToTdObject(json['can_be_deleted']),
    isDownloadingActive = convertToTdObject(json['is_downloading_active']),
    isDownloadingCompleted = convertToTdObject(json['is_downloading_completed']),
    downloadOffset = json['download_offset'] is int 
      ? convertToTdObject(json['download_offset']) 
      : int.parse(convertToTdObject(json['download_offset'])),
    downloadedPrefixSize = json['downloaded_prefix_size'] is int 
      ? convertToTdObject(json['downloaded_prefix_size']) 
      : int.parse(convertToTdObject(json['downloaded_prefix_size'])),
    downloadedSize = json['downloaded_size'] is int 
      ? convertToTdObject(json['downloaded_size']) 
      : int.parse(convertToTdObject(json['downloaded_size']));
}

class RemoteFile extends TdObject {
  @override
  String get tdType => 'remoteFile';

  String id;
  String uniqueId;
  bool isUploadingActive;
  bool isUploadingCompleted;
  int uploadedSize;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'unique_id': uniqueId,
    'is_uploading_active': isUploadingActive,
    'is_uploading_completed': isUploadingCompleted,
    'uploaded_size': uploadedSize,
  };

  RemoteFile(
    this.id,
    this.uniqueId,
    this.isUploadingActive,
    this.isUploadingCompleted,
    this.uploadedSize,
  );

  RemoteFile.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    uniqueId = convertToTdObject(json['unique_id']),
    isUploadingActive = convertToTdObject(json['is_uploading_active']),
    isUploadingCompleted = convertToTdObject(json['is_uploading_completed']),
    uploadedSize = json['uploaded_size'] is int 
      ? convertToTdObject(json['uploaded_size']) 
      : int.parse(convertToTdObject(json['uploaded_size']));
}

class File extends TdObject {
  @override
  String get tdType => 'file';

  int id;
  int size;
  int expectedSize;
  LocalFile local;
  RemoteFile remote;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'size': size,
    'expected_size': expectedSize,
    'local': local,
    'remote': remote,
  };

  File(
    this.id,
    this.size,
    this.expectedSize,
    this.local,
    this.remote,
  );

  File.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    size = json['size'] is int 
      ? convertToTdObject(json['size']) 
      : int.parse(convertToTdObject(json['size'])),
    expectedSize = json['expected_size'] is int 
      ? convertToTdObject(json['expected_size']) 
      : int.parse(convertToTdObject(json['expected_size'])),
    local = convertToTdObject(json['local']),
    remote = convertToTdObject(json['remote']);
}

abstract class InputFile extends TdObject {}

class InputFileId extends InputFile {
  @override
  String get tdType => 'inputFileId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  InputFileId(
    this.id,
  );

  InputFileId.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id']));
}

class InputFileRemote extends InputFile {
  @override
  String get tdType => 'inputFileRemote';

  String id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  InputFileRemote(
    this.id,
  );

  InputFileRemote.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']);
}

class InputFileLocal extends InputFile {
  @override
  String get tdType => 'inputFileLocal';

  String path;

  @override
  Map<String, dynamic> get params => {
    'path': path,
  };

  InputFileLocal(
    this.path,
  );

  InputFileLocal.fromJson(Map<String, dynamic> json):
    path = convertToTdObject(json['path']);
}

class InputFileGenerated extends InputFile {
  @override
  String get tdType => 'inputFileGenerated';

  String originalPath;
  String conversion;
  int expectedSize;

  @override
  Map<String, dynamic> get params => {
    'original_path': originalPath,
    'conversion': conversion,
    'expected_size': expectedSize,
  };

  InputFileGenerated(
    this.originalPath,
    this.conversion,
    this.expectedSize,
  );

  InputFileGenerated.fromJson(Map<String, dynamic> json):
    originalPath = convertToTdObject(json['original_path']),
    conversion = convertToTdObject(json['conversion']),
    expectedSize = json['expected_size'] is int 
      ? convertToTdObject(json['expected_size']) 
      : int.parse(convertToTdObject(json['expected_size']));
}

class PhotoSize extends TdObject {
  @override
  String get tdType => 'photoSize';

  String type;
  File photo;
  int width;
  int height;
  List<int> progressiveSizes;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'photo': photo,
    'width': width,
    'height': height,
    'progressive_sizes': progressiveSizes,
  };

  PhotoSize(
    this.type,
    this.photo,
    this.width,
    this.height,
    this.progressiveSizes,
  );

  PhotoSize.fromJson(Map<String, dynamic> json):
    type = convertToTdObject(json['type']),
    photo = convertToTdObject(json['photo']),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    progressiveSizes = convertToTdObject(castList<int>(json['progressive_sizes']));
}

class Minithumbnail extends TdObject {
  @override
  String get tdType => 'minithumbnail';

  int width;
  int height;
  String data;

  @override
  Map<String, dynamic> get params => {
    'width': width,
    'height': height,
    'data': data,
  };

  Minithumbnail(
    this.width,
    this.height,
    this.data,
  );

  Minithumbnail.fromJson(Map<String, dynamic> json):
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    data = convertToTdObject(json['data']);
}

abstract class ThumbnailFormat extends TdObject {}

class ThumbnailFormatJpeg extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatJpeg';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatJpeg();

  ThumbnailFormatJpeg.fromJson(Map<String, dynamic> json);
}

class ThumbnailFormatPng extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatPng';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatPng();

  ThumbnailFormatPng.fromJson(Map<String, dynamic> json);
}

class ThumbnailFormatWebp extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatWebp';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatWebp();

  ThumbnailFormatWebp.fromJson(Map<String, dynamic> json);
}

class ThumbnailFormatGif extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatGif';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatGif();

  ThumbnailFormatGif.fromJson(Map<String, dynamic> json);
}

class ThumbnailFormatTgs extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatTgs';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatTgs();

  ThumbnailFormatTgs.fromJson(Map<String, dynamic> json);
}

class ThumbnailFormatMpeg4 extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatMpeg4';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatMpeg4();

  ThumbnailFormatMpeg4.fromJson(Map<String, dynamic> json);
}

class Thumbnail extends TdObject {
  @override
  String get tdType => 'thumbnail';

  ThumbnailFormat format;
  int width;
  int height;
  File file;

  @override
  Map<String, dynamic> get params => {
    'format': format,
    'width': width,
    'height': height,
    'file': file,
  };

  Thumbnail(
    this.format,
    this.width,
    this.height,
    this.file,
  );

  Thumbnail.fromJson(Map<String, dynamic> json):
    format = convertToTdObject(json['format']),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    file = convertToTdObject(json['file']);
}

abstract class MaskPoint extends TdObject {}

class MaskPointForehead extends MaskPoint {
  @override
  String get tdType => 'maskPointForehead';

  @override
  Map<String, dynamic> get params => {};

  MaskPointForehead();

  MaskPointForehead.fromJson(Map<String, dynamic> json);
}

class MaskPointEyes extends MaskPoint {
  @override
  String get tdType => 'maskPointEyes';

  @override
  Map<String, dynamic> get params => {};

  MaskPointEyes();

  MaskPointEyes.fromJson(Map<String, dynamic> json);
}

class MaskPointMouth extends MaskPoint {
  @override
  String get tdType => 'maskPointMouth';

  @override
  Map<String, dynamic> get params => {};

  MaskPointMouth();

  MaskPointMouth.fromJson(Map<String, dynamic> json);
}

class MaskPointChin extends MaskPoint {
  @override
  String get tdType => 'maskPointChin';

  @override
  Map<String, dynamic> get params => {};

  MaskPointChin();

  MaskPointChin.fromJson(Map<String, dynamic> json);
}

class MaskPosition extends TdObject {
  @override
  String get tdType => 'maskPosition';

  MaskPoint point;
  double xShift;
  double yShift;
  double scale;

  @override
  Map<String, dynamic> get params => {
    'point': point,
    'x_shift': xShift,
    'y_shift': yShift,
    'scale': scale,
  };

  MaskPosition(
    this.point,
    this.xShift,
    this.yShift,
    this.scale,
  );

  MaskPosition.fromJson(Map<String, dynamic> json):
    point = convertToTdObject(json['point']),
    xShift = convertToTdObject(json['x_shift']),
    yShift = convertToTdObject(json['y_shift']),
    scale = convertToTdObject(json['scale']);
}

class ClosedVectorPath extends TdObject {
  @override
  String get tdType => 'closedVectorPath';

  List<VectorPathCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'commands': commands,
  };

  ClosedVectorPath(
    this.commands,
  );

  ClosedVectorPath.fromJson(Map<String, dynamic> json):
    commands = convertToTdObject(castList<VectorPathCommand>(json['commands']));
}

class PollOption extends TdObject {
  @override
  String get tdType => 'pollOption';

  String text;
  int voterCount;
  int votePercentage;
  bool isChosen;
  bool isBeingChosen;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'voter_count': voterCount,
    'vote_percentage': votePercentage,
    'is_chosen': isChosen,
    'is_being_chosen': isBeingChosen,
  };

  PollOption(
    this.text,
    this.voterCount,
    this.votePercentage,
    this.isChosen,
    this.isBeingChosen,
  );

  PollOption.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    voterCount = json['voter_count'] is int 
      ? convertToTdObject(json['voter_count']) 
      : int.parse(convertToTdObject(json['voter_count'])),
    votePercentage = json['vote_percentage'] is int 
      ? convertToTdObject(json['vote_percentage']) 
      : int.parse(convertToTdObject(json['vote_percentage'])),
    isChosen = convertToTdObject(json['is_chosen']),
    isBeingChosen = convertToTdObject(json['is_being_chosen']);
}

abstract class PollType extends TdObject {}

class PollTypeRegular extends PollType {
  @override
  String get tdType => 'pollTypeRegular';

  bool allowMultipleAnswers;

  @override
  Map<String, dynamic> get params => {
    'allow_multiple_answers': allowMultipleAnswers,
  };

  PollTypeRegular(
    this.allowMultipleAnswers,
  );

  PollTypeRegular.fromJson(Map<String, dynamic> json):
    allowMultipleAnswers = convertToTdObject(json['allow_multiple_answers']);
}

class PollTypeQuiz extends PollType {
  @override
  String get tdType => 'pollTypeQuiz';

  int correctOptionId;
  FormattedText explanation;

  @override
  Map<String, dynamic> get params => {
    'correct_option_id': correctOptionId,
    'explanation': explanation,
  };

  PollTypeQuiz(
    this.correctOptionId,
    this.explanation,
  );

  PollTypeQuiz.fromJson(Map<String, dynamic> json):
    correctOptionId = json['correct_option_id'] is int 
      ? convertToTdObject(json['correct_option_id']) 
      : int.parse(convertToTdObject(json['correct_option_id'])),
    explanation = convertToTdObject(json['explanation']);
}

class Animation extends TdObject {
  @override
  String get tdType => 'animation';

  int duration;
  int width;
  int height;
  String fileName;
  String mimeType;
  bool hasStickers;
  Minithumbnail? minithumbnail;
  Thumbnail? thumbnail;
  File animation;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'has_stickers': hasStickers,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'animation': animation,
  };

  Animation(
    this.duration,
    this.width,
    this.height,
    this.fileName,
    this.mimeType,
    this.hasStickers,
    this.minithumbnail,
    this.thumbnail,
    this.animation,
  );

  Animation.fromJson(Map<String, dynamic> json):
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    fileName = convertToTdObject(json['file_name']),
    mimeType = convertToTdObject(json['mime_type']),
    hasStickers = convertToTdObject(json['has_stickers']),
    minithumbnail = convertToTdObject(json['minithumbnail']),
    thumbnail = convertToTdObject(json['thumbnail']),
    animation = convertToTdObject(json['animation']);
}

class Audio extends TdObject {
  @override
  String get tdType => 'audio';

  int duration;
  String title;
  String performer;
  String fileName;
  String mimeType;
  Minithumbnail albumCoverMinithumbnail;
  Thumbnail? albumCoverThumbnail;
  File audio;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'title': title,
    'performer': performer,
    'file_name': fileName,
    'mime_type': mimeType,
    'album_cover_minithumbnail': albumCoverMinithumbnail,
    'album_cover_thumbnail': albumCoverThumbnail,
    'audio': audio,
  };

  Audio(
    this.duration,
    this.title,
    this.performer,
    this.fileName,
    this.mimeType,
    this.albumCoverMinithumbnail,
    this.albumCoverThumbnail,
    this.audio,
  );

  Audio.fromJson(Map<String, dynamic> json):
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    title = convertToTdObject(json['title']),
    performer = convertToTdObject(json['performer']),
    fileName = convertToTdObject(json['file_name']),
    mimeType = convertToTdObject(json['mime_type']),
    albumCoverMinithumbnail = convertToTdObject(json['album_cover_minithumbnail']),
    albumCoverThumbnail = convertToTdObject(json['album_cover_thumbnail']),
    audio = convertToTdObject(json['audio']);
}

class Document extends TdObject {
  @override
  String get tdType => 'document';

  String fileName;
  String mimeType;
  Minithumbnail? minithumbnail;
  Thumbnail? thumbnail;
  File document;

  @override
  Map<String, dynamic> get params => {
    'file_name': fileName,
    'mime_type': mimeType,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'document': document,
  };

  Document(
    this.fileName,
    this.mimeType,
    this.minithumbnail,
    this.thumbnail,
    this.document,
  );

  Document.fromJson(Map<String, dynamic> json):
    fileName = convertToTdObject(json['file_name']),
    mimeType = convertToTdObject(json['mime_type']),
    minithumbnail = convertToTdObject(json['minithumbnail']),
    thumbnail = convertToTdObject(json['thumbnail']),
    document = convertToTdObject(json['document']);
}

class Photo extends TdObject {
  @override
  String get tdType => 'photo';

  bool hasStickers;
  Minithumbnail? minithumbnail;
  List<PhotoSize> sizes;

  @override
  Map<String, dynamic> get params => {
    'has_stickers': hasStickers,
    'minithumbnail': minithumbnail,
    'sizes': sizes,
  };

  Photo(
    this.hasStickers,
    this.minithumbnail,
    this.sizes,
  );

  Photo.fromJson(Map<String, dynamic> json):
    hasStickers = convertToTdObject(json['has_stickers']),
    minithumbnail = convertToTdObject(json['minithumbnail']),
    sizes = convertToTdObject(castList<PhotoSize>(json['sizes']));
}

class Sticker extends TdObject {
  @override
  String get tdType => 'sticker';

  int setId;
  int width;
  int height;
  String emoji;
  bool isAnimated;
  bool isMask;
  MaskPosition maskPosition;
  List<ClosedVectorPath> outline;
  Thumbnail? thumbnail;
  File sticker;

  @override
  Map<String, dynamic> get params => {
    'set_id': setId,
    'width': width,
    'height': height,
    'emoji': emoji,
    'is_animated': isAnimated,
    'is_mask': isMask,
    'mask_position': maskPosition,
    'outline': outline,
    'thumbnail': thumbnail,
    'sticker': sticker,
  };

  Sticker(
    this.setId,
    this.width,
    this.height,
    this.emoji,
    this.isAnimated,
    this.isMask,
    this.maskPosition,
    this.outline,
    this.thumbnail,
    this.sticker,
  );

  Sticker.fromJson(Map<String, dynamic> json):
    setId = json['set_id'] is int 
      ? convertToTdObject(json['set_id']) 
      : int.parse(convertToTdObject(json['set_id'])),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    emoji = convertToTdObject(json['emoji']),
    isAnimated = convertToTdObject(json['is_animated']),
    isMask = convertToTdObject(json['is_mask']),
    maskPosition = convertToTdObject(json['mask_position']),
    outline = convertToTdObject(castList<ClosedVectorPath>(json['outline'])),
    thumbnail = convertToTdObject(json['thumbnail']),
    sticker = convertToTdObject(json['sticker']);
}

class Video extends TdObject {
  @override
  String get tdType => 'video';

  int duration;
  int width;
  int height;
  String fileName;
  String mimeType;
  bool hasStickers;
  bool supportsStreaming;
  Minithumbnail minithumbnail;
  Thumbnail? thumbnail;
  File video;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'has_stickers': hasStickers,
    'supports_streaming': supportsStreaming,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'video': video,
  };

  Video(
    this.duration,
    this.width,
    this.height,
    this.fileName,
    this.mimeType,
    this.hasStickers,
    this.supportsStreaming,
    this.minithumbnail,
    this.thumbnail,
    this.video,
  );

  Video.fromJson(Map<String, dynamic> json):
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    fileName = convertToTdObject(json['file_name']),
    mimeType = convertToTdObject(json['mime_type']),
    hasStickers = convertToTdObject(json['has_stickers']),
    supportsStreaming = convertToTdObject(json['supports_streaming']),
    minithumbnail = convertToTdObject(json['minithumbnail']),
    thumbnail = convertToTdObject(json['thumbnail']),
    video = convertToTdObject(json['video']);
}

class VideoNote extends TdObject {
  @override
  String get tdType => 'videoNote';

  int duration;
  int length;
  Minithumbnail minithumbnail;
  Thumbnail? thumbnail;
  File video;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'length': length,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'video': video,
  };

  VideoNote(
    this.duration,
    this.length,
    this.minithumbnail,
    this.thumbnail,
    this.video,
  );

  VideoNote.fromJson(Map<String, dynamic> json):
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    length = json['length'] is int 
      ? convertToTdObject(json['length']) 
      : int.parse(convertToTdObject(json['length'])),
    minithumbnail = convertToTdObject(json['minithumbnail']),
    thumbnail = convertToTdObject(json['thumbnail']),
    video = convertToTdObject(json['video']);
}

class VoiceNote extends TdObject {
  @override
  String get tdType => 'voiceNote';

  int duration;
  String waveform;
  String mimeType;
  File voice;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'waveform': waveform,
    'mime_type': mimeType,
    'voice': voice,
  };

  VoiceNote(
    this.duration,
    this.waveform,
    this.mimeType,
    this.voice,
  );

  VoiceNote.fromJson(Map<String, dynamic> json):
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    waveform = convertToTdObject(json['waveform']),
    mimeType = convertToTdObject(json['mime_type']),
    voice = convertToTdObject(json['voice']);
}

class Contact extends TdObject {
  @override
  String get tdType => 'contact';

  String phoneNumber;
  String firstName;
  String lastName;
  String vcard;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'first_name': firstName,
    'last_name': lastName,
    'vcard': vcard,
    'user_id': userId,
  };

  Contact(
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.vcard,
    this.userId,
  );

  Contact.fromJson(Map<String, dynamic> json):
    phoneNumber = convertToTdObject(json['phone_number']),
    firstName = convertToTdObject(json['first_name']),
    lastName = convertToTdObject(json['last_name']),
    vcard = convertToTdObject(json['vcard']),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id']));
}

class Location extends TdObject {
  @override
  String get tdType => 'location';

  double latitude;
  double longitude;
  double horizontalAccuracy;

  @override
  Map<String, dynamic> get params => {
    'latitude': latitude,
    'longitude': longitude,
    'horizontal_accuracy': horizontalAccuracy,
  };

  Location(
    this.latitude,
    this.longitude,
    this.horizontalAccuracy,
  );

  Location.fromJson(Map<String, dynamic> json):
    latitude = convertToTdObject(json['latitude']),
    longitude = convertToTdObject(json['longitude']),
    horizontalAccuracy = convertToTdObject(json['horizontal_accuracy']);
}

class Venue extends TdObject {
  @override
  String get tdType => 'venue';

  Location location;
  String title;
  String address;
  String provider;
  String id;
  String type;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'title': title,
    'address': address,
    'provider': provider,
    'id': id,
    'type': type,
  };

  Venue(
    this.location,
    this.title,
    this.address,
    this.provider,
    this.id,
    this.type,
  );

  Venue.fromJson(Map<String, dynamic> json):
    location = convertToTdObject(json['location']),
    title = convertToTdObject(json['title']),
    address = convertToTdObject(json['address']),
    provider = convertToTdObject(json['provider']),
    id = convertToTdObject(json['id']),
    type = convertToTdObject(json['type']);
}

class Game extends TdObject {
  @override
  String get tdType => 'game';

  int id;
  String shortName;
  String title;
  FormattedText text;
  String description;
  Photo photo;
  Animation? animation;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'short_name': shortName,
    'title': title,
    'text': text,
    'description': description,
    'photo': photo,
    'animation': animation,
  };

  Game(
    this.id,
    this.shortName,
    this.title,
    this.text,
    this.description,
    this.photo,
    this.animation,
  );

  Game.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    shortName = convertToTdObject(json['short_name']),
    title = convertToTdObject(json['title']),
    text = convertToTdObject(json['text']),
    description = convertToTdObject(json['description']),
    photo = convertToTdObject(json['photo']),
    animation = convertToTdObject(json['animation']);
}

class Poll extends TdObject {
  @override
  String get tdType => 'poll';

  int id;
  String question;
  List<PollOption> options;
  int totalVoterCount;
  List<int> recentVoterUserIds;
  bool isAnonymous;
  PollType type;
  int openPeriod;
  int closeDate;
  bool isClosed;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'question': question,
    'options': options,
    'total_voter_count': totalVoterCount,
    'recent_voter_user_ids': recentVoterUserIds,
    'is_anonymous': isAnonymous,
    'type': type,
    'open_period': openPeriod,
    'close_date': closeDate,
    'is_closed': isClosed,
  };

  Poll(
    this.id,
    this.question,
    this.options,
    this.totalVoterCount,
    this.recentVoterUserIds,
    this.isAnonymous,
    this.type,
    this.openPeriod,
    this.closeDate,
    this.isClosed,
  );

  Poll.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    question = convertToTdObject(json['question']),
    options = convertToTdObject(castList<PollOption>(json['options'])),
    totalVoterCount = json['total_voter_count'] is int 
      ? convertToTdObject(json['total_voter_count']) 
      : int.parse(convertToTdObject(json['total_voter_count'])),
    recentVoterUserIds = convertToTdObject(castList<int>(json['recent_voter_user_ids'])),
    isAnonymous = convertToTdObject(json['is_anonymous']),
    type = convertToTdObject(json['type']),
    openPeriod = json['open_period'] is int 
      ? convertToTdObject(json['open_period']) 
      : int.parse(convertToTdObject(json['open_period'])),
    closeDate = json['close_date'] is int 
      ? convertToTdObject(json['close_date']) 
      : int.parse(convertToTdObject(json['close_date'])),
    isClosed = convertToTdObject(json['is_closed']);
}

class ProfilePhoto extends TdObject {
  @override
  String get tdType => 'profilePhoto';

  int id;
  File small;
  File big;
  Minithumbnail minithumbnail;
  bool hasAnimation;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'small': small,
    'big': big,
    'minithumbnail': minithumbnail,
    'has_animation': hasAnimation,
  };

  ProfilePhoto(
    this.id,
    this.small,
    this.big,
    this.minithumbnail,
    this.hasAnimation,
  );

  ProfilePhoto.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    small = convertToTdObject(json['small']),
    big = convertToTdObject(json['big']),
    minithumbnail = convertToTdObject(json['minithumbnail']),
    hasAnimation = convertToTdObject(json['has_animation']);
}

class ChatPhotoInfo extends TdObject {
  @override
  String get tdType => 'chatPhotoInfo';

  File small;
  File big;
  Minithumbnail minithumbnail;
  bool hasAnimation;

  @override
  Map<String, dynamic> get params => {
    'small': small,
    'big': big,
    'minithumbnail': minithumbnail,
    'has_animation': hasAnimation,
  };

  ChatPhotoInfo(
    this.small,
    this.big,
    this.minithumbnail,
    this.hasAnimation,
  );

  ChatPhotoInfo.fromJson(Map<String, dynamic> json):
    small = convertToTdObject(json['small']),
    big = convertToTdObject(json['big']),
    minithumbnail = convertToTdObject(json['minithumbnail']),
    hasAnimation = convertToTdObject(json['has_animation']);
}

abstract class UserType extends TdObject {}

class UserTypeRegular extends UserType {
  @override
  String get tdType => 'userTypeRegular';

  @override
  Map<String, dynamic> get params => {};

  UserTypeRegular();

  UserTypeRegular.fromJson(Map<String, dynamic> json);
}

class UserTypeDeleted extends UserType {
  @override
  String get tdType => 'userTypeDeleted';

  @override
  Map<String, dynamic> get params => {};

  UserTypeDeleted();

  UserTypeDeleted.fromJson(Map<String, dynamic> json);
}

class UserTypeBot extends UserType {
  @override
  String get tdType => 'userTypeBot';

  bool canJoinGroups;
  bool canReadAllGroupMessages;
  bool isInline;
  String inlineQueryPlaceholder;
  bool needLocation;

  @override
  Map<String, dynamic> get params => {
    'can_join_groups': canJoinGroups,
    'can_read_all_group_messages': canReadAllGroupMessages,
    'is_inline': isInline,
    'inline_query_placeholder': inlineQueryPlaceholder,
    'need_location': needLocation,
  };

  UserTypeBot(
    this.canJoinGroups,
    this.canReadAllGroupMessages,
    this.isInline,
    this.inlineQueryPlaceholder,
    this.needLocation,
  );

  UserTypeBot.fromJson(Map<String, dynamic> json):
    canJoinGroups = convertToTdObject(json['can_join_groups']),
    canReadAllGroupMessages = convertToTdObject(json['can_read_all_group_messages']),
    isInline = convertToTdObject(json['is_inline']),
    inlineQueryPlaceholder = convertToTdObject(json['inline_query_placeholder']),
    needLocation = convertToTdObject(json['need_location']);
}

class UserTypeUnknown extends UserType {
  @override
  String get tdType => 'userTypeUnknown';

  @override
  Map<String, dynamic> get params => {};

  UserTypeUnknown();

  UserTypeUnknown.fromJson(Map<String, dynamic> json);
}

class BotCommand extends TdObject {
  @override
  String get tdType => 'botCommand';

  String command;
  String description;

  @override
  Map<String, dynamic> get params => {
    'command': command,
    'description': description,
  };

  BotCommand(
    this.command,
    this.description,
  );

  BotCommand.fromJson(Map<String, dynamic> json):
    command = convertToTdObject(json['command']),
    description = convertToTdObject(json['description']);
}

class BotCommands extends TdObject {
  @override
  String get tdType => 'botCommands';

  int botUserId;
  List<BotCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'commands': commands,
  };

  BotCommands(
    this.botUserId,
    this.commands,
  );

  BotCommands.fromJson(Map<String, dynamic> json):
    botUserId = json['bot_user_id'] is int 
      ? convertToTdObject(json['bot_user_id']) 
      : int.parse(convertToTdObject(json['bot_user_id'])),
    commands = convertToTdObject(castList<BotCommand>(json['commands']));
}

class ChatLocation extends TdObject {
  @override
  String get tdType => 'chatLocation';

  Location location;
  String address;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'address': address,
  };

  ChatLocation(
    this.location,
    this.address,
  );

  ChatLocation.fromJson(Map<String, dynamic> json):
    location = convertToTdObject(json['location']),
    address = convertToTdObject(json['address']);
}

class AnimatedChatPhoto extends TdObject {
  @override
  String get tdType => 'animatedChatPhoto';

  int length;
  File file;
  double mainFrameTimestamp;

  @override
  Map<String, dynamic> get params => {
    'length': length,
    'file': file,
    'main_frame_timestamp': mainFrameTimestamp,
  };

  AnimatedChatPhoto(
    this.length,
    this.file,
    this.mainFrameTimestamp,
  );

  AnimatedChatPhoto.fromJson(Map<String, dynamic> json):
    length = json['length'] is int 
      ? convertToTdObject(json['length']) 
      : int.parse(convertToTdObject(json['length'])),
    file = convertToTdObject(json['file']),
    mainFrameTimestamp = convertToTdObject(json['main_frame_timestamp']);
}

class ChatPhoto extends TdObject {
  @override
  String get tdType => 'chatPhoto';

  int id;
  int addedDate;
  Minithumbnail minithumbnail;
  List<PhotoSize> sizes;
  AnimatedChatPhoto? animation;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'added_date': addedDate,
    'minithumbnail': minithumbnail,
    'sizes': sizes,
    'animation': animation,
  };

  ChatPhoto(
    this.id,
    this.addedDate,
    this.minithumbnail,
    this.sizes,
    this.animation,
  );

  ChatPhoto.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    addedDate = json['added_date'] is int 
      ? convertToTdObject(json['added_date']) 
      : int.parse(convertToTdObject(json['added_date'])),
    minithumbnail = convertToTdObject(json['minithumbnail']),
    sizes = convertToTdObject(castList<PhotoSize>(json['sizes'])),
    animation = convertToTdObject(json['animation']);
}

class ChatPhotos extends TdObject {
  @override
  String get tdType => 'chatPhotos';

  int totalCount;
  List<ChatPhoto> photos;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'photos': photos,
  };

  ChatPhotos(
    this.totalCount,
    this.photos,
  );

  ChatPhotos.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    photos = convertToTdObject(castList<ChatPhoto>(json['photos']));
}

abstract class InputChatPhoto extends TdObject {}

class InputChatPhotoPrevious extends InputChatPhoto {
  @override
  String get tdType => 'inputChatPhotoPrevious';

  int chatPhotoId;

  @override
  Map<String, dynamic> get params => {
    'chat_photo_id': chatPhotoId,
  };

  InputChatPhotoPrevious(
    this.chatPhotoId,
  );

  InputChatPhotoPrevious.fromJson(Map<String, dynamic> json):
    chatPhotoId = json['chat_photo_id'] is int 
      ? convertToTdObject(json['chat_photo_id']) 
      : int.parse(convertToTdObject(json['chat_photo_id']));
}

class InputChatPhotoStatic extends InputChatPhoto {
  @override
  String get tdType => 'inputChatPhotoStatic';

  InputFile photo;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
  };

  InputChatPhotoStatic(
    this.photo,
  );

  InputChatPhotoStatic.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']);
}

class InputChatPhotoAnimation extends InputChatPhoto {
  @override
  String get tdType => 'inputChatPhotoAnimation';

  InputFile animation;
  double mainFrameTimestamp;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'main_frame_timestamp': mainFrameTimestamp,
  };

  InputChatPhotoAnimation(
    this.animation,
    this.mainFrameTimestamp,
  );

  InputChatPhotoAnimation.fromJson(Map<String, dynamic> json):
    animation = convertToTdObject(json['animation']),
    mainFrameTimestamp = convertToTdObject(json['main_frame_timestamp']);
}

class User extends TdObject {
  @override
  String get tdType => 'user';

  int id;
  String firstName;
  String lastName;
  String username;
  String phoneNumber;
  UserStatus status;
  ProfilePhoto profilePhoto;
  bool isContact;
  bool isMutualContact;
  bool isVerified;
  bool isSupport;
  String restrictionReason;
  bool isScam;
  bool isFake;
  bool haveAccess;
  UserType type;
  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'first_name': firstName,
    'last_name': lastName,
    'username': username,
    'phone_number': phoneNumber,
    'status': status,
    'profile_photo': profilePhoto,
    'is_contact': isContact,
    'is_mutual_contact': isMutualContact,
    'is_verified': isVerified,
    'is_support': isSupport,
    'restriction_reason': restrictionReason,
    'is_scam': isScam,
    'is_fake': isFake,
    'have_access': haveAccess,
    'type': type,
    'language_code': languageCode,
  };

  User(
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.phoneNumber,
    this.status,
    this.profilePhoto,
    this.isContact,
    this.isMutualContact,
    this.isVerified,
    this.isSupport,
    this.restrictionReason,
    this.isScam,
    this.isFake,
    this.haveAccess,
    this.type,
    this.languageCode,
  );

  User.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    firstName = convertToTdObject(json['first_name']),
    lastName = convertToTdObject(json['last_name']),
    username = convertToTdObject(json['username']),
    phoneNumber = convertToTdObject(json['phone_number']),
    status = convertToTdObject(json['status']),
    profilePhoto = convertToTdObject(json['profile_photo']),
    isContact = convertToTdObject(json['is_contact']),
    isMutualContact = convertToTdObject(json['is_mutual_contact']),
    isVerified = convertToTdObject(json['is_verified']),
    isSupport = convertToTdObject(json['is_support']),
    restrictionReason = convertToTdObject(json['restriction_reason']),
    isScam = convertToTdObject(json['is_scam']),
    isFake = convertToTdObject(json['is_fake']),
    haveAccess = convertToTdObject(json['have_access']),
    type = convertToTdObject(json['type']),
    languageCode = convertToTdObject(json['language_code']);
}

class UserFullInfo extends TdObject {
  @override
  String get tdType => 'userFullInfo';

  ChatPhoto photo;
  bool isBlocked;
  bool canBeCalled;
  bool supportsVideoCalls;
  bool hasPrivateCalls;
  bool needPhoneNumberPrivacyException;
  String bio;
  String shareText;
  String description;
  int groupInCommonCount;
  List<BotCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'is_blocked': isBlocked,
    'can_be_called': canBeCalled,
    'supports_video_calls': supportsVideoCalls,
    'has_private_calls': hasPrivateCalls,
    'need_phone_number_privacy_exception': needPhoneNumberPrivacyException,
    'bio': bio,
    'share_text': shareText,
    'description': description,
    'group_in_common_count': groupInCommonCount,
    'commands': commands,
  };

  UserFullInfo(
    this.photo,
    this.isBlocked,
    this.canBeCalled,
    this.supportsVideoCalls,
    this.hasPrivateCalls,
    this.needPhoneNumberPrivacyException,
    this.bio,
    this.shareText,
    this.description,
    this.groupInCommonCount,
    this.commands,
  );

  UserFullInfo.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']),
    isBlocked = convertToTdObject(json['is_blocked']),
    canBeCalled = convertToTdObject(json['can_be_called']),
    supportsVideoCalls = convertToTdObject(json['supports_video_calls']),
    hasPrivateCalls = convertToTdObject(json['has_private_calls']),
    needPhoneNumberPrivacyException = convertToTdObject(json['need_phone_number_privacy_exception']),
    bio = convertToTdObject(json['bio']),
    shareText = convertToTdObject(json['share_text']),
    description = convertToTdObject(json['description']),
    groupInCommonCount = json['group_in_common_count'] is int 
      ? convertToTdObject(json['group_in_common_count']) 
      : int.parse(convertToTdObject(json['group_in_common_count'])),
    commands = convertToTdObject(castList<BotCommand>(json['commands']));
}

class Users extends TdObject {
  @override
  String get tdType => 'users';

  int totalCount;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'user_ids': userIds,
  };

  Users(
    this.totalCount,
    this.userIds,
  );

  Users.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    userIds = convertToTdObject(castList<int>(json['user_ids']));
}

class ChatAdministrator extends TdObject {
  @override
  String get tdType => 'chatAdministrator';

  int userId;
  String customTitle;
  bool isOwner;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'custom_title': customTitle,
    'is_owner': isOwner,
  };

  ChatAdministrator(
    this.userId,
    this.customTitle,
    this.isOwner,
  );

  ChatAdministrator.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    customTitle = convertToTdObject(json['custom_title']),
    isOwner = convertToTdObject(json['is_owner']);
}

class ChatAdministrators extends TdObject {
  @override
  String get tdType => 'chatAdministrators';

  List<ChatAdministrator> administrators;

  @override
  Map<String, dynamic> get params => {
    'administrators': administrators,
  };

  ChatAdministrators(
    this.administrators,
  );

  ChatAdministrators.fromJson(Map<String, dynamic> json):
    administrators = convertToTdObject(castList<ChatAdministrator>(json['administrators']));
}

class ChatPermissions extends TdObject {
  @override
  String get tdType => 'chatPermissions';

  bool canSendMessages;
  bool canSendMediaMessages;
  bool canSendPolls;
  bool canSendOtherMessages;
  bool canAddWebPagePreviews;
  bool canChangeInfo;
  bool canInviteUsers;
  bool canPinMessages;

  @override
  Map<String, dynamic> get params => {
    'can_send_messages': canSendMessages,
    'can_send_media_messages': canSendMediaMessages,
    'can_send_polls': canSendPolls,
    'can_send_other_messages': canSendOtherMessages,
    'can_add_web_page_previews': canAddWebPagePreviews,
    'can_change_info': canChangeInfo,
    'can_invite_users': canInviteUsers,
    'can_pin_messages': canPinMessages,
  };

  ChatPermissions(
    this.canSendMessages,
    this.canSendMediaMessages,
    this.canSendPolls,
    this.canSendOtherMessages,
    this.canAddWebPagePreviews,
    this.canChangeInfo,
    this.canInviteUsers,
    this.canPinMessages,
  );

  ChatPermissions.fromJson(Map<String, dynamic> json):
    canSendMessages = convertToTdObject(json['can_send_messages']),
    canSendMediaMessages = convertToTdObject(json['can_send_media_messages']),
    canSendPolls = convertToTdObject(json['can_send_polls']),
    canSendOtherMessages = convertToTdObject(json['can_send_other_messages']),
    canAddWebPagePreviews = convertToTdObject(json['can_add_web_page_previews']),
    canChangeInfo = convertToTdObject(json['can_change_info']),
    canInviteUsers = convertToTdObject(json['can_invite_users']),
    canPinMessages = convertToTdObject(json['can_pin_messages']);
}

abstract class ChatMemberStatus extends TdObject {}

class ChatMemberStatusCreator extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusCreator';

  String customTitle;
  bool isAnonymous;
  bool isMember;

  @override
  Map<String, dynamic> get params => {
    'custom_title': customTitle,
    'is_anonymous': isAnonymous,
    'is_member': isMember,
  };

  ChatMemberStatusCreator(
    this.customTitle,
    this.isAnonymous,
    this.isMember,
  );

  ChatMemberStatusCreator.fromJson(Map<String, dynamic> json):
    customTitle = convertToTdObject(json['custom_title']),
    isAnonymous = convertToTdObject(json['is_anonymous']),
    isMember = convertToTdObject(json['is_member']);
}

class ChatMemberStatusAdministrator extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusAdministrator';

  String customTitle;
  bool canBeEdited;
  bool canManageChat;
  bool canChangeInfo;
  bool canPostMessages;
  bool canEditMessages;
  bool canDeleteMessages;
  bool canInviteUsers;
  bool canRestrictMembers;
  bool canPinMessages;
  bool canPromoteMembers;
  bool canManageVoiceChats;
  bool isAnonymous;

  @override
  Map<String, dynamic> get params => {
    'custom_title': customTitle,
    'can_be_edited': canBeEdited,
    'can_manage_chat': canManageChat,
    'can_change_info': canChangeInfo,
    'can_post_messages': canPostMessages,
    'can_edit_messages': canEditMessages,
    'can_delete_messages': canDeleteMessages,
    'can_invite_users': canInviteUsers,
    'can_restrict_members': canRestrictMembers,
    'can_pin_messages': canPinMessages,
    'can_promote_members': canPromoteMembers,
    'can_manage_voice_chats': canManageVoiceChats,
    'is_anonymous': isAnonymous,
  };

  ChatMemberStatusAdministrator(
    this.customTitle,
    this.canBeEdited,
    this.canManageChat,
    this.canChangeInfo,
    this.canPostMessages,
    this.canEditMessages,
    this.canDeleteMessages,
    this.canInviteUsers,
    this.canRestrictMembers,
    this.canPinMessages,
    this.canPromoteMembers,
    this.canManageVoiceChats,
    this.isAnonymous,
  );

  ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json):
    customTitle = convertToTdObject(json['custom_title']),
    canBeEdited = convertToTdObject(json['can_be_edited']),
    canManageChat = convertToTdObject(json['can_manage_chat']),
    canChangeInfo = convertToTdObject(json['can_change_info']),
    canPostMessages = convertToTdObject(json['can_post_messages']),
    canEditMessages = convertToTdObject(json['can_edit_messages']),
    canDeleteMessages = convertToTdObject(json['can_delete_messages']),
    canInviteUsers = convertToTdObject(json['can_invite_users']),
    canRestrictMembers = convertToTdObject(json['can_restrict_members']),
    canPinMessages = convertToTdObject(json['can_pin_messages']),
    canPromoteMembers = convertToTdObject(json['can_promote_members']),
    canManageVoiceChats = convertToTdObject(json['can_manage_voice_chats']),
    isAnonymous = convertToTdObject(json['is_anonymous']);
}

class ChatMemberStatusMember extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusMember';

  @override
  Map<String, dynamic> get params => {};

  ChatMemberStatusMember();

  ChatMemberStatusMember.fromJson(Map<String, dynamic> json);
}

class ChatMemberStatusRestricted extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusRestricted';

  bool isMember;
  int restrictedUntilDate;
  ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    'is_member': isMember,
    'restricted_until_date': restrictedUntilDate,
    'permissions': permissions,
  };

  ChatMemberStatusRestricted(
    this.isMember,
    this.restrictedUntilDate,
    this.permissions,
  );

  ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json):
    isMember = convertToTdObject(json['is_member']),
    restrictedUntilDate = json['restricted_until_date'] is int 
      ? convertToTdObject(json['restricted_until_date']) 
      : int.parse(convertToTdObject(json['restricted_until_date'])),
    permissions = convertToTdObject(json['permissions']);
}

class ChatMemberStatusLeft extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusLeft';

  @override
  Map<String, dynamic> get params => {};

  ChatMemberStatusLeft();

  ChatMemberStatusLeft.fromJson(Map<String, dynamic> json);
}

class ChatMemberStatusBanned extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusBanned';

  int bannedUntilDate;

  @override
  Map<String, dynamic> get params => {
    'banned_until_date': bannedUntilDate,
  };

  ChatMemberStatusBanned(
    this.bannedUntilDate,
  );

  ChatMemberStatusBanned.fromJson(Map<String, dynamic> json):
    bannedUntilDate = json['banned_until_date'] is int 
      ? convertToTdObject(json['banned_until_date']) 
      : int.parse(convertToTdObject(json['banned_until_date']));
}

class ChatMember extends TdObject {
  @override
  String get tdType => 'chatMember';

  MessageSender memberId;
  int inviterUserId;
  int joinedChatDate;
  ChatMemberStatus status;

  @override
  Map<String, dynamic> get params => {
    'member_id': memberId,
    'inviter_user_id': inviterUserId,
    'joined_chat_date': joinedChatDate,
    'status': status,
  };

  ChatMember(
    this.memberId,
    this.inviterUserId,
    this.joinedChatDate,
    this.status,
  );

  ChatMember.fromJson(Map<String, dynamic> json):
    memberId = convertToTdObject(json['member_id']),
    inviterUserId = json['inviter_user_id'] is int 
      ? convertToTdObject(json['inviter_user_id']) 
      : int.parse(convertToTdObject(json['inviter_user_id'])),
    joinedChatDate = json['joined_chat_date'] is int 
      ? convertToTdObject(json['joined_chat_date']) 
      : int.parse(convertToTdObject(json['joined_chat_date'])),
    status = convertToTdObject(json['status']);
}

class ChatMembers extends TdObject {
  @override
  String get tdType => 'chatMembers';

  int totalCount;
  List<ChatMember> members;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'members': members,
  };

  ChatMembers(
    this.totalCount,
    this.members,
  );

  ChatMembers.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    members = convertToTdObject(castList<ChatMember>(json['members']));
}

abstract class ChatMembersFilter extends TdObject {}

class ChatMembersFilterContacts extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterContacts';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterContacts();

  ChatMembersFilterContacts.fromJson(Map<String, dynamic> json);
}

class ChatMembersFilterAdministrators extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterAdministrators';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterAdministrators();

  ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json);
}

class ChatMembersFilterMembers extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterMembers';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterMembers();

  ChatMembersFilterMembers.fromJson(Map<String, dynamic> json);
}

class ChatMembersFilterMention extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterMention';

  int messageThreadId;

  @override
  Map<String, dynamic> get params => {
    'message_thread_id': messageThreadId,
  };

  ChatMembersFilterMention(
    this.messageThreadId,
  );

  ChatMembersFilterMention.fromJson(Map<String, dynamic> json):
    messageThreadId = json['message_thread_id'] is int 
      ? convertToTdObject(json['message_thread_id']) 
      : int.parse(convertToTdObject(json['message_thread_id']));
}

class ChatMembersFilterRestricted extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterRestricted';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterRestricted();

  ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json);
}

class ChatMembersFilterBanned extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterBanned';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterBanned();

  ChatMembersFilterBanned.fromJson(Map<String, dynamic> json);
}

class ChatMembersFilterBots extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterBots';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterBots();

  ChatMembersFilterBots.fromJson(Map<String, dynamic> json);
}

abstract class SupergroupMembersFilter extends TdObject {}

class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterRecent';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterRecent();

  SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json);
}

class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterContacts';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterContacts(
    this.query,
  );

  SupergroupMembersFilterContacts.fromJson(Map<String, dynamic> json):
    query = convertToTdObject(json['query']);
}

class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterAdministrators';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterAdministrators();

  SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json);
}

class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterSearch';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterSearch(
    this.query,
  );

  SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json):
    query = convertToTdObject(json['query']);
}

class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterRestricted';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterRestricted(
    this.query,
  );

  SupergroupMembersFilterRestricted.fromJson(Map<String, dynamic> json):
    query = convertToTdObject(json['query']);
}

class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterBanned';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterBanned(
    this.query,
  );

  SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json):
    query = convertToTdObject(json['query']);
}

class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterMention';

  String query;
  int messageThreadId;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'message_thread_id': messageThreadId,
  };

  SupergroupMembersFilterMention(
    this.query,
    this.messageThreadId,
  );

  SupergroupMembersFilterMention.fromJson(Map<String, dynamic> json):
    query = convertToTdObject(json['query']),
    messageThreadId = json['message_thread_id'] is int 
      ? convertToTdObject(json['message_thread_id']) 
      : int.parse(convertToTdObject(json['message_thread_id']));
}

class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterBots';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterBots();

  SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json);
}

class ChatInviteLink extends TdObject {
  @override
  String get tdType => 'chatInviteLink';

  String inviteLink;
  int creatorUserId;
  int date;
  int editDate;
  int expireDate;
  int memberLimit;
  int memberCount;
  bool isPrimary;
  bool isRevoked;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
    'creator_user_id': creatorUserId,
    'date': date,
    'edit_date': editDate,
    'expire_date': expireDate,
    'member_limit': memberLimit,
    'member_count': memberCount,
    'is_primary': isPrimary,
    'is_revoked': isRevoked,
  };

  ChatInviteLink(
    this.inviteLink,
    this.creatorUserId,
    this.date,
    this.editDate,
    this.expireDate,
    this.memberLimit,
    this.memberCount,
    this.isPrimary,
    this.isRevoked,
  );

  ChatInviteLink.fromJson(Map<String, dynamic> json):
    inviteLink = convertToTdObject(json['invite_link']),
    creatorUserId = json['creator_user_id'] is int 
      ? convertToTdObject(json['creator_user_id']) 
      : int.parse(convertToTdObject(json['creator_user_id'])),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    editDate = json['edit_date'] is int 
      ? convertToTdObject(json['edit_date']) 
      : int.parse(convertToTdObject(json['edit_date'])),
    expireDate = json['expire_date'] is int 
      ? convertToTdObject(json['expire_date']) 
      : int.parse(convertToTdObject(json['expire_date'])),
    memberLimit = json['member_limit'] is int 
      ? convertToTdObject(json['member_limit']) 
      : int.parse(convertToTdObject(json['member_limit'])),
    memberCount = json['member_count'] is int 
      ? convertToTdObject(json['member_count']) 
      : int.parse(convertToTdObject(json['member_count'])),
    isPrimary = convertToTdObject(json['is_primary']),
    isRevoked = convertToTdObject(json['is_revoked']);
}

class ChatInviteLinks extends TdObject {
  @override
  String get tdType => 'chatInviteLinks';

  int totalCount;
  List<ChatInviteLink> inviteLinks;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'invite_links': inviteLinks,
  };

  ChatInviteLinks(
    this.totalCount,
    this.inviteLinks,
  );

  ChatInviteLinks.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    inviteLinks = convertToTdObject(castList<ChatInviteLink>(json['invite_links']));
}

class ChatInviteLinkCount extends TdObject {
  @override
  String get tdType => 'chatInviteLinkCount';

  int userId;
  int inviteLinkCount;
  int revokedInviteLinkCount;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'invite_link_count': inviteLinkCount,
    'revoked_invite_link_count': revokedInviteLinkCount,
  };

  ChatInviteLinkCount(
    this.userId,
    this.inviteLinkCount,
    this.revokedInviteLinkCount,
  );

  ChatInviteLinkCount.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    inviteLinkCount = json['invite_link_count'] is int 
      ? convertToTdObject(json['invite_link_count']) 
      : int.parse(convertToTdObject(json['invite_link_count'])),
    revokedInviteLinkCount = json['revoked_invite_link_count'] is int 
      ? convertToTdObject(json['revoked_invite_link_count']) 
      : int.parse(convertToTdObject(json['revoked_invite_link_count']));
}

class ChatInviteLinkCounts extends TdObject {
  @override
  String get tdType => 'chatInviteLinkCounts';

  List<ChatInviteLinkCount> inviteLinkCounts;

  @override
  Map<String, dynamic> get params => {
    'invite_link_counts': inviteLinkCounts,
  };

  ChatInviteLinkCounts(
    this.inviteLinkCounts,
  );

  ChatInviteLinkCounts.fromJson(Map<String, dynamic> json):
    inviteLinkCounts = convertToTdObject(castList<ChatInviteLinkCount>(json['invite_link_counts']));
}

class ChatInviteLinkMember extends TdObject {
  @override
  String get tdType => 'chatInviteLinkMember';

  int userId;
  int joinedChatDate;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'joined_chat_date': joinedChatDate,
  };

  ChatInviteLinkMember(
    this.userId,
    this.joinedChatDate,
  );

  ChatInviteLinkMember.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    joinedChatDate = json['joined_chat_date'] is int 
      ? convertToTdObject(json['joined_chat_date']) 
      : int.parse(convertToTdObject(json['joined_chat_date']));
}

class ChatInviteLinkMembers extends TdObject {
  @override
  String get tdType => 'chatInviteLinkMembers';

  int totalCount;
  List<ChatInviteLinkMember> members;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'members': members,
  };

  ChatInviteLinkMembers(
    this.totalCount,
    this.members,
  );

  ChatInviteLinkMembers.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    members = convertToTdObject(castList<ChatInviteLinkMember>(json['members']));
}

class ChatInviteLinkInfo extends TdObject {
  @override
  String get tdType => 'chatInviteLinkInfo';

  int chatId;
  int accessibleFor;
  ChatType type;
  String title;
  ChatPhotoInfo photo;
  int memberCount;
  List<int> memberUserIds;
  bool isPublic;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'accessible_for': accessibleFor,
    'type': type,
    'title': title,
    'photo': photo,
    'member_count': memberCount,
    'member_user_ids': memberUserIds,
    'is_public': isPublic,
  };

  ChatInviteLinkInfo(
    this.chatId,
    this.accessibleFor,
    this.type,
    this.title,
    this.photo,
    this.memberCount,
    this.memberUserIds,
    this.isPublic,
  );

  ChatInviteLinkInfo.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    accessibleFor = json['accessible_for'] is int 
      ? convertToTdObject(json['accessible_for']) 
      : int.parse(convertToTdObject(json['accessible_for'])),
    type = convertToTdObject(json['type']),
    title = convertToTdObject(json['title']),
    photo = convertToTdObject(json['photo']),
    memberCount = json['member_count'] is int 
      ? convertToTdObject(json['member_count']) 
      : int.parse(convertToTdObject(json['member_count'])),
    memberUserIds = convertToTdObject(castList<int>(json['member_user_ids'])),
    isPublic = convertToTdObject(json['is_public']);
}

class BasicGroup extends TdObject {
  @override
  String get tdType => 'basicGroup';

  int id;
  int memberCount;
  ChatMemberStatus status;
  bool isActive;
  int upgradedToSupergroupId;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'member_count': memberCount,
    'status': status,
    'is_active': isActive,
    'upgraded_to_supergroup_id': upgradedToSupergroupId,
  };

  BasicGroup(
    this.id,
    this.memberCount,
    this.status,
    this.isActive,
    this.upgradedToSupergroupId,
  );

  BasicGroup.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    memberCount = json['member_count'] is int 
      ? convertToTdObject(json['member_count']) 
      : int.parse(convertToTdObject(json['member_count'])),
    status = convertToTdObject(json['status']),
    isActive = convertToTdObject(json['is_active']),
    upgradedToSupergroupId = json['upgraded_to_supergroup_id'] is int 
      ? convertToTdObject(json['upgraded_to_supergroup_id']) 
      : int.parse(convertToTdObject(json['upgraded_to_supergroup_id']));
}

class BasicGroupFullInfo extends TdObject {
  @override
  String get tdType => 'basicGroupFullInfo';

  ChatPhoto photo;
  String description;
  int creatorUserId;
  List<ChatMember> members;
  ChatInviteLink inviteLink;
  List<BotCommands> botCommands;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'description': description,
    'creator_user_id': creatorUserId,
    'members': members,
    'invite_link': inviteLink,
    'bot_commands': botCommands,
  };

  BasicGroupFullInfo(
    this.photo,
    this.description,
    this.creatorUserId,
    this.members,
    this.inviteLink,
    this.botCommands,
  );

  BasicGroupFullInfo.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']),
    description = convertToTdObject(json['description']),
    creatorUserId = json['creator_user_id'] is int 
      ? convertToTdObject(json['creator_user_id']) 
      : int.parse(convertToTdObject(json['creator_user_id'])),
    members = convertToTdObject(castList<ChatMember>(json['members'])),
    inviteLink = convertToTdObject(json['invite_link']),
    botCommands = convertToTdObject(castList<BotCommands>(json['bot_commands']));
}

class Supergroup extends TdObject {
  @override
  String get tdType => 'supergroup';

  int id;
  String username;
  int date;
  ChatMemberStatus status;
  int memberCount;
  bool hasLinkedChat;
  bool hasLocation;
  bool signMessages;
  bool isSlowModeEnabled;
  bool isChannel;
  bool isBroadcastGroup;
  bool isVerified;
  String restrictionReason;
  bool isScam;
  bool isFake;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'username': username,
    'date': date,
    'status': status,
    'member_count': memberCount,
    'has_linked_chat': hasLinkedChat,
    'has_location': hasLocation,
    'sign_messages': signMessages,
    'is_slow_mode_enabled': isSlowModeEnabled,
    'is_channel': isChannel,
    'is_broadcast_group': isBroadcastGroup,
    'is_verified': isVerified,
    'restriction_reason': restrictionReason,
    'is_scam': isScam,
    'is_fake': isFake,
  };

  Supergroup(
    this.id,
    this.username,
    this.date,
    this.status,
    this.memberCount,
    this.hasLinkedChat,
    this.hasLocation,
    this.signMessages,
    this.isSlowModeEnabled,
    this.isChannel,
    this.isBroadcastGroup,
    this.isVerified,
    this.restrictionReason,
    this.isScam,
    this.isFake,
  );

  Supergroup.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    username = convertToTdObject(json['username']),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    status = convertToTdObject(json['status']),
    memberCount = json['member_count'] is int 
      ? convertToTdObject(json['member_count']) 
      : int.parse(convertToTdObject(json['member_count'])),
    hasLinkedChat = convertToTdObject(json['has_linked_chat']),
    hasLocation = convertToTdObject(json['has_location']),
    signMessages = convertToTdObject(json['sign_messages']),
    isSlowModeEnabled = convertToTdObject(json['is_slow_mode_enabled']),
    isChannel = convertToTdObject(json['is_channel']),
    isBroadcastGroup = convertToTdObject(json['is_broadcast_group']),
    isVerified = convertToTdObject(json['is_verified']),
    restrictionReason = convertToTdObject(json['restriction_reason']),
    isScam = convertToTdObject(json['is_scam']),
    isFake = convertToTdObject(json['is_fake']);
}

class SupergroupFullInfo extends TdObject {
  @override
  String get tdType => 'supergroupFullInfo';

  ChatPhoto photo;
  String description;
  int memberCount;
  int administratorCount;
  int restrictedCount;
  int bannedCount;
  int linkedChatId;
  int slowModeDelay;
  double slowModeDelayExpiresIn;
  bool canGetMembers;
  bool canSetUsername;
  bool canSetStickerSet;
  bool canSetLocation;
  bool canGetStatistics;
  bool isAllHistoryAvailable;
  int stickerSetId;
  ChatLocation location;
  ChatInviteLink inviteLink;
  List<BotCommands> botCommands;
  int upgradedFromBasicGroupId;
  int upgradedFromMaxMessageId;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'description': description,
    'member_count': memberCount,
    'administrator_count': administratorCount,
    'restricted_count': restrictedCount,
    'banned_count': bannedCount,
    'linked_chat_id': linkedChatId,
    'slow_mode_delay': slowModeDelay,
    'slow_mode_delay_expires_in': slowModeDelayExpiresIn,
    'can_get_members': canGetMembers,
    'can_set_username': canSetUsername,
    'can_set_sticker_set': canSetStickerSet,
    'can_set_location': canSetLocation,
    'can_get_statistics': canGetStatistics,
    'is_all_history_available': isAllHistoryAvailable,
    'sticker_set_id': stickerSetId,
    'location': location,
    'invite_link': inviteLink,
    'bot_commands': botCommands,
    'upgraded_from_basic_group_id': upgradedFromBasicGroupId,
    'upgraded_from_max_message_id': upgradedFromMaxMessageId,
  };

  SupergroupFullInfo(
    this.photo,
    this.description,
    this.memberCount,
    this.administratorCount,
    this.restrictedCount,
    this.bannedCount,
    this.linkedChatId,
    this.slowModeDelay,
    this.slowModeDelayExpiresIn,
    this.canGetMembers,
    this.canSetUsername,
    this.canSetStickerSet,
    this.canSetLocation,
    this.canGetStatistics,
    this.isAllHistoryAvailable,
    this.stickerSetId,
    this.location,
    this.inviteLink,
    this.botCommands,
    this.upgradedFromBasicGroupId,
    this.upgradedFromMaxMessageId,
  );

  SupergroupFullInfo.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']),
    description = convertToTdObject(json['description']),
    memberCount = json['member_count'] is int 
      ? convertToTdObject(json['member_count']) 
      : int.parse(convertToTdObject(json['member_count'])),
    administratorCount = json['administrator_count'] is int 
      ? convertToTdObject(json['administrator_count']) 
      : int.parse(convertToTdObject(json['administrator_count'])),
    restrictedCount = json['restricted_count'] is int 
      ? convertToTdObject(json['restricted_count']) 
      : int.parse(convertToTdObject(json['restricted_count'])),
    bannedCount = json['banned_count'] is int 
      ? convertToTdObject(json['banned_count']) 
      : int.parse(convertToTdObject(json['banned_count'])),
    linkedChatId = json['linked_chat_id'] is int 
      ? convertToTdObject(json['linked_chat_id']) 
      : int.parse(convertToTdObject(json['linked_chat_id'])),
    slowModeDelay = json['slow_mode_delay'] is int 
      ? convertToTdObject(json['slow_mode_delay']) 
      : int.parse(convertToTdObject(json['slow_mode_delay'])),
    slowModeDelayExpiresIn = convertToTdObject(json['slow_mode_delay_expires_in']),
    canGetMembers = convertToTdObject(json['can_get_members']),
    canSetUsername = convertToTdObject(json['can_set_username']),
    canSetStickerSet = convertToTdObject(json['can_set_sticker_set']),
    canSetLocation = convertToTdObject(json['can_set_location']),
    canGetStatistics = convertToTdObject(json['can_get_statistics']),
    isAllHistoryAvailable = convertToTdObject(json['is_all_history_available']),
    stickerSetId = json['sticker_set_id'] is int 
      ? convertToTdObject(json['sticker_set_id']) 
      : int.parse(convertToTdObject(json['sticker_set_id'])),
    location = convertToTdObject(json['location']),
    inviteLink = convertToTdObject(json['invite_link']),
    botCommands = convertToTdObject(castList<BotCommands>(json['bot_commands'])),
    upgradedFromBasicGroupId = json['upgraded_from_basic_group_id'] is int 
      ? convertToTdObject(json['upgraded_from_basic_group_id']) 
      : int.parse(convertToTdObject(json['upgraded_from_basic_group_id'])),
    upgradedFromMaxMessageId = json['upgraded_from_max_message_id'] is int 
      ? convertToTdObject(json['upgraded_from_max_message_id']) 
      : int.parse(convertToTdObject(json['upgraded_from_max_message_id']));
}

abstract class SecretChatState extends TdObject {}

class SecretChatStatePending extends SecretChatState {
  @override
  String get tdType => 'secretChatStatePending';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStatePending();

  SecretChatStatePending.fromJson(Map<String, dynamic> json);
}

class SecretChatStateReady extends SecretChatState {
  @override
  String get tdType => 'secretChatStateReady';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStateReady();

  SecretChatStateReady.fromJson(Map<String, dynamic> json);
}

class SecretChatStateClosed extends SecretChatState {
  @override
  String get tdType => 'secretChatStateClosed';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStateClosed();

  SecretChatStateClosed.fromJson(Map<String, dynamic> json);
}

class SecretChat extends TdObject {
  @override
  String get tdType => 'secretChat';

  int id;
  int userId;
  SecretChatState state;
  bool isOutbound;
  String keyHash;
  int layer;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'user_id': userId,
    'state': state,
    'is_outbound': isOutbound,
    'key_hash': keyHash,
    'layer': layer,
  };

  SecretChat(
    this.id,
    this.userId,
    this.state,
    this.isOutbound,
    this.keyHash,
    this.layer,
  );

  SecretChat.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    state = convertToTdObject(json['state']),
    isOutbound = convertToTdObject(json['is_outbound']),
    keyHash = convertToTdObject(json['key_hash']),
    layer = json['layer'] is int 
      ? convertToTdObject(json['layer']) 
      : int.parse(convertToTdObject(json['layer']));
}

abstract class MessageSender extends TdObject {}

class MessageSenderUser extends MessageSender {
  @override
  String get tdType => 'messageSenderUser';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  MessageSenderUser(
    this.userId,
  );

  MessageSenderUser.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id']));
}

class MessageSenderChat extends MessageSender {
  @override
  String get tdType => 'messageSenderChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  MessageSenderChat(
    this.chatId,
  );

  MessageSenderChat.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id']));
}

class MessageSenders extends TdObject {
  @override
  String get tdType => 'messageSenders';

  int totalCount;
  List<MessageSender> senders;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'senders': senders,
  };

  MessageSenders(
    this.totalCount,
    this.senders,
  );

  MessageSenders.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    senders = convertToTdObject(castList<MessageSender>(json['senders']));
}

abstract class MessageForwardOrigin extends TdObject {}

class MessageForwardOriginUser extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginUser';

  int senderUserId;

  @override
  Map<String, dynamic> get params => {
    'sender_user_id': senderUserId,
  };

  MessageForwardOriginUser(
    this.senderUserId,
  );

  MessageForwardOriginUser.fromJson(Map<String, dynamic> json):
    senderUserId = json['sender_user_id'] is int 
      ? convertToTdObject(json['sender_user_id']) 
      : int.parse(convertToTdObject(json['sender_user_id']));
}

class MessageForwardOriginChat extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginChat';

  int senderChatId;
  String authorSignature;

  @override
  Map<String, dynamic> get params => {
    'sender_chat_id': senderChatId,
    'author_signature': authorSignature,
  };

  MessageForwardOriginChat(
    this.senderChatId,
    this.authorSignature,
  );

  MessageForwardOriginChat.fromJson(Map<String, dynamic> json):
    senderChatId = json['sender_chat_id'] is int 
      ? convertToTdObject(json['sender_chat_id']) 
      : int.parse(convertToTdObject(json['sender_chat_id'])),
    authorSignature = convertToTdObject(json['author_signature']);
}

class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginHiddenUser';

  String senderName;

  @override
  Map<String, dynamic> get params => {
    'sender_name': senderName,
  };

  MessageForwardOriginHiddenUser(
    this.senderName,
  );

  MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json):
    senderName = convertToTdObject(json['sender_name']);
}

class MessageForwardOriginChannel extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginChannel';

  int chatId;
  int messageId;
  String authorSignature;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'author_signature': authorSignature,
  };

  MessageForwardOriginChannel(
    this.chatId,
    this.messageId,
    this.authorSignature,
  );

  MessageForwardOriginChannel.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    authorSignature = convertToTdObject(json['author_signature']);
}

class MessageForwardOriginMessageImport extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginMessageImport';

  String senderName;

  @override
  Map<String, dynamic> get params => {
    'sender_name': senderName,
  };

  MessageForwardOriginMessageImport(
    this.senderName,
  );

  MessageForwardOriginMessageImport.fromJson(Map<String, dynamic> json):
    senderName = convertToTdObject(json['sender_name']);
}

class MessageForwardInfo extends TdObject {
  @override
  String get tdType => 'messageForwardInfo';

  MessageForwardOrigin origin;
  int date;
  String publicServiceAnnouncementType;
  int fromChatId;
  int fromMessageId;

  @override
  Map<String, dynamic> get params => {
    'origin': origin,
    'date': date,
    'public_service_announcement_type': publicServiceAnnouncementType,
    'from_chat_id': fromChatId,
    'from_message_id': fromMessageId,
  };

  MessageForwardInfo(
    this.origin,
    this.date,
    this.publicServiceAnnouncementType,
    this.fromChatId,
    this.fromMessageId,
  );

  MessageForwardInfo.fromJson(Map<String, dynamic> json):
    origin = convertToTdObject(json['origin']),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    publicServiceAnnouncementType = convertToTdObject(json['public_service_announcement_type']),
    fromChatId = json['from_chat_id'] is int 
      ? convertToTdObject(json['from_chat_id']) 
      : int.parse(convertToTdObject(json['from_chat_id'])),
    fromMessageId = json['from_message_id'] is int 
      ? convertToTdObject(json['from_message_id']) 
      : int.parse(convertToTdObject(json['from_message_id']));
}

class MessageReplyInfo extends TdObject {
  @override
  String get tdType => 'messageReplyInfo';

  int replyCount;
  List<MessageSender> recentRepliers;
  int lastReadInboxMessageId;
  int lastReadOutboxMessageId;
  int lastMessageId;

  @override
  Map<String, dynamic> get params => {
    'reply_count': replyCount,
    'recent_repliers': recentRepliers,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'last_message_id': lastMessageId,
  };

  MessageReplyInfo(
    this.replyCount,
    this.recentRepliers,
    this.lastReadInboxMessageId,
    this.lastReadOutboxMessageId,
    this.lastMessageId,
  );

  MessageReplyInfo.fromJson(Map<String, dynamic> json):
    replyCount = json['reply_count'] is int 
      ? convertToTdObject(json['reply_count']) 
      : int.parse(convertToTdObject(json['reply_count'])),
    recentRepliers = convertToTdObject(castList<MessageSender>(json['recent_repliers'])),
    lastReadInboxMessageId = json['last_read_inbox_message_id'] is int 
      ? convertToTdObject(json['last_read_inbox_message_id']) 
      : int.parse(convertToTdObject(json['last_read_inbox_message_id'])),
    lastReadOutboxMessageId = json['last_read_outbox_message_id'] is int 
      ? convertToTdObject(json['last_read_outbox_message_id']) 
      : int.parse(convertToTdObject(json['last_read_outbox_message_id'])),
    lastMessageId = json['last_message_id'] is int 
      ? convertToTdObject(json['last_message_id']) 
      : int.parse(convertToTdObject(json['last_message_id']));
}

class MessageInteractionInfo extends TdObject {
  @override
  String get tdType => 'messageInteractionInfo';

  int viewCount;
  int forwardCount;
  MessageReplyInfo? replyInfo;

  @override
  Map<String, dynamic> get params => {
    'view_count': viewCount,
    'forward_count': forwardCount,
    'reply_info': replyInfo,
  };

  MessageInteractionInfo(
    this.viewCount,
    this.forwardCount,
    this.replyInfo,
  );

  MessageInteractionInfo.fromJson(Map<String, dynamic> json):
    viewCount = json['view_count'] is int 
      ? convertToTdObject(json['view_count']) 
      : int.parse(convertToTdObject(json['view_count'])),
    forwardCount = json['forward_count'] is int 
      ? convertToTdObject(json['forward_count']) 
      : int.parse(convertToTdObject(json['forward_count'])),
    replyInfo = convertToTdObject(json['reply_info']);
}

abstract class MessageSendingState extends TdObject {}

class MessageSendingStatePending extends MessageSendingState {
  @override
  String get tdType => 'messageSendingStatePending';

  @override
  Map<String, dynamic> get params => {};

  MessageSendingStatePending();

  MessageSendingStatePending.fromJson(Map<String, dynamic> json);
}

class MessageSendingStateFailed extends MessageSendingState {
  @override
  String get tdType => 'messageSendingStateFailed';

  int errorCode;
  String errorMessage;
  bool canRetry;
  double retryAfter;

  @override
  Map<String, dynamic> get params => {
    'error_code': errorCode,
    'error_message': errorMessage,
    'can_retry': canRetry,
    'retry_after': retryAfter,
  };

  MessageSendingStateFailed(
    this.errorCode,
    this.errorMessage,
    this.canRetry,
    this.retryAfter,
  );

  MessageSendingStateFailed.fromJson(Map<String, dynamic> json):
    errorCode = json['error_code'] is int 
      ? convertToTdObject(json['error_code']) 
      : int.parse(convertToTdObject(json['error_code'])),
    errorMessage = convertToTdObject(json['error_message']),
    canRetry = convertToTdObject(json['can_retry']),
    retryAfter = convertToTdObject(json['retry_after']);
}

class Message extends TdObject {
  @override
  String get tdType => 'message';

  int id;
  MessageSender sender;
  int chatId;
  MessageSendingState sendingState;
  MessageSchedulingState schedulingState;
  bool isOutgoing;
  bool isPinned;
  bool canBeEdited;
  bool canBeForwarded;
  bool canBeDeletedOnlyForSelf;
  bool canBeDeletedForAllUsers;
  bool canGetStatistics;
  bool canGetMessageThread;
  bool isChannelPost;
  bool containsUnreadMention;
  int date;
  int editDate;
  MessageForwardInfo forwardInfo;
  MessageInteractionInfo interactionInfo;
  int replyInChatId;
  int replyToMessageId;
  int messageThreadId;
  int ttl;
  double ttlExpiresIn;
  int viaBotUserId;
  String authorSignature;
  int mediaAlbumId;
  String restrictionReason;
  MessageContent content;
  ReplyMarkup? replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender': sender,
    'chat_id': chatId,
    'sending_state': sendingState,
    'scheduling_state': schedulingState,
    'is_outgoing': isOutgoing,
    'is_pinned': isPinned,
    'can_be_edited': canBeEdited,
    'can_be_forwarded': canBeForwarded,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'can_get_statistics': canGetStatistics,
    'can_get_message_thread': canGetMessageThread,
    'is_channel_post': isChannelPost,
    'contains_unread_mention': containsUnreadMention,
    'date': date,
    'edit_date': editDate,
    'forward_info': forwardInfo,
    'interaction_info': interactionInfo,
    'reply_in_chat_id': replyInChatId,
    'reply_to_message_id': replyToMessageId,
    'message_thread_id': messageThreadId,
    'ttl': ttl,
    'ttl_expires_in': ttlExpiresIn,
    'via_bot_user_id': viaBotUserId,
    'author_signature': authorSignature,
    'media_album_id': mediaAlbumId,
    'restriction_reason': restrictionReason,
    'content': content,
    'reply_markup': replyMarkup,
  };

  Message(
    this.id,
    this.sender,
    this.chatId,
    this.sendingState,
    this.schedulingState,
    this.isOutgoing,
    this.isPinned,
    this.canBeEdited,
    this.canBeForwarded,
    this.canBeDeletedOnlyForSelf,
    this.canBeDeletedForAllUsers,
    this.canGetStatistics,
    this.canGetMessageThread,
    this.isChannelPost,
    this.containsUnreadMention,
    this.date,
    this.editDate,
    this.forwardInfo,
    this.interactionInfo,
    this.replyInChatId,
    this.replyToMessageId,
    this.messageThreadId,
    this.ttl,
    this.ttlExpiresIn,
    this.viaBotUserId,
    this.authorSignature,
    this.mediaAlbumId,
    this.restrictionReason,
    this.content,
    this.replyMarkup,
  );

  Message.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    sender = convertToTdObject(json['sender']),
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    sendingState = convertToTdObject(json['sending_state']),
    schedulingState = convertToTdObject(json['scheduling_state']),
    isOutgoing = convertToTdObject(json['is_outgoing']),
    isPinned = convertToTdObject(json['is_pinned']),
    canBeEdited = convertToTdObject(json['can_be_edited']),
    canBeForwarded = convertToTdObject(json['can_be_forwarded']),
    canBeDeletedOnlyForSelf = convertToTdObject(json['can_be_deleted_only_for_self']),
    canBeDeletedForAllUsers = convertToTdObject(json['can_be_deleted_for_all_users']),
    canGetStatistics = convertToTdObject(json['can_get_statistics']),
    canGetMessageThread = convertToTdObject(json['can_get_message_thread']),
    isChannelPost = convertToTdObject(json['is_channel_post']),
    containsUnreadMention = convertToTdObject(json['contains_unread_mention']),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    editDate = json['edit_date'] is int 
      ? convertToTdObject(json['edit_date']) 
      : int.parse(convertToTdObject(json['edit_date'])),
    forwardInfo = convertToTdObject(json['forward_info']),
    interactionInfo = convertToTdObject(json['interaction_info']),
    replyInChatId = json['reply_in_chat_id'] is int 
      ? convertToTdObject(json['reply_in_chat_id']) 
      : int.parse(convertToTdObject(json['reply_in_chat_id'])),
    replyToMessageId = json['reply_to_message_id'] is int 
      ? convertToTdObject(json['reply_to_message_id']) 
      : int.parse(convertToTdObject(json['reply_to_message_id'])),
    messageThreadId = json['message_thread_id'] is int 
      ? convertToTdObject(json['message_thread_id']) 
      : int.parse(convertToTdObject(json['message_thread_id'])),
    ttl = json['ttl'] is int 
      ? convertToTdObject(json['ttl']) 
      : int.parse(convertToTdObject(json['ttl'])),
    ttlExpiresIn = convertToTdObject(json['ttl_expires_in']),
    viaBotUserId = json['via_bot_user_id'] is int 
      ? convertToTdObject(json['via_bot_user_id']) 
      : int.parse(convertToTdObject(json['via_bot_user_id'])),
    authorSignature = convertToTdObject(json['author_signature']),
    mediaAlbumId = json['media_album_id'] is int 
      ? convertToTdObject(json['media_album_id']) 
      : int.parse(convertToTdObject(json['media_album_id'])),
    restrictionReason = convertToTdObject(json['restriction_reason']),
    content = convertToTdObject(json['content']),
    replyMarkup = convertToTdObject(json['reply_markup']);
}

class Messages extends TdObject {
  @override
  String get tdType => 'messages';

  int totalCount;
  List<Message>? messages;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'messages': messages,
  };

  Messages(
    this.totalCount,
    this.messages,
  );

  Messages.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    messages = convertToTdObject(castList<Message>(json['messages']));
}

class FoundMessages extends TdObject {
  @override
  String get tdType => 'foundMessages';

  int totalCount;
  List<Message> messages;
  String nextOffset;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'messages': messages,
    'next_offset': nextOffset,
  };

  FoundMessages(
    this.totalCount,
    this.messages,
    this.nextOffset,
  );

  FoundMessages.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    messages = convertToTdObject(castList<Message>(json['messages'])),
    nextOffset = convertToTdObject(json['next_offset']);
}

abstract class NotificationSettingsScope extends TdObject {}

class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopePrivateChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopePrivateChats();

  NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json);
}

class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopeGroupChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopeGroupChats();

  NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json);
}

class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopeChannelChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopeChannelChats();

  NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json);
}

class ChatNotificationSettings extends TdObject {
  @override
  String get tdType => 'chatNotificationSettings';

  bool useDefaultMuteFor;
  int muteFor;
  bool useDefaultSound;
  String sound;
  bool useDefaultShowPreview;
  bool showPreview;
  bool useDefaultDisablePinnedMessageNotifications;
  bool disablePinnedMessageNotifications;
  bool useDefaultDisableMentionNotifications;
  bool disableMentionNotifications;

  @override
  Map<String, dynamic> get params => {
    'use_default_mute_for': useDefaultMuteFor,
    'mute_for': muteFor,
    'use_default_sound': useDefaultSound,
    'sound': sound,
    'use_default_show_preview': useDefaultShowPreview,
    'show_preview': showPreview,
    'use_default_disable_pinned_message_notifications': useDefaultDisablePinnedMessageNotifications,
    'disable_pinned_message_notifications': disablePinnedMessageNotifications,
    'use_default_disable_mention_notifications': useDefaultDisableMentionNotifications,
    'disable_mention_notifications': disableMentionNotifications,
  };

  ChatNotificationSettings(
    this.useDefaultMuteFor,
    this.muteFor,
    this.useDefaultSound,
    this.sound,
    this.useDefaultShowPreview,
    this.showPreview,
    this.useDefaultDisablePinnedMessageNotifications,
    this.disablePinnedMessageNotifications,
    this.useDefaultDisableMentionNotifications,
    this.disableMentionNotifications,
  );

  ChatNotificationSettings.fromJson(Map<String, dynamic> json):
    useDefaultMuteFor = convertToTdObject(json['use_default_mute_for']),
    muteFor = json['mute_for'] is int 
      ? convertToTdObject(json['mute_for']) 
      : int.parse(convertToTdObject(json['mute_for'])),
    useDefaultSound = convertToTdObject(json['use_default_sound']),
    sound = convertToTdObject(json['sound']),
    useDefaultShowPreview = convertToTdObject(json['use_default_show_preview']),
    showPreview = convertToTdObject(json['show_preview']),
    useDefaultDisablePinnedMessageNotifications = convertToTdObject(json['use_default_disable_pinned_message_notifications']),
    disablePinnedMessageNotifications = convertToTdObject(json['disable_pinned_message_notifications']),
    useDefaultDisableMentionNotifications = convertToTdObject(json['use_default_disable_mention_notifications']),
    disableMentionNotifications = convertToTdObject(json['disable_mention_notifications']);
}

class ScopeNotificationSettings extends TdObject {
  @override
  String get tdType => 'scopeNotificationSettings';

  int muteFor;
  String sound;
  bool showPreview;
  bool disablePinnedMessageNotifications;
  bool disableMentionNotifications;

  @override
  Map<String, dynamic> get params => {
    'mute_for': muteFor,
    'sound': sound,
    'show_preview': showPreview,
    'disable_pinned_message_notifications': disablePinnedMessageNotifications,
    'disable_mention_notifications': disableMentionNotifications,
  };

  ScopeNotificationSettings(
    this.muteFor,
    this.sound,
    this.showPreview,
    this.disablePinnedMessageNotifications,
    this.disableMentionNotifications,
  );

  ScopeNotificationSettings.fromJson(Map<String, dynamic> json):
    muteFor = json['mute_for'] is int 
      ? convertToTdObject(json['mute_for']) 
      : int.parse(convertToTdObject(json['mute_for'])),
    sound = convertToTdObject(json['sound']),
    showPreview = convertToTdObject(json['show_preview']),
    disablePinnedMessageNotifications = convertToTdObject(json['disable_pinned_message_notifications']),
    disableMentionNotifications = convertToTdObject(json['disable_mention_notifications']);
}

class DraftMessage extends TdObject {
  @override
  String get tdType => 'draftMessage';

  int replyToMessageId;
  int date;
  InputMessageContent inputMessageText;

  @override
  Map<String, dynamic> get params => {
    'reply_to_message_id': replyToMessageId,
    'date': date,
    'input_message_text': inputMessageText,
  };

  DraftMessage(
    this.replyToMessageId,
    this.date,
    this.inputMessageText,
  );

  DraftMessage.fromJson(Map<String, dynamic> json):
    replyToMessageId = json['reply_to_message_id'] is int 
      ? convertToTdObject(json['reply_to_message_id']) 
      : int.parse(convertToTdObject(json['reply_to_message_id'])),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    inputMessageText = convertToTdObject(json['input_message_text']);
}

abstract class ChatType extends TdObject {}

class ChatTypePrivate extends ChatType {
  @override
  String get tdType => 'chatTypePrivate';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  ChatTypePrivate(
    this.userId,
  );

  ChatTypePrivate.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id']));
}

class ChatTypeBasicGroup extends ChatType {
  @override
  String get tdType => 'chatTypeBasicGroup';

  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
  };

  ChatTypeBasicGroup(
    this.basicGroupId,
  );

  ChatTypeBasicGroup.fromJson(Map<String, dynamic> json):
    basicGroupId = json['basic_group_id'] is int 
      ? convertToTdObject(json['basic_group_id']) 
      : int.parse(convertToTdObject(json['basic_group_id']));
}

class ChatTypeSupergroup extends ChatType {
  @override
  String get tdType => 'chatTypeSupergroup';

  int supergroupId;
  bool isChannel;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'is_channel': isChannel,
  };

  ChatTypeSupergroup(
    this.supergroupId,
    this.isChannel,
  );

  ChatTypeSupergroup.fromJson(Map<String, dynamic> json):
    supergroupId = json['supergroup_id'] is int 
      ? convertToTdObject(json['supergroup_id']) 
      : int.parse(convertToTdObject(json['supergroup_id'])),
    isChannel = convertToTdObject(json['is_channel']);
}

class ChatTypeSecret extends ChatType {
  @override
  String get tdType => 'chatTypeSecret';

  int secretChatId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
    'user_id': userId,
  };

  ChatTypeSecret(
    this.secretChatId,
    this.userId,
  );

  ChatTypeSecret.fromJson(Map<String, dynamic> json):
    secretChatId = json['secret_chat_id'] is int 
      ? convertToTdObject(json['secret_chat_id']) 
      : int.parse(convertToTdObject(json['secret_chat_id'])),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id']));
}

class ChatFilter extends TdObject {
  @override
  String get tdType => 'chatFilter';

  String title;
  String iconName;
  List<int> pinnedChatIds;
  List<int> includedChatIds;
  List<int> excludedChatIds;
  bool excludeMuted;
  bool excludeRead;
  bool excludeArchived;
  bool includeContacts;
  bool includeNonContacts;
  bool includeBots;
  bool includeGroups;
  bool includeChannels;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'icon_name': iconName,
    'pinned_chat_ids': pinnedChatIds,
    'included_chat_ids': includedChatIds,
    'excluded_chat_ids': excludedChatIds,
    'exclude_muted': excludeMuted,
    'exclude_read': excludeRead,
    'exclude_archived': excludeArchived,
    'include_contacts': includeContacts,
    'include_non_contacts': includeNonContacts,
    'include_bots': includeBots,
    'include_groups': includeGroups,
    'include_channels': includeChannels,
  };

  ChatFilter(
    this.title,
    this.iconName,
    this.pinnedChatIds,
    this.includedChatIds,
    this.excludedChatIds,
    this.excludeMuted,
    this.excludeRead,
    this.excludeArchived,
    this.includeContacts,
    this.includeNonContacts,
    this.includeBots,
    this.includeGroups,
    this.includeChannels,
  );

  ChatFilter.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    iconName = convertToTdObject(json['icon_name']),
    pinnedChatIds = convertToTdObject(castList<int>(json['pinned_chat_ids'])),
    includedChatIds = convertToTdObject(castList<int>(json['included_chat_ids'])),
    excludedChatIds = convertToTdObject(castList<int>(json['excluded_chat_ids'])),
    excludeMuted = convertToTdObject(json['exclude_muted']),
    excludeRead = convertToTdObject(json['exclude_read']),
    excludeArchived = convertToTdObject(json['exclude_archived']),
    includeContacts = convertToTdObject(json['include_contacts']),
    includeNonContacts = convertToTdObject(json['include_non_contacts']),
    includeBots = convertToTdObject(json['include_bots']),
    includeGroups = convertToTdObject(json['include_groups']),
    includeChannels = convertToTdObject(json['include_channels']);
}

class ChatFilterInfo extends TdObject {
  @override
  String get tdType => 'chatFilterInfo';

  int id;
  String title;
  String iconName;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'icon_name': iconName,
  };

  ChatFilterInfo(
    this.id,
    this.title,
    this.iconName,
  );

  ChatFilterInfo.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    title = convertToTdObject(json['title']),
    iconName = convertToTdObject(json['icon_name']);
}

class RecommendedChatFilter extends TdObject {
  @override
  String get tdType => 'recommendedChatFilter';

  ChatFilter filter;
  String description;

  @override
  Map<String, dynamic> get params => {
    'filter': filter,
    'description': description,
  };

  RecommendedChatFilter(
    this.filter,
    this.description,
  );

  RecommendedChatFilter.fromJson(Map<String, dynamic> json):
    filter = convertToTdObject(json['filter']),
    description = convertToTdObject(json['description']);
}

class RecommendedChatFilters extends TdObject {
  @override
  String get tdType => 'recommendedChatFilters';

  List<RecommendedChatFilter> chatFilters;

  @override
  Map<String, dynamic> get params => {
    'chat_filters': chatFilters,
  };

  RecommendedChatFilters(
    this.chatFilters,
  );

  RecommendedChatFilters.fromJson(Map<String, dynamic> json):
    chatFilters = convertToTdObject(castList<RecommendedChatFilter>(json['chat_filters']));
}

abstract class ChatList extends TdObject {}

class ChatListMain extends ChatList {
  @override
  String get tdType => 'chatListMain';

  @override
  Map<String, dynamic> get params => {};

  ChatListMain();

  ChatListMain.fromJson(Map<String, dynamic> json);
}

class ChatListArchive extends ChatList {
  @override
  String get tdType => 'chatListArchive';

  @override
  Map<String, dynamic> get params => {};

  ChatListArchive();

  ChatListArchive.fromJson(Map<String, dynamic> json);
}

class ChatListFilter extends ChatList {
  @override
  String get tdType => 'chatListFilter';

  int chatFilterId;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_id': chatFilterId,
  };

  ChatListFilter(
    this.chatFilterId,
  );

  ChatListFilter.fromJson(Map<String, dynamic> json):
    chatFilterId = json['chat_filter_id'] is int 
      ? convertToTdObject(json['chat_filter_id']) 
      : int.parse(convertToTdObject(json['chat_filter_id']));
}

class ChatLists extends TdObject {
  @override
  String get tdType => 'chatLists';

  List<ChatList> chatLists;

  @override
  Map<String, dynamic> get params => {
    'chat_lists': chatLists,
  };

  ChatLists(
    this.chatLists,
  );

  ChatLists.fromJson(Map<String, dynamic> json):
    chatLists = convertToTdObject(castList<ChatList>(json['chat_lists']));
}

abstract class ChatSource extends TdObject {}

class ChatSourceMtprotoProxy extends ChatSource {
  @override
  String get tdType => 'chatSourceMtprotoProxy';

  @override
  Map<String, dynamic> get params => {};

  ChatSourceMtprotoProxy();

  ChatSourceMtprotoProxy.fromJson(Map<String, dynamic> json);
}

class ChatSourcePublicServiceAnnouncement extends ChatSource {
  @override
  String get tdType => 'chatSourcePublicServiceAnnouncement';

  String type;
  String text;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'text': text,
  };

  ChatSourcePublicServiceAnnouncement(
    this.type,
    this.text,
  );

  ChatSourcePublicServiceAnnouncement.fromJson(Map<String, dynamic> json):
    type = convertToTdObject(json['type']),
    text = convertToTdObject(json['text']);
}

class ChatPosition extends TdObject {
  @override
  String get tdType => 'chatPosition';

  ChatList list;
  int order;
  bool isPinned;
  ChatSource? source;

  @override
  Map<String, dynamic> get params => {
    'list': list,
    'order': order,
    'is_pinned': isPinned,
    'source': source,
  };

  ChatPosition(
    this.list,
    this.order,
    this.isPinned,
    this.source,
  );

  ChatPosition.fromJson(Map<String, dynamic> json):
    list = convertToTdObject(json['list']),
    order = json['order'] is int 
      ? convertToTdObject(json['order']) 
      : int.parse(convertToTdObject(json['order'])),
    isPinned = convertToTdObject(json['is_pinned']),
    source = convertToTdObject(json['source']);
}

class VoiceChat extends TdObject {
  @override
  String get tdType => 'voiceChat';

  int groupCallId;
  bool hasParticipants;
  MessageSender? defaultParticipantId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'has_participants': hasParticipants,
    'default_participant_id': defaultParticipantId,
  };

  VoiceChat(
    this.groupCallId,
    this.hasParticipants,
    this.defaultParticipantId,
  );

  VoiceChat.fromJson(Map<String, dynamic> json):
    groupCallId = json['group_call_id'] is int 
      ? convertToTdObject(json['group_call_id']) 
      : int.parse(convertToTdObject(json['group_call_id'])),
    hasParticipants = convertToTdObject(json['has_participants']),
    defaultParticipantId = convertToTdObject(json['default_participant_id']);
}

class Chat extends TdObject {
  @override
  String get tdType => 'chat';

  int id;
  ChatType type;
  String title;
  ChatPhotoInfo photo;
  ChatPermissions permissions;
  Message lastMessage;
  List<ChatPosition> positions;
  bool isMarkedAsUnread;
  bool isBlocked;
  bool hasScheduledMessages;
  bool canBeDeletedOnlyForSelf;
  bool canBeDeletedForAllUsers;
  bool canBeReported;
  bool defaultDisableNotification;
  int unreadCount;
  int lastReadInboxMessageId;
  int lastReadOutboxMessageId;
  int unreadMentionCount;
  ChatNotificationSettings notificationSettings;
  int messageTtlSetting;
  ChatActionBar actionBar;
  VoiceChat voiceChat;
  int replyMarkupMessageId;
  DraftMessage draftMessage;
  String clientData;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'type': type,
    'title': title,
    'photo': photo,
    'permissions': permissions,
    'last_message': lastMessage,
    'positions': positions,
    'is_marked_as_unread': isMarkedAsUnread,
    'is_blocked': isBlocked,
    'has_scheduled_messages': hasScheduledMessages,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'can_be_reported': canBeReported,
    'default_disable_notification': defaultDisableNotification,
    'unread_count': unreadCount,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_mention_count': unreadMentionCount,
    'notification_settings': notificationSettings,
    'message_ttl_setting': messageTtlSetting,
    'action_bar': actionBar,
    'voice_chat': voiceChat,
    'reply_markup_message_id': replyMarkupMessageId,
    'draft_message': draftMessage,
    'client_data': clientData,
  };

  Chat(
    this.id,
    this.type,
    this.title,
    this.photo,
    this.permissions,
    this.lastMessage,
    this.positions,
    this.isMarkedAsUnread,
    this.isBlocked,
    this.hasScheduledMessages,
    this.canBeDeletedOnlyForSelf,
    this.canBeDeletedForAllUsers,
    this.canBeReported,
    this.defaultDisableNotification,
    this.unreadCount,
    this.lastReadInboxMessageId,
    this.lastReadOutboxMessageId,
    this.unreadMentionCount,
    this.notificationSettings,
    this.messageTtlSetting,
    this.actionBar,
    this.voiceChat,
    this.replyMarkupMessageId,
    this.draftMessage,
    this.clientData,
  );

  Chat.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    type = convertToTdObject(json['type']),
    title = convertToTdObject(json['title']),
    photo = convertToTdObject(json['photo']),
    permissions = convertToTdObject(json['permissions']),
    lastMessage = convertToTdObject(json['last_message']),
    positions = convertToTdObject(castList<ChatPosition>(json['positions'])),
    isMarkedAsUnread = convertToTdObject(json['is_marked_as_unread']),
    isBlocked = convertToTdObject(json['is_blocked']),
    hasScheduledMessages = convertToTdObject(json['has_scheduled_messages']),
    canBeDeletedOnlyForSelf = convertToTdObject(json['can_be_deleted_only_for_self']),
    canBeDeletedForAllUsers = convertToTdObject(json['can_be_deleted_for_all_users']),
    canBeReported = convertToTdObject(json['can_be_reported']),
    defaultDisableNotification = convertToTdObject(json['default_disable_notification']),
    unreadCount = json['unread_count'] is int 
      ? convertToTdObject(json['unread_count']) 
      : int.parse(convertToTdObject(json['unread_count'])),
    lastReadInboxMessageId = json['last_read_inbox_message_id'] is int 
      ? convertToTdObject(json['last_read_inbox_message_id']) 
      : int.parse(convertToTdObject(json['last_read_inbox_message_id'])),
    lastReadOutboxMessageId = json['last_read_outbox_message_id'] is int 
      ? convertToTdObject(json['last_read_outbox_message_id']) 
      : int.parse(convertToTdObject(json['last_read_outbox_message_id'])),
    unreadMentionCount = json['unread_mention_count'] is int 
      ? convertToTdObject(json['unread_mention_count']) 
      : int.parse(convertToTdObject(json['unread_mention_count'])),
    notificationSettings = convertToTdObject(json['notification_settings']),
    messageTtlSetting = json['message_ttl_setting'] is int 
      ? convertToTdObject(json['message_ttl_setting']) 
      : int.parse(convertToTdObject(json['message_ttl_setting'])),
    actionBar = convertToTdObject(json['action_bar']),
    voiceChat = convertToTdObject(json['voice_chat']),
    replyMarkupMessageId = json['reply_markup_message_id'] is int 
      ? convertToTdObject(json['reply_markup_message_id']) 
      : int.parse(convertToTdObject(json['reply_markup_message_id'])),
    draftMessage = convertToTdObject(json['draft_message']),
    clientData = convertToTdObject(json['client_data']);
}

class Chats extends TdObject {
  @override
  String get tdType => 'chats';

  int totalCount;
  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'chat_ids': chatIds,
  };

  Chats(
    this.totalCount,
    this.chatIds,
  );

  Chats.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    chatIds = convertToTdObject(castList<int>(json['chat_ids']));
}

class ChatNearby extends TdObject {
  @override
  String get tdType => 'chatNearby';

  int chatId;
  int distance;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'distance': distance,
  };

  ChatNearby(
    this.chatId,
    this.distance,
  );

  ChatNearby.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    distance = json['distance'] is int 
      ? convertToTdObject(json['distance']) 
      : int.parse(convertToTdObject(json['distance']));
}

class ChatsNearby extends TdObject {
  @override
  String get tdType => 'chatsNearby';

  List<ChatNearby> usersNearby;
  List<ChatNearby> supergroupsNearby;

  @override
  Map<String, dynamic> get params => {
    'users_nearby': usersNearby,
    'supergroups_nearby': supergroupsNearby,
  };

  ChatsNearby(
    this.usersNearby,
    this.supergroupsNearby,
  );

  ChatsNearby.fromJson(Map<String, dynamic> json):
    usersNearby = convertToTdObject(castList<ChatNearby>(json['users_nearby'])),
    supergroupsNearby = convertToTdObject(castList<ChatNearby>(json['supergroups_nearby']));
}

abstract class PublicChatType extends TdObject {}

class PublicChatTypeHasUsername extends PublicChatType {
  @override
  String get tdType => 'publicChatTypeHasUsername';

  @override
  Map<String, dynamic> get params => {};

  PublicChatTypeHasUsername();

  PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json);
}

class PublicChatTypeIsLocationBased extends PublicChatType {
  @override
  String get tdType => 'publicChatTypeIsLocationBased';

  @override
  Map<String, dynamic> get params => {};

  PublicChatTypeIsLocationBased();

  PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json);
}

abstract class ChatActionBar extends TdObject {}

class ChatActionBarReportSpam extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarReportSpam';

  bool canUnarchive;

  @override
  Map<String, dynamic> get params => {
    'can_unarchive': canUnarchive,
  };

  ChatActionBarReportSpam(
    this.canUnarchive,
  );

  ChatActionBarReportSpam.fromJson(Map<String, dynamic> json):
    canUnarchive = convertToTdObject(json['can_unarchive']);
}

class ChatActionBarReportUnrelatedLocation extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarReportUnrelatedLocation';

  @override
  Map<String, dynamic> get params => {};

  ChatActionBarReportUnrelatedLocation();

  ChatActionBarReportUnrelatedLocation.fromJson(Map<String, dynamic> json);
}

class ChatActionBarInviteMembers extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarInviteMembers';

  @override
  Map<String, dynamic> get params => {};

  ChatActionBarInviteMembers();

  ChatActionBarInviteMembers.fromJson(Map<String, dynamic> json);
}

class ChatActionBarReportAddBlock extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarReportAddBlock';

  bool canUnarchive;
  int distance;

  @override
  Map<String, dynamic> get params => {
    'can_unarchive': canUnarchive,
    'distance': distance,
  };

  ChatActionBarReportAddBlock(
    this.canUnarchive,
    this.distance,
  );

  ChatActionBarReportAddBlock.fromJson(Map<String, dynamic> json):
    canUnarchive = convertToTdObject(json['can_unarchive']),
    distance = json['distance'] is int 
      ? convertToTdObject(json['distance']) 
      : int.parse(convertToTdObject(json['distance']));
}

class ChatActionBarAddContact extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarAddContact';

  @override
  Map<String, dynamic> get params => {};

  ChatActionBarAddContact();

  ChatActionBarAddContact.fromJson(Map<String, dynamic> json);
}

class ChatActionBarSharePhoneNumber extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarSharePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  ChatActionBarSharePhoneNumber();

  ChatActionBarSharePhoneNumber.fromJson(Map<String, dynamic> json);
}

abstract class KeyboardButtonType extends TdObject {}

class KeyboardButtonTypeText extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeText';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeText();

  KeyboardButtonTypeText.fromJson(Map<String, dynamic> json);
}

class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeRequestPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeRequestPhoneNumber();

  KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json);
}

class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeRequestLocation';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeRequestLocation();

  KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json);
}

class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeRequestPoll';

  bool forceRegular;
  bool forceQuiz;

  @override
  Map<String, dynamic> get params => {
    'force_regular': forceRegular,
    'force_quiz': forceQuiz,
  };

  KeyboardButtonTypeRequestPoll(
    this.forceRegular,
    this.forceQuiz,
  );

  KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json):
    forceRegular = convertToTdObject(json['force_regular']),
    forceQuiz = convertToTdObject(json['force_quiz']);
}

class KeyboardButton extends TdObject {
  @override
  String get tdType => 'keyboardButton';

  String text;
  KeyboardButtonType type;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'type': type,
  };

  KeyboardButton(
    this.text,
    this.type,
  );

  KeyboardButton.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    type = convertToTdObject(json['type']);
}

abstract class InlineKeyboardButtonType extends TdObject {}

class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  InlineKeyboardButtonTypeUrl(
    this.url,
  );

  InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']);
}

class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeLoginUrl';

  String url;
  int id;
  String forwardText;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'id': id,
    'forward_text': forwardText,
  };

  InlineKeyboardButtonTypeLoginUrl(
    this.url,
    this.id,
    this.forwardText,
  );

  InlineKeyboardButtonTypeLoginUrl.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']),
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    forwardText = convertToTdObject(json['forward_text']);
}

class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeCallback';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InlineKeyboardButtonTypeCallback(
    this.data,
  );

  InlineKeyboardButtonTypeCallback.fromJson(Map<String, dynamic> json):
    data = convertToTdObject(json['data']);
}

class InlineKeyboardButtonTypeCallbackWithPassword extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeCallbackWithPassword';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InlineKeyboardButtonTypeCallbackWithPassword(
    this.data,
  );

  InlineKeyboardButtonTypeCallbackWithPassword.fromJson(Map<String, dynamic> json):
    data = convertToTdObject(json['data']);
}

class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeCallbackGame';

  @override
  Map<String, dynamic> get params => {};

  InlineKeyboardButtonTypeCallbackGame();

  InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json);
}

class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeSwitchInline';

  String query;
  bool inCurrentChat;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'in_current_chat': inCurrentChat,
  };

  InlineKeyboardButtonTypeSwitchInline(
    this.query,
    this.inCurrentChat,
  );

  InlineKeyboardButtonTypeSwitchInline.fromJson(Map<String, dynamic> json):
    query = convertToTdObject(json['query']),
    inCurrentChat = convertToTdObject(json['in_current_chat']);
}

class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeBuy';

  @override
  Map<String, dynamic> get params => {};

  InlineKeyboardButtonTypeBuy();

  InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json);
}

class InlineKeyboardButton extends TdObject {
  @override
  String get tdType => 'inlineKeyboardButton';

  String text;
  InlineKeyboardButtonType type;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'type': type,
  };

  InlineKeyboardButton(
    this.text,
    this.type,
  );

  InlineKeyboardButton.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    type = convertToTdObject(json['type']);
}

abstract class ReplyMarkup extends TdObject {}

class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupRemoveKeyboard';

  bool isPersonal;

  @override
  Map<String, dynamic> get params => {
    'is_personal': isPersonal,
  };

  ReplyMarkupRemoveKeyboard(
    this.isPersonal,
  );

  ReplyMarkupRemoveKeyboard.fromJson(Map<String, dynamic> json):
    isPersonal = convertToTdObject(json['is_personal']);
}

class ReplyMarkupForceReply extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupForceReply';

  bool isPersonal;
  String inputFieldPlaceholder;

  @override
  Map<String, dynamic> get params => {
    'is_personal': isPersonal,
    'input_field_placeholder': inputFieldPlaceholder,
  };

  ReplyMarkupForceReply(
    this.isPersonal,
    this.inputFieldPlaceholder,
  );

  ReplyMarkupForceReply.fromJson(Map<String, dynamic> json):
    isPersonal = convertToTdObject(json['is_personal']),
    inputFieldPlaceholder = convertToTdObject(json['input_field_placeholder']);
}

class ReplyMarkupShowKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupShowKeyboard';

  List<List<KeyboardButton>> rows;
  bool resizeKeyboard;
  bool oneTime;
  bool isPersonal;
  String inputFieldPlaceholder;

  @override
  Map<String, dynamic> get params => {
    'rows': rows,
    'resize_keyboard': resizeKeyboard,
    'one_time': oneTime,
    'is_personal': isPersonal,
    'input_field_placeholder': inputFieldPlaceholder,
  };

  ReplyMarkupShowKeyboard(
    this.rows,
    this.resizeKeyboard,
    this.oneTime,
    this.isPersonal,
    this.inputFieldPlaceholder,
  );

  ReplyMarkupShowKeyboard.fromJson(Map<String, dynamic> json):
    rows = convertToTdObject(castList<List>(json['rows'])),
    resizeKeyboard = convertToTdObject(json['resize_keyboard']),
    oneTime = convertToTdObject(json['one_time']),
    isPersonal = convertToTdObject(json['is_personal']),
    inputFieldPlaceholder = convertToTdObject(json['input_field_placeholder']);
}

class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupInlineKeyboard';

  List<List<InlineKeyboardButton>> rows;

  @override
  Map<String, dynamic> get params => {
    'rows': rows,
  };

  ReplyMarkupInlineKeyboard(
    this.rows,
  );

  ReplyMarkupInlineKeyboard.fromJson(Map<String, dynamic> json):
    rows = convertToTdObject(castList<List>(json['rows']));
}

abstract class LoginUrlInfo extends TdObject {}

class LoginUrlInfoOpen extends LoginUrlInfo {
  @override
  String get tdType => 'loginUrlInfoOpen';

  String url;
  bool skipConfirm;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'skip_confirm': skipConfirm,
  };

  LoginUrlInfoOpen(
    this.url,
    this.skipConfirm,
  );

  LoginUrlInfoOpen.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']),
    skipConfirm = convertToTdObject(json['skip_confirm']);
}

class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  @override
  String get tdType => 'loginUrlInfoRequestConfirmation';

  String url;
  String domain;
  int botUserId;
  bool requestWriteAccess;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'domain': domain,
    'bot_user_id': botUserId,
    'request_write_access': requestWriteAccess,
  };

  LoginUrlInfoRequestConfirmation(
    this.url,
    this.domain,
    this.botUserId,
    this.requestWriteAccess,
  );

  LoginUrlInfoRequestConfirmation.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']),
    domain = convertToTdObject(json['domain']),
    botUserId = json['bot_user_id'] is int 
      ? convertToTdObject(json['bot_user_id']) 
      : int.parse(convertToTdObject(json['bot_user_id'])),
    requestWriteAccess = convertToTdObject(json['request_write_access']);
}

class MessageThreadInfo extends TdObject {
  @override
  String get tdType => 'messageThreadInfo';

  int chatId;
  int messageThreadId;
  MessageReplyInfo replyInfo;
  List<Message> messages;
  DraftMessage? draftMessage;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_info': replyInfo,
    'messages': messages,
    'draft_message': draftMessage,
  };

  MessageThreadInfo(
    this.chatId,
    this.messageThreadId,
    this.replyInfo,
    this.messages,
    this.draftMessage,
  );

  MessageThreadInfo.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageThreadId = json['message_thread_id'] is int 
      ? convertToTdObject(json['message_thread_id']) 
      : int.parse(convertToTdObject(json['message_thread_id'])),
    replyInfo = convertToTdObject(json['reply_info']),
    messages = convertToTdObject(castList<Message>(json['messages'])),
    draftMessage = convertToTdObject(json['draft_message']);
}

abstract class RichText extends TdObject {}

class RichTextPlain extends RichText {
  @override
  String get tdType => 'richTextPlain';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextPlain(
    this.text,
  );

  RichTextPlain.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextBold extends RichText {
  @override
  String get tdType => 'richTextBold';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextBold(
    this.text,
  );

  RichTextBold.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextItalic extends RichText {
  @override
  String get tdType => 'richTextItalic';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextItalic(
    this.text,
  );

  RichTextItalic.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextUnderline extends RichText {
  @override
  String get tdType => 'richTextUnderline';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextUnderline(
    this.text,
  );

  RichTextUnderline.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextStrikethrough extends RichText {
  @override
  String get tdType => 'richTextStrikethrough';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextStrikethrough(
    this.text,
  );

  RichTextStrikethrough.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextFixed extends RichText {
  @override
  String get tdType => 'richTextFixed';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextFixed(
    this.text,
  );

  RichTextFixed.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextUrl extends RichText {
  @override
  String get tdType => 'richTextUrl';

  RichText text;
  String url;
  bool isCached;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'url': url,
    'is_cached': isCached,
  };

  RichTextUrl(
    this.text,
    this.url,
    this.isCached,
  );

  RichTextUrl.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    url = convertToTdObject(json['url']),
    isCached = convertToTdObject(json['is_cached']);
}

class RichTextEmailAddress extends RichText {
  @override
  String get tdType => 'richTextEmailAddress';

  RichText text;
  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'email_address': emailAddress,
  };

  RichTextEmailAddress(
    this.text,
    this.emailAddress,
  );

  RichTextEmailAddress.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    emailAddress = convertToTdObject(json['email_address']);
}

class RichTextSubscript extends RichText {
  @override
  String get tdType => 'richTextSubscript';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextSubscript(
    this.text,
  );

  RichTextSubscript.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextSuperscript extends RichText {
  @override
  String get tdType => 'richTextSuperscript';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextSuperscript(
    this.text,
  );

  RichTextSuperscript.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextMarked extends RichText {
  @override
  String get tdType => 'richTextMarked';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextMarked(
    this.text,
  );

  RichTextMarked.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class RichTextPhoneNumber extends RichText {
  @override
  String get tdType => 'richTextPhoneNumber';

  RichText text;
  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'phone_number': phoneNumber,
  };

  RichTextPhoneNumber(
    this.text,
    this.phoneNumber,
  );

  RichTextPhoneNumber.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    phoneNumber = convertToTdObject(json['phone_number']);
}

class RichTextIcon extends RichText {
  @override
  String get tdType => 'richTextIcon';

  Document document;
  int width;
  int height;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'width': width,
    'height': height,
  };

  RichTextIcon(
    this.document,
    this.width,
    this.height,
  );

  RichTextIcon.fromJson(Map<String, dynamic> json):
    document = convertToTdObject(json['document']),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height']));
}

class RichTextReference extends RichText {
  @override
  String get tdType => 'richTextReference';

  RichText text;
  String anchorName;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'anchor_name': anchorName,
    'url': url,
  };

  RichTextReference(
    this.text,
    this.anchorName,
    this.url,
  );

  RichTextReference.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    anchorName = convertToTdObject(json['anchor_name']),
    url = convertToTdObject(json['url']);
}

class RichTextAnchor extends RichText {
  @override
  String get tdType => 'richTextAnchor';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  RichTextAnchor(
    this.name,
  );

  RichTextAnchor.fromJson(Map<String, dynamic> json):
    name = convertToTdObject(json['name']);
}

class RichTextAnchorLink extends RichText {
  @override
  String get tdType => 'richTextAnchorLink';

  RichText text;
  String anchorName;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'anchor_name': anchorName,
    'url': url,
  };

  RichTextAnchorLink(
    this.text,
    this.anchorName,
    this.url,
  );

  RichTextAnchorLink.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    anchorName = convertToTdObject(json['anchor_name']),
    url = convertToTdObject(json['url']);
}

class RichTexts extends RichText {
  @override
  String get tdType => 'richTexts';

  List<RichText> texts;

  @override
  Map<String, dynamic> get params => {
    'texts': texts,
  };

  RichTexts(
    this.texts,
  );

  RichTexts.fromJson(Map<String, dynamic> json):
    texts = convertToTdObject(castList<RichText>(json['texts']));
}

class PageBlockCaption extends TdObject {
  @override
  String get tdType => 'pageBlockCaption';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockCaption(
    this.text,
    this.credit,
  );

  PageBlockCaption.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    credit = convertToTdObject(json['credit']);
}

class PageBlockListItem extends TdObject {
  @override
  String get tdType => 'pageBlockListItem';

  String label;
  List<PageBlock> pageBlocks;

  @override
  Map<String, dynamic> get params => {
    'label': label,
    'page_blocks': pageBlocks,
  };

  PageBlockListItem(
    this.label,
    this.pageBlocks,
  );

  PageBlockListItem.fromJson(Map<String, dynamic> json):
    label = convertToTdObject(json['label']),
    pageBlocks = convertToTdObject(castList<PageBlock>(json['page_blocks']));
}

abstract class PageBlockHorizontalAlignment extends TdObject {}

class PageBlockHorizontalAlignmentLeft extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentLeft';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentLeft();

  PageBlockHorizontalAlignmentLeft.fromJson(Map<String, dynamic> json);
}

class PageBlockHorizontalAlignmentCenter extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentCenter';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentCenter();

  PageBlockHorizontalAlignmentCenter.fromJson(Map<String, dynamic> json);
}

class PageBlockHorizontalAlignmentRight extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentRight';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentRight();

  PageBlockHorizontalAlignmentRight.fromJson(Map<String, dynamic> json);
}

abstract class PageBlockVerticalAlignment extends TdObject {}

class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentTop';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentTop();

  PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json);
}

class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentMiddle';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentMiddle();

  PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json);
}

class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentBottom';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentBottom();

  PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json);
}

class PageBlockTableCell extends TdObject {
  @override
  String get tdType => 'pageBlockTableCell';

  RichText text;
  bool isHeader;
  int colspan;
  int rowspan;
  PageBlockHorizontalAlignment align;
  PageBlockVerticalAlignment valign;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'is_header': isHeader,
    'colspan': colspan,
    'rowspan': rowspan,
    'align': align,
    'valign': valign,
  };

  PageBlockTableCell(
    this.text,
    this.isHeader,
    this.colspan,
    this.rowspan,
    this.align,
    this.valign,
  );

  PageBlockTableCell.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    isHeader = convertToTdObject(json['is_header']),
    colspan = json['colspan'] is int 
      ? convertToTdObject(json['colspan']) 
      : int.parse(convertToTdObject(json['colspan'])),
    rowspan = json['rowspan'] is int 
      ? convertToTdObject(json['rowspan']) 
      : int.parse(convertToTdObject(json['rowspan'])),
    align = convertToTdObject(json['align']),
    valign = convertToTdObject(json['valign']);
}

class PageBlockRelatedArticle extends TdObject {
  @override
  String get tdType => 'pageBlockRelatedArticle';

  String url;
  String title;
  String description;
  Photo? photo;
  String author;
  int publishDate;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'title': title,
    'description': description,
    'photo': photo,
    'author': author,
    'publish_date': publishDate,
  };

  PageBlockRelatedArticle(
    this.url,
    this.title,
    this.description,
    this.photo,
    this.author,
    this.publishDate,
  );

  PageBlockRelatedArticle.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    photo = convertToTdObject(json['photo']),
    author = convertToTdObject(json['author']),
    publishDate = json['publish_date'] is int 
      ? convertToTdObject(json['publish_date']) 
      : int.parse(convertToTdObject(json['publish_date']));
}

abstract class PageBlock extends TdObject {}

class PageBlockTitle extends PageBlock {
  @override
  String get tdType => 'pageBlockTitle';

  RichText title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  PageBlockTitle(
    this.title,
  );

  PageBlockTitle.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']);
}

class PageBlockSubtitle extends PageBlock {
  @override
  String get tdType => 'pageBlockSubtitle';

  RichText subtitle;

  @override
  Map<String, dynamic> get params => {
    'subtitle': subtitle,
  };

  PageBlockSubtitle(
    this.subtitle,
  );

  PageBlockSubtitle.fromJson(Map<String, dynamic> json):
    subtitle = convertToTdObject(json['subtitle']);
}

class PageBlockAuthorDate extends PageBlock {
  @override
  String get tdType => 'pageBlockAuthorDate';

  RichText author;
  int publishDate;

  @override
  Map<String, dynamic> get params => {
    'author': author,
    'publish_date': publishDate,
  };

  PageBlockAuthorDate(
    this.author,
    this.publishDate,
  );

  PageBlockAuthorDate.fromJson(Map<String, dynamic> json):
    author = convertToTdObject(json['author']),
    publishDate = json['publish_date'] is int 
      ? convertToTdObject(json['publish_date']) 
      : int.parse(convertToTdObject(json['publish_date']));
}

class PageBlockHeader extends PageBlock {
  @override
  String get tdType => 'pageBlockHeader';

  RichText header;

  @override
  Map<String, dynamic> get params => {
    'header': header,
  };

  PageBlockHeader(
    this.header,
  );

  PageBlockHeader.fromJson(Map<String, dynamic> json):
    header = convertToTdObject(json['header']);
}

class PageBlockSubheader extends PageBlock {
  @override
  String get tdType => 'pageBlockSubheader';

  RichText subheader;

  @override
  Map<String, dynamic> get params => {
    'subheader': subheader,
  };

  PageBlockSubheader(
    this.subheader,
  );

  PageBlockSubheader.fromJson(Map<String, dynamic> json):
    subheader = convertToTdObject(json['subheader']);
}

class PageBlockKicker extends PageBlock {
  @override
  String get tdType => 'pageBlockKicker';

  RichText kicker;

  @override
  Map<String, dynamic> get params => {
    'kicker': kicker,
  };

  PageBlockKicker(
    this.kicker,
  );

  PageBlockKicker.fromJson(Map<String, dynamic> json):
    kicker = convertToTdObject(json['kicker']);
}

class PageBlockParagraph extends PageBlock {
  @override
  String get tdType => 'pageBlockParagraph';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  PageBlockParagraph(
    this.text,
  );

  PageBlockParagraph.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class PageBlockPreformatted extends PageBlock {
  @override
  String get tdType => 'pageBlockPreformatted';

  RichText text;
  String language;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'language': language,
  };

  PageBlockPreformatted(
    this.text,
    this.language,
  );

  PageBlockPreformatted.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    language = convertToTdObject(json['language']);
}

class PageBlockFooter extends PageBlock {
  @override
  String get tdType => 'pageBlockFooter';

  RichText footer;

  @override
  Map<String, dynamic> get params => {
    'footer': footer,
  };

  PageBlockFooter(
    this.footer,
  );

  PageBlockFooter.fromJson(Map<String, dynamic> json):
    footer = convertToTdObject(json['footer']);
}

class PageBlockDivider extends PageBlock {
  @override
  String get tdType => 'pageBlockDivider';

  @override
  Map<String, dynamic> get params => {};

  PageBlockDivider();

  PageBlockDivider.fromJson(Map<String, dynamic> json);
}

class PageBlockAnchor extends PageBlock {
  @override
  String get tdType => 'pageBlockAnchor';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  PageBlockAnchor(
    this.name,
  );

  PageBlockAnchor.fromJson(Map<String, dynamic> json):
    name = convertToTdObject(json['name']);
}

class PageBlockList extends PageBlock {
  @override
  String get tdType => 'pageBlockList';

  List<PageBlockListItem> items;

  @override
  Map<String, dynamic> get params => {
    'items': items,
  };

  PageBlockList(
    this.items,
  );

  PageBlockList.fromJson(Map<String, dynamic> json):
    items = convertToTdObject(castList<PageBlockListItem>(json['items']));
}

class PageBlockBlockQuote extends PageBlock {
  @override
  String get tdType => 'pageBlockBlockQuote';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockBlockQuote(
    this.text,
    this.credit,
  );

  PageBlockBlockQuote.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    credit = convertToTdObject(json['credit']);
}

class PageBlockPullQuote extends PageBlock {
  @override
  String get tdType => 'pageBlockPullQuote';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockPullQuote(
    this.text,
    this.credit,
  );

  PageBlockPullQuote.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    credit = convertToTdObject(json['credit']);
}

class PageBlockAnimation extends PageBlock {
  @override
  String get tdType => 'pageBlockAnimation';

  Animation? animation;
  PageBlockCaption caption;
  bool needAutoplay;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'need_autoplay': needAutoplay,
  };

  PageBlockAnimation(
    this.animation,
    this.caption,
    this.needAutoplay,
  );

  PageBlockAnimation.fromJson(Map<String, dynamic> json):
    animation = convertToTdObject(json['animation']),
    caption = convertToTdObject(json['caption']),
    needAutoplay = convertToTdObject(json['need_autoplay']);
}

class PageBlockAudio extends PageBlock {
  @override
  String get tdType => 'pageBlockAudio';

  Audio? audio;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'caption': caption,
  };

  PageBlockAudio(
    this.audio,
    this.caption,
  );

  PageBlockAudio.fromJson(Map<String, dynamic> json):
    audio = convertToTdObject(json['audio']),
    caption = convertToTdObject(json['caption']);
}

class PageBlockPhoto extends PageBlock {
  @override
  String get tdType => 'pageBlockPhoto';

  Photo? photo;
  PageBlockCaption caption;
  String url;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'url': url,
  };

  PageBlockPhoto(
    this.photo,
    this.caption,
    this.url,
  );

  PageBlockPhoto.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']),
    caption = convertToTdObject(json['caption']),
    url = convertToTdObject(json['url']);
}

class PageBlockVideo extends PageBlock {
  @override
  String get tdType => 'pageBlockVideo';

  Video? video;
  PageBlockCaption caption;
  bool needAutoplay;
  bool isLooped;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'need_autoplay': needAutoplay,
    'is_looped': isLooped,
  };

  PageBlockVideo(
    this.video,
    this.caption,
    this.needAutoplay,
    this.isLooped,
  );

  PageBlockVideo.fromJson(Map<String, dynamic> json):
    video = convertToTdObject(json['video']),
    caption = convertToTdObject(json['caption']),
    needAutoplay = convertToTdObject(json['need_autoplay']),
    isLooped = convertToTdObject(json['is_looped']);
}

class PageBlockVoiceNote extends PageBlock {
  @override
  String get tdType => 'pageBlockVoiceNote';

  VoiceNote? voiceNote;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'caption': caption,
  };

  PageBlockVoiceNote(
    this.voiceNote,
    this.caption,
  );

  PageBlockVoiceNote.fromJson(Map<String, dynamic> json):
    voiceNote = convertToTdObject(json['voice_note']),
    caption = convertToTdObject(json['caption']);
}

class PageBlockCover extends PageBlock {
  @override
  String get tdType => 'pageBlockCover';

  PageBlock cover;

  @override
  Map<String, dynamic> get params => {
    'cover': cover,
  };

  PageBlockCover(
    this.cover,
  );

  PageBlockCover.fromJson(Map<String, dynamic> json):
    cover = convertToTdObject(json['cover']);
}

class PageBlockEmbedded extends PageBlock {
  @override
  String get tdType => 'pageBlockEmbedded';

  String url;
  String html;
  Photo? posterPhoto;
  int width;
  int height;
  PageBlockCaption caption;
  bool isFullWidth;
  bool allowScrolling;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'html': html,
    'poster_photo': posterPhoto,
    'width': width,
    'height': height,
    'caption': caption,
    'is_full_width': isFullWidth,
    'allow_scrolling': allowScrolling,
  };

  PageBlockEmbedded(
    this.url,
    this.html,
    this.posterPhoto,
    this.width,
    this.height,
    this.caption,
    this.isFullWidth,
    this.allowScrolling,
  );

  PageBlockEmbedded.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']),
    html = convertToTdObject(json['html']),
    posterPhoto = convertToTdObject(json['poster_photo']),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    caption = convertToTdObject(json['caption']),
    isFullWidth = convertToTdObject(json['is_full_width']),
    allowScrolling = convertToTdObject(json['allow_scrolling']);
}

class PageBlockEmbeddedPost extends PageBlock {
  @override
  String get tdType => 'pageBlockEmbeddedPost';

  String url;
  String author;
  Photo? authorPhoto;
  int date;
  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'author': author,
    'author_photo': authorPhoto,
    'date': date,
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockEmbeddedPost(
    this.url,
    this.author,
    this.authorPhoto,
    this.date,
    this.pageBlocks,
    this.caption,
  );

  PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']),
    author = convertToTdObject(json['author']),
    authorPhoto = convertToTdObject(json['author_photo']),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    pageBlocks = convertToTdObject(castList<PageBlock>(json['page_blocks'])),
    caption = convertToTdObject(json['caption']);
}

class PageBlockCollage extends PageBlock {
  @override
  String get tdType => 'pageBlockCollage';

  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockCollage(
    this.pageBlocks,
    this.caption,
  );

  PageBlockCollage.fromJson(Map<String, dynamic> json):
    pageBlocks = convertToTdObject(castList<PageBlock>(json['page_blocks'])),
    caption = convertToTdObject(json['caption']);
}

class PageBlockSlideshow extends PageBlock {
  @override
  String get tdType => 'pageBlockSlideshow';

  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockSlideshow(
    this.pageBlocks,
    this.caption,
  );

  PageBlockSlideshow.fromJson(Map<String, dynamic> json):
    pageBlocks = convertToTdObject(castList<PageBlock>(json['page_blocks'])),
    caption = convertToTdObject(json['caption']);
}

class PageBlockChatLink extends PageBlock {
  @override
  String get tdType => 'pageBlockChatLink';

  String title;
  ChatPhotoInfo? photo;
  String username;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'photo': photo,
    'username': username,
  };

  PageBlockChatLink(
    this.title,
    this.photo,
    this.username,
  );

  PageBlockChatLink.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    photo = convertToTdObject(json['photo']),
    username = convertToTdObject(json['username']);
}

class PageBlockTable extends PageBlock {
  @override
  String get tdType => 'pageBlockTable';

  RichText caption;
  List<List<PageBlockTableCell>> cells;
  bool isBordered;
  bool isStriped;

  @override
  Map<String, dynamic> get params => {
    'caption': caption,
    'cells': cells,
    'is_bordered': isBordered,
    'is_striped': isStriped,
  };

  PageBlockTable(
    this.caption,
    this.cells,
    this.isBordered,
    this.isStriped,
  );

  PageBlockTable.fromJson(Map<String, dynamic> json):
    caption = convertToTdObject(json['caption']),
    cells = convertToTdObject(castList<List>(json['cells'])),
    isBordered = convertToTdObject(json['is_bordered']),
    isStriped = convertToTdObject(json['is_striped']);
}

class PageBlockDetails extends PageBlock {
  @override
  String get tdType => 'pageBlockDetails';

  RichText header;
  List<PageBlock> pageBlocks;
  bool isOpen;

  @override
  Map<String, dynamic> get params => {
    'header': header,
    'page_blocks': pageBlocks,
    'is_open': isOpen,
  };

  PageBlockDetails(
    this.header,
    this.pageBlocks,
    this.isOpen,
  );

  PageBlockDetails.fromJson(Map<String, dynamic> json):
    header = convertToTdObject(json['header']),
    pageBlocks = convertToTdObject(castList<PageBlock>(json['page_blocks'])),
    isOpen = convertToTdObject(json['is_open']);
}

class PageBlockRelatedArticles extends PageBlock {
  @override
  String get tdType => 'pageBlockRelatedArticles';

  RichText header;
  List<PageBlockRelatedArticle> articles;

  @override
  Map<String, dynamic> get params => {
    'header': header,
    'articles': articles,
  };

  PageBlockRelatedArticles(
    this.header,
    this.articles,
  );

  PageBlockRelatedArticles.fromJson(Map<String, dynamic> json):
    header = convertToTdObject(json['header']),
    articles = convertToTdObject(castList<PageBlockRelatedArticle>(json['articles']));
}

class PageBlockMap extends PageBlock {
  @override
  String get tdType => 'pageBlockMap';

  Location location;
  int zoom;
  int width;
  int height;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'zoom': zoom,
    'width': width,
    'height': height,
    'caption': caption,
  };

  PageBlockMap(
    this.location,
    this.zoom,
    this.width,
    this.height,
    this.caption,
  );

  PageBlockMap.fromJson(Map<String, dynamic> json):
    location = convertToTdObject(json['location']),
    zoom = json['zoom'] is int 
      ? convertToTdObject(json['zoom']) 
      : int.parse(convertToTdObject(json['zoom'])),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    caption = convertToTdObject(json['caption']);
}

class WebPageInstantView extends TdObject {
  @override
  String get tdType => 'webPageInstantView';

  List<PageBlock> pageBlocks;
  int viewCount;
  int version;
  bool isRtl;
  bool isFull;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'view_count': viewCount,
    'version': version,
    'is_rtl': isRtl,
    'is_full': isFull,
  };

  WebPageInstantView(
    this.pageBlocks,
    this.viewCount,
    this.version,
    this.isRtl,
    this.isFull,
  );

  WebPageInstantView.fromJson(Map<String, dynamic> json):
    pageBlocks = convertToTdObject(castList<PageBlock>(json['page_blocks'])),
    viewCount = json['view_count'] is int 
      ? convertToTdObject(json['view_count']) 
      : int.parse(convertToTdObject(json['view_count'])),
    version = json['version'] is int 
      ? convertToTdObject(json['version']) 
      : int.parse(convertToTdObject(json['version'])),
    isRtl = convertToTdObject(json['is_rtl']),
    isFull = convertToTdObject(json['is_full']);
}

class WebPage extends TdObject {
  @override
  String get tdType => 'webPage';

  String url;
  String displayUrl;
  String type;
  String siteName;
  String title;
  FormattedText description;
  Photo photo;
  String embedUrl;
  String embedType;
  int embedWidth;
  int embedHeight;
  int duration;
  String author;
  Animation animation;
  Audio audio;
  Document document;
  Sticker sticker;
  Video video;
  VideoNote videoNote;
  VoiceNote voiceNote;
  int instantViewVersion;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'display_url': displayUrl,
    'type': type,
    'site_name': siteName,
    'title': title,
    'description': description,
    'photo': photo,
    'embed_url': embedUrl,
    'embed_type': embedType,
    'embed_width': embedWidth,
    'embed_height': embedHeight,
    'duration': duration,
    'author': author,
    'animation': animation,
    'audio': audio,
    'document': document,
    'sticker': sticker,
    'video': video,
    'video_note': videoNote,
    'voice_note': voiceNote,
    'instant_view_version': instantViewVersion,
  };

  WebPage(
    this.url,
    this.displayUrl,
    this.type,
    this.siteName,
    this.title,
    this.description,
    this.photo,
    this.embedUrl,
    this.embedType,
    this.embedWidth,
    this.embedHeight,
    this.duration,
    this.author,
    this.animation,
    this.audio,
    this.document,
    this.sticker,
    this.video,
    this.videoNote,
    this.voiceNote,
    this.instantViewVersion,
  );

  WebPage.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']),
    displayUrl = convertToTdObject(json['display_url']),
    type = convertToTdObject(json['type']),
    siteName = convertToTdObject(json['site_name']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    photo = convertToTdObject(json['photo']),
    embedUrl = convertToTdObject(json['embed_url']),
    embedType = convertToTdObject(json['embed_type']),
    embedWidth = json['embed_width'] is int 
      ? convertToTdObject(json['embed_width']) 
      : int.parse(convertToTdObject(json['embed_width'])),
    embedHeight = json['embed_height'] is int 
      ? convertToTdObject(json['embed_height']) 
      : int.parse(convertToTdObject(json['embed_height'])),
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    author = convertToTdObject(json['author']),
    animation = convertToTdObject(json['animation']),
    audio = convertToTdObject(json['audio']),
    document = convertToTdObject(json['document']),
    sticker = convertToTdObject(json['sticker']),
    video = convertToTdObject(json['video']),
    videoNote = convertToTdObject(json['video_note']),
    voiceNote = convertToTdObject(json['voice_note']),
    instantViewVersion = json['instant_view_version'] is int 
      ? convertToTdObject(json['instant_view_version']) 
      : int.parse(convertToTdObject(json['instant_view_version']));
}

class CountryInfo extends TdObject {
  @override
  String get tdType => 'countryInfo';

  String countryCode;
  String name;
  String englishName;
  bool isHidden;
  List<String> callingCodes;

  @override
  Map<String, dynamic> get params => {
    'country_code': countryCode,
    'name': name,
    'english_name': englishName,
    'is_hidden': isHidden,
    'calling_codes': callingCodes,
  };

  CountryInfo(
    this.countryCode,
    this.name,
    this.englishName,
    this.isHidden,
    this.callingCodes,
  );

  CountryInfo.fromJson(Map<String, dynamic> json):
    countryCode = convertToTdObject(json['country_code']),
    name = convertToTdObject(json['name']),
    englishName = convertToTdObject(json['english_name']),
    isHidden = convertToTdObject(json['is_hidden']),
    callingCodes = convertToTdObject(castList<String>(json['calling_codes']));
}

class Countries extends TdObject {
  @override
  String get tdType => 'countries';

  List<CountryInfo> countries;

  @override
  Map<String, dynamic> get params => {
    'countries': countries,
  };

  Countries(
    this.countries,
  );

  Countries.fromJson(Map<String, dynamic> json):
    countries = convertToTdObject(castList<CountryInfo>(json['countries']));
}

class PhoneNumberInfo extends TdObject {
  @override
  String get tdType => 'phoneNumberInfo';

  CountryInfo country;
  String countryCallingCode;
  String formattedPhoneNumber;

  @override
  Map<String, dynamic> get params => {
    'country': country,
    'country_calling_code': countryCallingCode,
    'formatted_phone_number': formattedPhoneNumber,
  };

  PhoneNumberInfo(
    this.country,
    this.countryCallingCode,
    this.formattedPhoneNumber,
  );

  PhoneNumberInfo.fromJson(Map<String, dynamic> json):
    country = convertToTdObject(json['country']),
    countryCallingCode = convertToTdObject(json['country_calling_code']),
    formattedPhoneNumber = convertToTdObject(json['formatted_phone_number']);
}

class BankCardActionOpenUrl extends TdObject {
  @override
  String get tdType => 'bankCardActionOpenUrl';

  String text;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'url': url,
  };

  BankCardActionOpenUrl(
    this.text,
    this.url,
  );

  BankCardActionOpenUrl.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    url = convertToTdObject(json['url']);
}

class BankCardInfo extends TdObject {
  @override
  String get tdType => 'bankCardInfo';

  String title;
  List<BankCardActionOpenUrl> actions;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'actions': actions,
  };

  BankCardInfo(
    this.title,
    this.actions,
  );

  BankCardInfo.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    actions = convertToTdObject(castList<BankCardActionOpenUrl>(json['actions']));
}

class Address extends TdObject {
  @override
  String get tdType => 'address';

  String countryCode;
  String state;
  String city;
  String streetLine1;
  String streetLine2;
  String postalCode;

  @override
  Map<String, dynamic> get params => {
    'country_code': countryCode,
    'state': state,
    'city': city,
    'street_line1': streetLine1,
    'street_line2': streetLine2,
    'postal_code': postalCode,
  };

  Address(
    this.countryCode,
    this.state,
    this.city,
    this.streetLine1,
    this.streetLine2,
    this.postalCode,
  );

  Address.fromJson(Map<String, dynamic> json):
    countryCode = convertToTdObject(json['country_code']),
    state = convertToTdObject(json['state']),
    city = convertToTdObject(json['city']),
    streetLine1 = convertToTdObject(json['street_line1']),
    streetLine2 = convertToTdObject(json['street_line2']),
    postalCode = convertToTdObject(json['postal_code']);
}

class LabeledPricePart extends TdObject {
  @override
  String get tdType => 'labeledPricePart';

  String label;
  int amount;

  @override
  Map<String, dynamic> get params => {
    'label': label,
    'amount': amount,
  };

  LabeledPricePart(
    this.label,
    this.amount,
  );

  LabeledPricePart.fromJson(Map<String, dynamic> json):
    label = convertToTdObject(json['label']),
    amount = json['amount'] is int 
      ? convertToTdObject(json['amount']) 
      : int.parse(convertToTdObject(json['amount']));
}

class Invoice extends TdObject {
  @override
  String get tdType => 'invoice';

  String currency;
  List<LabeledPricePart> priceParts;
  int maxTipAmount;
  List<int> suggestedTipAmounts;
  bool isTest;
  bool needName;
  bool needPhoneNumber;
  bool needEmailAddress;
  bool needShippingAddress;
  bool sendPhoneNumberToProvider;
  bool sendEmailAddressToProvider;
  bool isFlexible;

  @override
  Map<String, dynamic> get params => {
    'currency': currency,
    'price_parts': priceParts,
    'max_tip_amount': maxTipAmount,
    'suggested_tip_amounts': suggestedTipAmounts,
    'is_test': isTest,
    'need_name': needName,
    'need_phone_number': needPhoneNumber,
    'need_email_address': needEmailAddress,
    'need_shipping_address': needShippingAddress,
    'send_phone_number_to_provider': sendPhoneNumberToProvider,
    'send_email_address_to_provider': sendEmailAddressToProvider,
    'is_flexible': isFlexible,
  };

  Invoice(
    this.currency,
    this.priceParts,
    this.maxTipAmount,
    this.suggestedTipAmounts,
    this.isTest,
    this.needName,
    this.needPhoneNumber,
    this.needEmailAddress,
    this.needShippingAddress,
    this.sendPhoneNumberToProvider,
    this.sendEmailAddressToProvider,
    this.isFlexible,
  );

  Invoice.fromJson(Map<String, dynamic> json):
    currency = convertToTdObject(json['currency']),
    priceParts = convertToTdObject(castList<LabeledPricePart>(json['price_parts'])),
    maxTipAmount = json['max_tip_amount'] is int 
      ? convertToTdObject(json['max_tip_amount']) 
      : int.parse(convertToTdObject(json['max_tip_amount'])),
    suggestedTipAmounts = convertToTdObject(castList<int>(json['suggested_tip_amounts'])),
    isTest = convertToTdObject(json['is_test']),
    needName = convertToTdObject(json['need_name']),
    needPhoneNumber = convertToTdObject(json['need_phone_number']),
    needEmailAddress = convertToTdObject(json['need_email_address']),
    needShippingAddress = convertToTdObject(json['need_shipping_address']),
    sendPhoneNumberToProvider = convertToTdObject(json['send_phone_number_to_provider']),
    sendEmailAddressToProvider = convertToTdObject(json['send_email_address_to_provider']),
    isFlexible = convertToTdObject(json['is_flexible']);
}

class OrderInfo extends TdObject {
  @override
  String get tdType => 'orderInfo';

  String name;
  String phoneNumber;
  String emailAddress;
  Address? shippingAddress;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'phone_number': phoneNumber,
    'email_address': emailAddress,
    'shipping_address': shippingAddress,
  };

  OrderInfo(
    this.name,
    this.phoneNumber,
    this.emailAddress,
    this.shippingAddress,
  );

  OrderInfo.fromJson(Map<String, dynamic> json):
    name = convertToTdObject(json['name']),
    phoneNumber = convertToTdObject(json['phone_number']),
    emailAddress = convertToTdObject(json['email_address']),
    shippingAddress = convertToTdObject(json['shipping_address']);
}

class ShippingOption extends TdObject {
  @override
  String get tdType => 'shippingOption';

  String id;
  String title;
  List<LabeledPricePart> priceParts;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'price_parts': priceParts,
  };

  ShippingOption(
    this.id,
    this.title,
    this.priceParts,
  );

  ShippingOption.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    title = convertToTdObject(json['title']),
    priceParts = convertToTdObject(castList<LabeledPricePart>(json['price_parts']));
}

class SavedCredentials extends TdObject {
  @override
  String get tdType => 'savedCredentials';

  String id;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
  };

  SavedCredentials(
    this.id,
    this.title,
  );

  SavedCredentials.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    title = convertToTdObject(json['title']);
}

abstract class InputCredentials extends TdObject {}

class InputCredentialsSaved extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsSaved';

  String savedCredentialsId;

  @override
  Map<String, dynamic> get params => {
    'saved_credentials_id': savedCredentialsId,
  };

  InputCredentialsSaved(
    this.savedCredentialsId,
  );

  InputCredentialsSaved.fromJson(Map<String, dynamic> json):
    savedCredentialsId = convertToTdObject(json['saved_credentials_id']);
}

class InputCredentialsNew extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsNew';

  String data;
  bool allowSave;

  @override
  Map<String, dynamic> get params => {
    'data': data,
    'allow_save': allowSave,
  };

  InputCredentialsNew(
    this.data,
    this.allowSave,
  );

  InputCredentialsNew.fromJson(Map<String, dynamic> json):
    data = convertToTdObject(json['data']),
    allowSave = convertToTdObject(json['allow_save']);
}

class InputCredentialsApplePay extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsApplePay';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InputCredentialsApplePay(
    this.data,
  );

  InputCredentialsApplePay.fromJson(Map<String, dynamic> json):
    data = convertToTdObject(json['data']);
}

class InputCredentialsGooglePay extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsGooglePay';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InputCredentialsGooglePay(
    this.data,
  );

  InputCredentialsGooglePay.fromJson(Map<String, dynamic> json):
    data = convertToTdObject(json['data']);
}

class PaymentsProviderStripe extends TdObject {
  @override
  String get tdType => 'paymentsProviderStripe';

  String publishableKey;
  bool needCountry;
  bool needPostalCode;
  bool needCardholderName;

  @override
  Map<String, dynamic> get params => {
    'publishable_key': publishableKey,
    'need_country': needCountry,
    'need_postal_code': needPostalCode,
    'need_cardholder_name': needCardholderName,
  };

  PaymentsProviderStripe(
    this.publishableKey,
    this.needCountry,
    this.needPostalCode,
    this.needCardholderName,
  );

  PaymentsProviderStripe.fromJson(Map<String, dynamic> json):
    publishableKey = convertToTdObject(json['publishable_key']),
    needCountry = convertToTdObject(json['need_country']),
    needPostalCode = convertToTdObject(json['need_postal_code']),
    needCardholderName = convertToTdObject(json['need_cardholder_name']);
}

class PaymentFormTheme extends TdObject {
  @override
  String get tdType => 'paymentFormTheme';

  int backgroundColor;
  int textColor;
  int hintColor;
  int linkColor;
  int buttonColor;
  int buttonTextColor;

  @override
  Map<String, dynamic> get params => {
    'background_color': backgroundColor,
    'text_color': textColor,
    'hint_color': hintColor,
    'link_color': linkColor,
    'button_color': buttonColor,
    'button_text_color': buttonTextColor,
  };

  PaymentFormTheme(
    this.backgroundColor,
    this.textColor,
    this.hintColor,
    this.linkColor,
    this.buttonColor,
    this.buttonTextColor,
  );

  PaymentFormTheme.fromJson(Map<String, dynamic> json):
    backgroundColor = json['background_color'] is int 
      ? convertToTdObject(json['background_color']) 
      : int.parse(convertToTdObject(json['background_color'])),
    textColor = json['text_color'] is int 
      ? convertToTdObject(json['text_color']) 
      : int.parse(convertToTdObject(json['text_color'])),
    hintColor = json['hint_color'] is int 
      ? convertToTdObject(json['hint_color']) 
      : int.parse(convertToTdObject(json['hint_color'])),
    linkColor = json['link_color'] is int 
      ? convertToTdObject(json['link_color']) 
      : int.parse(convertToTdObject(json['link_color'])),
    buttonColor = json['button_color'] is int 
      ? convertToTdObject(json['button_color']) 
      : int.parse(convertToTdObject(json['button_color'])),
    buttonTextColor = json['button_text_color'] is int 
      ? convertToTdObject(json['button_text_color']) 
      : int.parse(convertToTdObject(json['button_text_color']));
}

class PaymentForm extends TdObject {
  @override
  String get tdType => 'paymentForm';

  int id;
  Invoice invoice;
  String url;
  int sellerBotUserId;
  int paymentsProviderUserId;
  PaymentsProviderStripe paymentsProvider;
  OrderInfo savedOrderInfo;
  SavedCredentials savedCredentials;
  bool canSaveCredentials;
  bool needPassword;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'invoice': invoice,
    'url': url,
    'seller_bot_user_id': sellerBotUserId,
    'payments_provider_user_id': paymentsProviderUserId,
    'payments_provider': paymentsProvider,
    'saved_order_info': savedOrderInfo,
    'saved_credentials': savedCredentials,
    'can_save_credentials': canSaveCredentials,
    'need_password': needPassword,
  };

  PaymentForm(
    this.id,
    this.invoice,
    this.url,
    this.sellerBotUserId,
    this.paymentsProviderUserId,
    this.paymentsProvider,
    this.savedOrderInfo,
    this.savedCredentials,
    this.canSaveCredentials,
    this.needPassword,
  );

  PaymentForm.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    invoice = convertToTdObject(json['invoice']),
    url = convertToTdObject(json['url']),
    sellerBotUserId = json['seller_bot_user_id'] is int 
      ? convertToTdObject(json['seller_bot_user_id']) 
      : int.parse(convertToTdObject(json['seller_bot_user_id'])),
    paymentsProviderUserId = json['payments_provider_user_id'] is int 
      ? convertToTdObject(json['payments_provider_user_id']) 
      : int.parse(convertToTdObject(json['payments_provider_user_id'])),
    paymentsProvider = convertToTdObject(json['payments_provider']),
    savedOrderInfo = convertToTdObject(json['saved_order_info']),
    savedCredentials = convertToTdObject(json['saved_credentials']),
    canSaveCredentials = convertToTdObject(json['can_save_credentials']),
    needPassword = convertToTdObject(json['need_password']);
}

class ValidatedOrderInfo extends TdObject {
  @override
  String get tdType => 'validatedOrderInfo';

  String orderInfoId;
  List<ShippingOption> shippingOptions;

  @override
  Map<String, dynamic> get params => {
    'order_info_id': orderInfoId,
    'shipping_options': shippingOptions,
  };

  ValidatedOrderInfo(
    this.orderInfoId,
    this.shippingOptions,
  );

  ValidatedOrderInfo.fromJson(Map<String, dynamic> json):
    orderInfoId = convertToTdObject(json['order_info_id']),
    shippingOptions = convertToTdObject(castList<ShippingOption>(json['shipping_options']));
}

class PaymentResult extends TdObject {
  @override
  String get tdType => 'paymentResult';

  bool success;
  String verificationUrl;

  @override
  Map<String, dynamic> get params => {
    'success': success,
    'verification_url': verificationUrl,
  };

  PaymentResult(
    this.success,
    this.verificationUrl,
  );

  PaymentResult.fromJson(Map<String, dynamic> json):
    success = convertToTdObject(json['success']),
    verificationUrl = convertToTdObject(json['verification_url']);
}

class PaymentReceipt extends TdObject {
  @override
  String get tdType => 'paymentReceipt';

  String title;
  String description;
  Photo photo;
  int date;
  int sellerBotUserId;
  int paymentsProviderUserId;
  Invoice invoice;
  OrderInfo orderInfo;
  ShippingOption shippingOption;
  String credentialsTitle;
  int tipAmount;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'description': description,
    'photo': photo,
    'date': date,
    'seller_bot_user_id': sellerBotUserId,
    'payments_provider_user_id': paymentsProviderUserId,
    'invoice': invoice,
    'order_info': orderInfo,
    'shipping_option': shippingOption,
    'credentials_title': credentialsTitle,
    'tip_amount': tipAmount,
  };

  PaymentReceipt(
    this.title,
    this.description,
    this.photo,
    this.date,
    this.sellerBotUserId,
    this.paymentsProviderUserId,
    this.invoice,
    this.orderInfo,
    this.shippingOption,
    this.credentialsTitle,
    this.tipAmount,
  );

  PaymentReceipt.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    photo = convertToTdObject(json['photo']),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    sellerBotUserId = json['seller_bot_user_id'] is int 
      ? convertToTdObject(json['seller_bot_user_id']) 
      : int.parse(convertToTdObject(json['seller_bot_user_id'])),
    paymentsProviderUserId = json['payments_provider_user_id'] is int 
      ? convertToTdObject(json['payments_provider_user_id']) 
      : int.parse(convertToTdObject(json['payments_provider_user_id'])),
    invoice = convertToTdObject(json['invoice']),
    orderInfo = convertToTdObject(json['order_info']),
    shippingOption = convertToTdObject(json['shipping_option']),
    credentialsTitle = convertToTdObject(json['credentials_title']),
    tipAmount = json['tip_amount'] is int 
      ? convertToTdObject(json['tip_amount']) 
      : int.parse(convertToTdObject(json['tip_amount']));
}

class DatedFile extends TdObject {
  @override
  String get tdType => 'datedFile';

  File file;
  int date;

  @override
  Map<String, dynamic> get params => {
    'file': file,
    'date': date,
  };

  DatedFile(
    this.file,
    this.date,
  );

  DatedFile.fromJson(Map<String, dynamic> json):
    file = convertToTdObject(json['file']),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date']));
}

abstract class PassportElementType extends TdObject {}

class PassportElementTypePersonalDetails extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePersonalDetails';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePersonalDetails();

  PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json);
}

class PassportElementTypePassport extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePassport';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePassport();

  PassportElementTypePassport.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeDriverLicense extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeDriverLicense';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeDriverLicense();

  PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeIdentityCard extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeIdentityCard';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeIdentityCard();

  PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeInternalPassport extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeInternalPassport';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeInternalPassport();

  PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeAddress extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeAddress';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeAddress();

  PassportElementTypeAddress.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeUtilityBill extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeUtilityBill';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeUtilityBill();

  PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeBankStatement extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeBankStatement';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeBankStatement();

  PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeRentalAgreement extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeRentalAgreement';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeRentalAgreement();

  PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json);
}

class PassportElementTypePassportRegistration extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePassportRegistration';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePassportRegistration();

  PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeTemporaryRegistration extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeTemporaryRegistration';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeTemporaryRegistration();

  PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json);
}

class PassportElementTypePhoneNumber extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePhoneNumber();

  PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json);
}

class PassportElementTypeEmailAddress extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeEmailAddress';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeEmailAddress();

  PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json);
}

class Date extends TdObject {
  @override
  String get tdType => 'date';

  int day;
  int month;
  int year;

  @override
  Map<String, dynamic> get params => {
    'day': day,
    'month': month,
    'year': year,
  };

  Date(
    this.day,
    this.month,
    this.year,
  );

  Date.fromJson(Map<String, dynamic> json):
    day = json['day'] is int 
      ? convertToTdObject(json['day']) 
      : int.parse(convertToTdObject(json['day'])),
    month = json['month'] is int 
      ? convertToTdObject(json['month']) 
      : int.parse(convertToTdObject(json['month'])),
    year = json['year'] is int 
      ? convertToTdObject(json['year']) 
      : int.parse(convertToTdObject(json['year']));
}

class PersonalDetails extends TdObject {
  @override
  String get tdType => 'personalDetails';

  String firstName;
  String middleName;
  String lastName;
  String nativeFirstName;
  String nativeMiddleName;
  String nativeLastName;
  Date birthdate;
  String gender;
  String countryCode;
  String residenceCountryCode;

  @override
  Map<String, dynamic> get params => {
    'first_name': firstName,
    'middle_name': middleName,
    'last_name': lastName,
    'native_first_name': nativeFirstName,
    'native_middle_name': nativeMiddleName,
    'native_last_name': nativeLastName,
    'birthdate': birthdate,
    'gender': gender,
    'country_code': countryCode,
    'residence_country_code': residenceCountryCode,
  };

  PersonalDetails(
    this.firstName,
    this.middleName,
    this.lastName,
    this.nativeFirstName,
    this.nativeMiddleName,
    this.nativeLastName,
    this.birthdate,
    this.gender,
    this.countryCode,
    this.residenceCountryCode,
  );

  PersonalDetails.fromJson(Map<String, dynamic> json):
    firstName = convertToTdObject(json['first_name']),
    middleName = convertToTdObject(json['middle_name']),
    lastName = convertToTdObject(json['last_name']),
    nativeFirstName = convertToTdObject(json['native_first_name']),
    nativeMiddleName = convertToTdObject(json['native_middle_name']),
    nativeLastName = convertToTdObject(json['native_last_name']),
    birthdate = convertToTdObject(json['birthdate']),
    gender = convertToTdObject(json['gender']),
    countryCode = convertToTdObject(json['country_code']),
    residenceCountryCode = convertToTdObject(json['residence_country_code']);
}

class IdentityDocument extends TdObject {
  @override
  String get tdType => 'identityDocument';

  String number;
  Date expiryDate;
  DatedFile frontSide;
  DatedFile reverseSide;
  DatedFile? selfie;
  List<DatedFile> translation;

  @override
  Map<String, dynamic> get params => {
    'number': number,
    'expiry_date': expiryDate,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
  };

  IdentityDocument(
    this.number,
    this.expiryDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
  );

  IdentityDocument.fromJson(Map<String, dynamic> json):
    number = convertToTdObject(json['number']),
    expiryDate = convertToTdObject(json['expiry_date']),
    frontSide = convertToTdObject(json['front_side']),
    reverseSide = convertToTdObject(json['reverse_side']),
    selfie = convertToTdObject(json['selfie']),
    translation = convertToTdObject(castList<DatedFile>(json['translation']));
}

class InputIdentityDocument extends TdObject {
  @override
  String get tdType => 'inputIdentityDocument';

  String number;
  Date expiryDate;
  InputFile frontSide;
  InputFile reverseSide;
  InputFile selfie;
  List<InputFile> translation;

  @override
  Map<String, dynamic> get params => {
    'number': number,
    'expiry_date': expiryDate,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
  };

  InputIdentityDocument(
    this.number,
    this.expiryDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
  );

  InputIdentityDocument.fromJson(Map<String, dynamic> json):
    number = convertToTdObject(json['number']),
    expiryDate = convertToTdObject(json['expiry_date']),
    frontSide = convertToTdObject(json['front_side']),
    reverseSide = convertToTdObject(json['reverse_side']),
    selfie = convertToTdObject(json['selfie']),
    translation = convertToTdObject(castList<InputFile>(json['translation']));
}

class PersonalDocument extends TdObject {
  @override
  String get tdType => 'personalDocument';

  List<DatedFile> files;
  List<DatedFile> translation;

  @override
  Map<String, dynamic> get params => {
    'files': files,
    'translation': translation,
  };

  PersonalDocument(
    this.files,
    this.translation,
  );

  PersonalDocument.fromJson(Map<String, dynamic> json):
    files = convertToTdObject(castList<DatedFile>(json['files'])),
    translation = convertToTdObject(castList<DatedFile>(json['translation']));
}

class InputPersonalDocument extends TdObject {
  @override
  String get tdType => 'inputPersonalDocument';

  List<InputFile> files;
  List<InputFile> translation;

  @override
  Map<String, dynamic> get params => {
    'files': files,
    'translation': translation,
  };

  InputPersonalDocument(
    this.files,
    this.translation,
  );

  InputPersonalDocument.fromJson(Map<String, dynamic> json):
    files = convertToTdObject(castList<InputFile>(json['files'])),
    translation = convertToTdObject(castList<InputFile>(json['translation']));
}

abstract class PassportElement extends TdObject {}

class PassportElementPersonalDetails extends PassportElement {
  @override
  String get tdType => 'passportElementPersonalDetails';

  PersonalDetails personalDetails;

  @override
  Map<String, dynamic> get params => {
    'personal_details': personalDetails,
  };

  PassportElementPersonalDetails(
    this.personalDetails,
  );

  PassportElementPersonalDetails.fromJson(Map<String, dynamic> json):
    personalDetails = convertToTdObject(json['personal_details']);
}

class PassportElementPassport extends PassportElement {
  @override
  String get tdType => 'passportElementPassport';

  IdentityDocument passport;

  @override
  Map<String, dynamic> get params => {
    'passport': passport,
  };

  PassportElementPassport(
    this.passport,
  );

  PassportElementPassport.fromJson(Map<String, dynamic> json):
    passport = convertToTdObject(json['passport']);
}

class PassportElementDriverLicense extends PassportElement {
  @override
  String get tdType => 'passportElementDriverLicense';

  IdentityDocument driverLicense;

  @override
  Map<String, dynamic> get params => {
    'driver_license': driverLicense,
  };

  PassportElementDriverLicense(
    this.driverLicense,
  );

  PassportElementDriverLicense.fromJson(Map<String, dynamic> json):
    driverLicense = convertToTdObject(json['driver_license']);
}

class PassportElementIdentityCard extends PassportElement {
  @override
  String get tdType => 'passportElementIdentityCard';

  IdentityDocument identityCard;

  @override
  Map<String, dynamic> get params => {
    'identity_card': identityCard,
  };

  PassportElementIdentityCard(
    this.identityCard,
  );

  PassportElementIdentityCard.fromJson(Map<String, dynamic> json):
    identityCard = convertToTdObject(json['identity_card']);
}

class PassportElementInternalPassport extends PassportElement {
  @override
  String get tdType => 'passportElementInternalPassport';

  IdentityDocument internalPassport;

  @override
  Map<String, dynamic> get params => {
    'internal_passport': internalPassport,
  };

  PassportElementInternalPassport(
    this.internalPassport,
  );

  PassportElementInternalPassport.fromJson(Map<String, dynamic> json):
    internalPassport = convertToTdObject(json['internal_passport']);
}

class PassportElementAddress extends PassportElement {
  @override
  String get tdType => 'passportElementAddress';

  Address address;

  @override
  Map<String, dynamic> get params => {
    'address': address,
  };

  PassportElementAddress(
    this.address,
  );

  PassportElementAddress.fromJson(Map<String, dynamic> json):
    address = convertToTdObject(json['address']);
}

class PassportElementUtilityBill extends PassportElement {
  @override
  String get tdType => 'passportElementUtilityBill';

  PersonalDocument utilityBill;

  @override
  Map<String, dynamic> get params => {
    'utility_bill': utilityBill,
  };

  PassportElementUtilityBill(
    this.utilityBill,
  );

  PassportElementUtilityBill.fromJson(Map<String, dynamic> json):
    utilityBill = convertToTdObject(json['utility_bill']);
}

class PassportElementBankStatement extends PassportElement {
  @override
  String get tdType => 'passportElementBankStatement';

  PersonalDocument bankStatement;

  @override
  Map<String, dynamic> get params => {
    'bank_statement': bankStatement,
  };

  PassportElementBankStatement(
    this.bankStatement,
  );

  PassportElementBankStatement.fromJson(Map<String, dynamic> json):
    bankStatement = convertToTdObject(json['bank_statement']);
}

class PassportElementRentalAgreement extends PassportElement {
  @override
  String get tdType => 'passportElementRentalAgreement';

  PersonalDocument rentalAgreement;

  @override
  Map<String, dynamic> get params => {
    'rental_agreement': rentalAgreement,
  };

  PassportElementRentalAgreement(
    this.rentalAgreement,
  );

  PassportElementRentalAgreement.fromJson(Map<String, dynamic> json):
    rentalAgreement = convertToTdObject(json['rental_agreement']);
}

class PassportElementPassportRegistration extends PassportElement {
  @override
  String get tdType => 'passportElementPassportRegistration';

  PersonalDocument passportRegistration;

  @override
  Map<String, dynamic> get params => {
    'passport_registration': passportRegistration,
  };

  PassportElementPassportRegistration(
    this.passportRegistration,
  );

  PassportElementPassportRegistration.fromJson(Map<String, dynamic> json):
    passportRegistration = convertToTdObject(json['passport_registration']);
}

class PassportElementTemporaryRegistration extends PassportElement {
  @override
  String get tdType => 'passportElementTemporaryRegistration';

  PersonalDocument temporaryRegistration;

  @override
  Map<String, dynamic> get params => {
    'temporary_registration': temporaryRegistration,
  };

  PassportElementTemporaryRegistration(
    this.temporaryRegistration,
  );

  PassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json):
    temporaryRegistration = convertToTdObject(json['temporary_registration']);
}

class PassportElementPhoneNumber extends PassportElement {
  @override
  String get tdType => 'passportElementPhoneNumber';

  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
  };

  PassportElementPhoneNumber(
    this.phoneNumber,
  );

  PassportElementPhoneNumber.fromJson(Map<String, dynamic> json):
    phoneNumber = convertToTdObject(json['phone_number']);
}

class PassportElementEmailAddress extends PassportElement {
  @override
  String get tdType => 'passportElementEmailAddress';

  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'email_address': emailAddress,
  };

  PassportElementEmailAddress(
    this.emailAddress,
  );

  PassportElementEmailAddress.fromJson(Map<String, dynamic> json):
    emailAddress = convertToTdObject(json['email_address']);
}

abstract class InputPassportElement extends TdObject {}

class InputPassportElementPersonalDetails extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPersonalDetails';

  PersonalDetails personalDetails;

  @override
  Map<String, dynamic> get params => {
    'personal_details': personalDetails,
  };

  InputPassportElementPersonalDetails(
    this.personalDetails,
  );

  InputPassportElementPersonalDetails.fromJson(Map<String, dynamic> json):
    personalDetails = convertToTdObject(json['personal_details']);
}

class InputPassportElementPassport extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPassport';

  InputIdentityDocument passport;

  @override
  Map<String, dynamic> get params => {
    'passport': passport,
  };

  InputPassportElementPassport(
    this.passport,
  );

  InputPassportElementPassport.fromJson(Map<String, dynamic> json):
    passport = convertToTdObject(json['passport']);
}

class InputPassportElementDriverLicense extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementDriverLicense';

  InputIdentityDocument driverLicense;

  @override
  Map<String, dynamic> get params => {
    'driver_license': driverLicense,
  };

  InputPassportElementDriverLicense(
    this.driverLicense,
  );

  InputPassportElementDriverLicense.fromJson(Map<String, dynamic> json):
    driverLicense = convertToTdObject(json['driver_license']);
}

class InputPassportElementIdentityCard extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementIdentityCard';

  InputIdentityDocument identityCard;

  @override
  Map<String, dynamic> get params => {
    'identity_card': identityCard,
  };

  InputPassportElementIdentityCard(
    this.identityCard,
  );

  InputPassportElementIdentityCard.fromJson(Map<String, dynamic> json):
    identityCard = convertToTdObject(json['identity_card']);
}

class InputPassportElementInternalPassport extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementInternalPassport';

  InputIdentityDocument internalPassport;

  @override
  Map<String, dynamic> get params => {
    'internal_passport': internalPassport,
  };

  InputPassportElementInternalPassport(
    this.internalPassport,
  );

  InputPassportElementInternalPassport.fromJson(Map<String, dynamic> json):
    internalPassport = convertToTdObject(json['internal_passport']);
}

class InputPassportElementAddress extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementAddress';

  Address address;

  @override
  Map<String, dynamic> get params => {
    'address': address,
  };

  InputPassportElementAddress(
    this.address,
  );

  InputPassportElementAddress.fromJson(Map<String, dynamic> json):
    address = convertToTdObject(json['address']);
}

class InputPassportElementUtilityBill extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementUtilityBill';

  InputPersonalDocument utilityBill;

  @override
  Map<String, dynamic> get params => {
    'utility_bill': utilityBill,
  };

  InputPassportElementUtilityBill(
    this.utilityBill,
  );

  InputPassportElementUtilityBill.fromJson(Map<String, dynamic> json):
    utilityBill = convertToTdObject(json['utility_bill']);
}

class InputPassportElementBankStatement extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementBankStatement';

  InputPersonalDocument bankStatement;

  @override
  Map<String, dynamic> get params => {
    'bank_statement': bankStatement,
  };

  InputPassportElementBankStatement(
    this.bankStatement,
  );

  InputPassportElementBankStatement.fromJson(Map<String, dynamic> json):
    bankStatement = convertToTdObject(json['bank_statement']);
}

class InputPassportElementRentalAgreement extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementRentalAgreement';

  InputPersonalDocument rentalAgreement;

  @override
  Map<String, dynamic> get params => {
    'rental_agreement': rentalAgreement,
  };

  InputPassportElementRentalAgreement(
    this.rentalAgreement,
  );

  InputPassportElementRentalAgreement.fromJson(Map<String, dynamic> json):
    rentalAgreement = convertToTdObject(json['rental_agreement']);
}

class InputPassportElementPassportRegistration extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPassportRegistration';

  InputPersonalDocument passportRegistration;

  @override
  Map<String, dynamic> get params => {
    'passport_registration': passportRegistration,
  };

  InputPassportElementPassportRegistration(
    this.passportRegistration,
  );

  InputPassportElementPassportRegistration.fromJson(Map<String, dynamic> json):
    passportRegistration = convertToTdObject(json['passport_registration']);
}

class InputPassportElementTemporaryRegistration extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementTemporaryRegistration';

  InputPersonalDocument temporaryRegistration;

  @override
  Map<String, dynamic> get params => {
    'temporary_registration': temporaryRegistration,
  };

  InputPassportElementTemporaryRegistration(
    this.temporaryRegistration,
  );

  InputPassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json):
    temporaryRegistration = convertToTdObject(json['temporary_registration']);
}

class InputPassportElementPhoneNumber extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPhoneNumber';

  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
  };

  InputPassportElementPhoneNumber(
    this.phoneNumber,
  );

  InputPassportElementPhoneNumber.fromJson(Map<String, dynamic> json):
    phoneNumber = convertToTdObject(json['phone_number']);
}

class InputPassportElementEmailAddress extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementEmailAddress';

  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'email_address': emailAddress,
  };

  InputPassportElementEmailAddress(
    this.emailAddress,
  );

  InputPassportElementEmailAddress.fromJson(Map<String, dynamic> json):
    emailAddress = convertToTdObject(json['email_address']);
}

class PassportElements extends TdObject {
  @override
  String get tdType => 'passportElements';

  List<PassportElement> elements;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
  };

  PassportElements(
    this.elements,
  );

  PassportElements.fromJson(Map<String, dynamic> json):
    elements = convertToTdObject(castList<PassportElement>(json['elements']));
}

abstract class PassportElementErrorSource extends TdObject {}

class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceUnspecified';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceUnspecified();

  PassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json);
}

class PassportElementErrorSourceDataField extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceDataField';

  String fieldName;

  @override
  Map<String, dynamic> get params => {
    'field_name': fieldName,
  };

  PassportElementErrorSourceDataField(
    this.fieldName,
  );

  PassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json):
    fieldName = convertToTdObject(json['field_name']);
}

class PassportElementErrorSourceFrontSide extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFrontSide';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceFrontSide();

  PassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json);
}

class PassportElementErrorSourceReverseSide extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceReverseSide';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceReverseSide();

  PassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json);
}

class PassportElementErrorSourceSelfie extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceSelfie';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceSelfie();

  PassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json);
}

class PassportElementErrorSourceTranslationFile extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceTranslationFile';

  int fileIndex;

  @override
  Map<String, dynamic> get params => {
    'file_index': fileIndex,
  };

  PassportElementErrorSourceTranslationFile(
    this.fileIndex,
  );

  PassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json):
    fileIndex = json['file_index'] is int 
      ? convertToTdObject(json['file_index']) 
      : int.parse(convertToTdObject(json['file_index']));
}

class PassportElementErrorSourceTranslationFiles extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceTranslationFiles';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceTranslationFiles();

  PassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json);
}

class PassportElementErrorSourceFile extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFile';

  int fileIndex;

  @override
  Map<String, dynamic> get params => {
    'file_index': fileIndex,
  };

  PassportElementErrorSourceFile(
    this.fileIndex,
  );

  PassportElementErrorSourceFile.fromJson(Map<String, dynamic> json):
    fileIndex = json['file_index'] is int 
      ? convertToTdObject(json['file_index']) 
      : int.parse(convertToTdObject(json['file_index']));
}

class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFiles';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceFiles();

  PassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json);
}

class PassportElementError extends TdObject {
  @override
  String get tdType => 'passportElementError';

  PassportElementType type;
  String message;
  PassportElementErrorSource source;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'message': message,
    'source': source,
  };

  PassportElementError(
    this.type,
    this.message,
    this.source,
  );

  PassportElementError.fromJson(Map<String, dynamic> json):
    type = convertToTdObject(json['type']),
    message = convertToTdObject(json['message']),
    source = convertToTdObject(json['source']);
}

class PassportSuitableElement extends TdObject {
  @override
  String get tdType => 'passportSuitableElement';

  PassportElementType type;
  bool isSelfieRequired;
  bool isTranslationRequired;
  bool isNativeNameRequired;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'is_selfie_required': isSelfieRequired,
    'is_translation_required': isTranslationRequired,
    'is_native_name_required': isNativeNameRequired,
  };

  PassportSuitableElement(
    this.type,
    this.isSelfieRequired,
    this.isTranslationRequired,
    this.isNativeNameRequired,
  );

  PassportSuitableElement.fromJson(Map<String, dynamic> json):
    type = convertToTdObject(json['type']),
    isSelfieRequired = convertToTdObject(json['is_selfie_required']),
    isTranslationRequired = convertToTdObject(json['is_translation_required']),
    isNativeNameRequired = convertToTdObject(json['is_native_name_required']);
}

class PassportRequiredElement extends TdObject {
  @override
  String get tdType => 'passportRequiredElement';

  List<PassportSuitableElement> suitableElements;

  @override
  Map<String, dynamic> get params => {
    'suitable_elements': suitableElements,
  };

  PassportRequiredElement(
    this.suitableElements,
  );

  PassportRequiredElement.fromJson(Map<String, dynamic> json):
    suitableElements = convertToTdObject(castList<PassportSuitableElement>(json['suitable_elements']));
}

class PassportAuthorizationForm extends TdObject {
  @override
  String get tdType => 'passportAuthorizationForm';

  int id;
  List<PassportRequiredElement> requiredElements;
  String privacyPolicyUrl;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'required_elements': requiredElements,
    'privacy_policy_url': privacyPolicyUrl,
  };

  PassportAuthorizationForm(
    this.id,
    this.requiredElements,
    this.privacyPolicyUrl,
  );

  PassportAuthorizationForm.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    requiredElements = convertToTdObject(castList<PassportRequiredElement>(json['required_elements'])),
    privacyPolicyUrl = convertToTdObject(json['privacy_policy_url']);
}

class PassportElementsWithErrors extends TdObject {
  @override
  String get tdType => 'passportElementsWithErrors';

  List<PassportElement> elements;
  List<PassportElementError> errors;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
    'errors': errors,
  };

  PassportElementsWithErrors(
    this.elements,
    this.errors,
  );

  PassportElementsWithErrors.fromJson(Map<String, dynamic> json):
    elements = convertToTdObject(castList<PassportElement>(json['elements'])),
    errors = convertToTdObject(castList<PassportElementError>(json['errors']));
}

class EncryptedCredentials extends TdObject {
  @override
  String get tdType => 'encryptedCredentials';

  String data;
  String hash;
  String secret;

  @override
  Map<String, dynamic> get params => {
    'data': data,
    'hash': hash,
    'secret': secret,
  };

  EncryptedCredentials(
    this.data,
    this.hash,
    this.secret,
  );

  EncryptedCredentials.fromJson(Map<String, dynamic> json):
    data = convertToTdObject(json['data']),
    hash = convertToTdObject(json['hash']),
    secret = convertToTdObject(json['secret']);
}

class EncryptedPassportElement extends TdObject {
  @override
  String get tdType => 'encryptedPassportElement';

  PassportElementType type;
  String data;
  DatedFile frontSide;
  DatedFile? reverseSide;
  DatedFile? selfie;
  List<DatedFile> translation;
  List<DatedFile> files;
  String value;
  String hash;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'data': data,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
    'files': files,
    'value': value,
    'hash': hash,
  };

  EncryptedPassportElement(
    this.type,
    this.data,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
    this.files,
    this.value,
    this.hash,
  );

  EncryptedPassportElement.fromJson(Map<String, dynamic> json):
    type = convertToTdObject(json['type']),
    data = convertToTdObject(json['data']),
    frontSide = convertToTdObject(json['front_side']),
    reverseSide = convertToTdObject(json['reverse_side']),
    selfie = convertToTdObject(json['selfie']),
    translation = convertToTdObject(castList<DatedFile>(json['translation'])),
    files = convertToTdObject(castList<DatedFile>(json['files'])),
    value = convertToTdObject(json['value']),
    hash = convertToTdObject(json['hash']);
}

abstract class InputPassportElementErrorSource extends TdObject {}

class InputPassportElementErrorSourceUnspecified extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceUnspecified';

  String elementHash;

  @override
  Map<String, dynamic> get params => {
    'element_hash': elementHash,
  };

  InputPassportElementErrorSourceUnspecified(
    this.elementHash,
  );

  InputPassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json):
    elementHash = convertToTdObject(json['element_hash']);
}

class InputPassportElementErrorSourceDataField extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceDataField';

  String fieldName;
  String dataHash;

  @override
  Map<String, dynamic> get params => {
    'field_name': fieldName,
    'data_hash': dataHash,
  };

  InputPassportElementErrorSourceDataField(
    this.fieldName,
    this.dataHash,
  );

  InputPassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json):
    fieldName = convertToTdObject(json['field_name']),
    dataHash = convertToTdObject(json['data_hash']);
}

class InputPassportElementErrorSourceFrontSide extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFrontSide';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceFrontSide(
    this.fileHash,
  );

  InputPassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json):
    fileHash = convertToTdObject(json['file_hash']);
}

class InputPassportElementErrorSourceReverseSide extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceReverseSide';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceReverseSide(
    this.fileHash,
  );

  InputPassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json):
    fileHash = convertToTdObject(json['file_hash']);
}

class InputPassportElementErrorSourceSelfie extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceSelfie';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceSelfie(
    this.fileHash,
  );

  InputPassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json):
    fileHash = convertToTdObject(json['file_hash']);
}

class InputPassportElementErrorSourceTranslationFile extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceTranslationFile';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceTranslationFile(
    this.fileHash,
  );

  InputPassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json):
    fileHash = convertToTdObject(json['file_hash']);
}

class InputPassportElementErrorSourceTranslationFiles extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceTranslationFiles';

  List<String> fileHashes;

  @override
  Map<String, dynamic> get params => {
    'file_hashes': fileHashes,
  };

  InputPassportElementErrorSourceTranslationFiles(
    this.fileHashes,
  );

  InputPassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json):
    fileHashes = convertToTdObject(castList<String>(json['file_hashes']));
}

class InputPassportElementErrorSourceFile extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFile';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceFile(
    this.fileHash,
  );

  InputPassportElementErrorSourceFile.fromJson(Map<String, dynamic> json):
    fileHash = convertToTdObject(json['file_hash']);
}

class InputPassportElementErrorSourceFiles extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFiles';

  List<String> fileHashes;

  @override
  Map<String, dynamic> get params => {
    'file_hashes': fileHashes,
  };

  InputPassportElementErrorSourceFiles(
    this.fileHashes,
  );

  InputPassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json):
    fileHashes = convertToTdObject(castList<String>(json['file_hashes']));
}

class InputPassportElementError extends TdObject {
  @override
  String get tdType => 'inputPassportElementError';

  PassportElementType type;
  String message;
  InputPassportElementErrorSource source;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'message': message,
    'source': source,
  };

  InputPassportElementError(
    this.type,
    this.message,
    this.source,
  );

  InputPassportElementError.fromJson(Map<String, dynamic> json):
    type = convertToTdObject(json['type']),
    message = convertToTdObject(json['message']),
    source = convertToTdObject(json['source']);
}

abstract class MessageContent extends TdObject {}

class MessageText extends MessageContent {
  @override
  String get tdType => 'messageText';

  FormattedText text;
  WebPage? webPage;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'web_page': webPage,
  };

  MessageText(
    this.text,
    this.webPage,
  );

  MessageText.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    webPage = convertToTdObject(json['web_page']);
}

class MessageAnimation extends MessageContent {
  @override
  String get tdType => 'messageAnimation';

  Animation animation;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessageAnimation(
    this.animation,
    this.caption,
    this.isSecret,
  );

  MessageAnimation.fromJson(Map<String, dynamic> json):
    animation = convertToTdObject(json['animation']),
    caption = convertToTdObject(json['caption']),
    isSecret = convertToTdObject(json['is_secret']);
}

class MessageAudio extends MessageContent {
  @override
  String get tdType => 'messageAudio';

  Audio audio;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'caption': caption,
  };

  MessageAudio(
    this.audio,
    this.caption,
  );

  MessageAudio.fromJson(Map<String, dynamic> json):
    audio = convertToTdObject(json['audio']),
    caption = convertToTdObject(json['caption']);
}

class MessageDocument extends MessageContent {
  @override
  String get tdType => 'messageDocument';

  Document document;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'caption': caption,
  };

  MessageDocument(
    this.document,
    this.caption,
  );

  MessageDocument.fromJson(Map<String, dynamic> json):
    document = convertToTdObject(json['document']),
    caption = convertToTdObject(json['caption']);
}

class MessagePhoto extends MessageContent {
  @override
  String get tdType => 'messagePhoto';

  Photo photo;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessagePhoto(
    this.photo,
    this.caption,
    this.isSecret,
  );

  MessagePhoto.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']),
    caption = convertToTdObject(json['caption']),
    isSecret = convertToTdObject(json['is_secret']);
}

class MessageExpiredPhoto extends MessageContent {
  @override
  String get tdType => 'messageExpiredPhoto';

  @override
  Map<String, dynamic> get params => {};

  MessageExpiredPhoto();

  MessageExpiredPhoto.fromJson(Map<String, dynamic> json);
}

class MessageSticker extends MessageContent {
  @override
  String get tdType => 'messageSticker';

  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  MessageSticker(
    this.sticker,
  );

  MessageSticker.fromJson(Map<String, dynamic> json):
    sticker = convertToTdObject(json['sticker']);
}

class MessageVideo extends MessageContent {
  @override
  String get tdType => 'messageVideo';

  Video video;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessageVideo(
    this.video,
    this.caption,
    this.isSecret,
  );

  MessageVideo.fromJson(Map<String, dynamic> json):
    video = convertToTdObject(json['video']),
    caption = convertToTdObject(json['caption']),
    isSecret = convertToTdObject(json['is_secret']);
}

class MessageExpiredVideo extends MessageContent {
  @override
  String get tdType => 'messageExpiredVideo';

  @override
  Map<String, dynamic> get params => {};

  MessageExpiredVideo();

  MessageExpiredVideo.fromJson(Map<String, dynamic> json);
}

class MessageVideoNote extends MessageContent {
  @override
  String get tdType => 'messageVideoNote';

  VideoNote videoNote;
  bool isViewed;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'is_viewed': isViewed,
    'is_secret': isSecret,
  };

  MessageVideoNote(
    this.videoNote,
    this.isViewed,
    this.isSecret,
  );

  MessageVideoNote.fromJson(Map<String, dynamic> json):
    videoNote = convertToTdObject(json['video_note']),
    isViewed = convertToTdObject(json['is_viewed']),
    isSecret = convertToTdObject(json['is_secret']);
}

class MessageVoiceNote extends MessageContent {
  @override
  String get tdType => 'messageVoiceNote';

  VoiceNote voiceNote;
  FormattedText caption;
  bool isListened;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'caption': caption,
    'is_listened': isListened,
  };

  MessageVoiceNote(
    this.voiceNote,
    this.caption,
    this.isListened,
  );

  MessageVoiceNote.fromJson(Map<String, dynamic> json):
    voiceNote = convertToTdObject(json['voice_note']),
    caption = convertToTdObject(json['caption']),
    isListened = convertToTdObject(json['is_listened']);
}

class MessageLocation extends MessageContent {
  @override
  String get tdType => 'messageLocation';

  Location location;
  int livePeriod;
  int expiresIn;
  int heading;
  int proximityAlertRadius;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'live_period': livePeriod,
    'expires_in': expiresIn,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  MessageLocation(
    this.location,
    this.livePeriod,
    this.expiresIn,
    this.heading,
    this.proximityAlertRadius,
  );

  MessageLocation.fromJson(Map<String, dynamic> json):
    location = convertToTdObject(json['location']),
    livePeriod = json['live_period'] is int 
      ? convertToTdObject(json['live_period']) 
      : int.parse(convertToTdObject(json['live_period'])),
    expiresIn = json['expires_in'] is int 
      ? convertToTdObject(json['expires_in']) 
      : int.parse(convertToTdObject(json['expires_in'])),
    heading = json['heading'] is int 
      ? convertToTdObject(json['heading']) 
      : int.parse(convertToTdObject(json['heading'])),
    proximityAlertRadius = json['proximity_alert_radius'] is int 
      ? convertToTdObject(json['proximity_alert_radius']) 
      : int.parse(convertToTdObject(json['proximity_alert_radius']));
}

class MessageVenue extends MessageContent {
  @override
  String get tdType => 'messageVenue';

  Venue venue;

  @override
  Map<String, dynamic> get params => {
    'venue': venue,
  };

  MessageVenue(
    this.venue,
  );

  MessageVenue.fromJson(Map<String, dynamic> json):
    venue = convertToTdObject(json['venue']);
}

class MessageContact extends MessageContent {
  @override
  String get tdType => 'messageContact';

  Contact contact;

  @override
  Map<String, dynamic> get params => {
    'contact': contact,
  };

  MessageContact(
    this.contact,
  );

  MessageContact.fromJson(Map<String, dynamic> json):
    contact = convertToTdObject(json['contact']);
}

class MessageDice extends MessageContent {
  @override
  String get tdType => 'messageDice';

  DiceStickers initialState;
  DiceStickers finalState;
  String emoji;
  int value;
  int successAnimationFrameNumber;

  @override
  Map<String, dynamic> get params => {
    'initial_state': initialState,
    'final_state': finalState,
    'emoji': emoji,
    'value': value,
    'success_animation_frame_number': successAnimationFrameNumber,
  };

  MessageDice(
    this.initialState,
    this.finalState,
    this.emoji,
    this.value,
    this.successAnimationFrameNumber,
  );

  MessageDice.fromJson(Map<String, dynamic> json):
    initialState = convertToTdObject(json['initial_state']),
    finalState = convertToTdObject(json['final_state']),
    emoji = convertToTdObject(json['emoji']),
    value = json['value'] is int 
      ? convertToTdObject(json['value']) 
      : int.parse(convertToTdObject(json['value'])),
    successAnimationFrameNumber = json['success_animation_frame_number'] is int 
      ? convertToTdObject(json['success_animation_frame_number']) 
      : int.parse(convertToTdObject(json['success_animation_frame_number']));
}

class MessageGame extends MessageContent {
  @override
  String get tdType => 'messageGame';

  Game game;

  @override
  Map<String, dynamic> get params => {
    'game': game,
  };

  MessageGame(
    this.game,
  );

  MessageGame.fromJson(Map<String, dynamic> json):
    game = convertToTdObject(json['game']);
}

class MessagePoll extends MessageContent {
  @override
  String get tdType => 'messagePoll';

  Poll poll;

  @override
  Map<String, dynamic> get params => {
    'poll': poll,
  };

  MessagePoll(
    this.poll,
  );

  MessagePoll.fromJson(Map<String, dynamic> json):
    poll = convertToTdObject(json['poll']);
}

class MessageInvoice extends MessageContent {
  @override
  String get tdType => 'messageInvoice';

  String title;
  String description;
  Photo photo;
  String currency;
  int totalAmount;
  String startParameter;
  bool isTest;
  bool needShippingAddress;
  int receiptMessageId;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'description': description,
    'photo': photo,
    'currency': currency,
    'total_amount': totalAmount,
    'start_parameter': startParameter,
    'is_test': isTest,
    'need_shipping_address': needShippingAddress,
    'receipt_message_id': receiptMessageId,
  };

  MessageInvoice(
    this.title,
    this.description,
    this.photo,
    this.currency,
    this.totalAmount,
    this.startParameter,
    this.isTest,
    this.needShippingAddress,
    this.receiptMessageId,
  );

  MessageInvoice.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    photo = convertToTdObject(json['photo']),
    currency = convertToTdObject(json['currency']),
    totalAmount = json['total_amount'] is int 
      ? convertToTdObject(json['total_amount']) 
      : int.parse(convertToTdObject(json['total_amount'])),
    startParameter = convertToTdObject(json['start_parameter']),
    isTest = convertToTdObject(json['is_test']),
    needShippingAddress = convertToTdObject(json['need_shipping_address']),
    receiptMessageId = json['receipt_message_id'] is int 
      ? convertToTdObject(json['receipt_message_id']) 
      : int.parse(convertToTdObject(json['receipt_message_id']));
}

class MessageCall extends MessageContent {
  @override
  String get tdType => 'messageCall';

  bool isVideo;
  CallDiscardReason discardReason;
  int duration;

  @override
  Map<String, dynamic> get params => {
    'is_video': isVideo,
    'discard_reason': discardReason,
    'duration': duration,
  };

  MessageCall(
    this.isVideo,
    this.discardReason,
    this.duration,
  );

  MessageCall.fromJson(Map<String, dynamic> json):
    isVideo = convertToTdObject(json['is_video']),
    discardReason = convertToTdObject(json['discard_reason']),
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration']));
}

class MessageVoiceChatScheduled extends MessageContent {
  @override
  String get tdType => 'messageVoiceChatScheduled';

  int groupCallId;
  int startDate;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'start_date': startDate,
  };

  MessageVoiceChatScheduled(
    this.groupCallId,
    this.startDate,
  );

  MessageVoiceChatScheduled.fromJson(Map<String, dynamic> json):
    groupCallId = json['group_call_id'] is int 
      ? convertToTdObject(json['group_call_id']) 
      : int.parse(convertToTdObject(json['group_call_id'])),
    startDate = json['start_date'] is int 
      ? convertToTdObject(json['start_date']) 
      : int.parse(convertToTdObject(json['start_date']));
}

class MessageVoiceChatStarted extends MessageContent {
  @override
  String get tdType => 'messageVoiceChatStarted';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  MessageVoiceChatStarted(
    this.groupCallId,
  );

  MessageVoiceChatStarted.fromJson(Map<String, dynamic> json):
    groupCallId = json['group_call_id'] is int 
      ? convertToTdObject(json['group_call_id']) 
      : int.parse(convertToTdObject(json['group_call_id']));
}

class MessageVoiceChatEnded extends MessageContent {
  @override
  String get tdType => 'messageVoiceChatEnded';

  int duration;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
  };

  MessageVoiceChatEnded(
    this.duration,
  );

  MessageVoiceChatEnded.fromJson(Map<String, dynamic> json):
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration']));
}

class MessageInviteVoiceChatParticipants extends MessageContent {
  @override
  String get tdType => 'messageInviteVoiceChatParticipants';

  int groupCallId;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'user_ids': userIds,
  };

  MessageInviteVoiceChatParticipants(
    this.groupCallId,
    this.userIds,
  );

  MessageInviteVoiceChatParticipants.fromJson(Map<String, dynamic> json):
    groupCallId = json['group_call_id'] is int 
      ? convertToTdObject(json['group_call_id']) 
      : int.parse(convertToTdObject(json['group_call_id'])),
    userIds = convertToTdObject(castList<int>(json['user_ids']));
}

class MessageBasicGroupChatCreate extends MessageContent {
  @override
  String get tdType => 'messageBasicGroupChatCreate';

  String title;
  List<int> memberUserIds;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'member_user_ids': memberUserIds,
  };

  MessageBasicGroupChatCreate(
    this.title,
    this.memberUserIds,
  );

  MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    memberUserIds = convertToTdObject(castList<int>(json['member_user_ids']));
}

class MessageSupergroupChatCreate extends MessageContent {
  @override
  String get tdType => 'messageSupergroupChatCreate';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  MessageSupergroupChatCreate(
    this.title,
  );

  MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']);
}

class MessageChatChangeTitle extends MessageContent {
  @override
  String get tdType => 'messageChatChangeTitle';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  MessageChatChangeTitle(
    this.title,
  );

  MessageChatChangeTitle.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']);
}

class MessageChatChangePhoto extends MessageContent {
  @override
  String get tdType => 'messageChatChangePhoto';

  ChatPhoto photo;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
  };

  MessageChatChangePhoto(
    this.photo,
  );

  MessageChatChangePhoto.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']);
}

class MessageChatDeletePhoto extends MessageContent {
  @override
  String get tdType => 'messageChatDeletePhoto';

  @override
  Map<String, dynamic> get params => {};

  MessageChatDeletePhoto();

  MessageChatDeletePhoto.fromJson(Map<String, dynamic> json);
}

class MessageChatAddMembers extends MessageContent {
  @override
  String get tdType => 'messageChatAddMembers';

  List<int> memberUserIds;

  @override
  Map<String, dynamic> get params => {
    'member_user_ids': memberUserIds,
  };

  MessageChatAddMembers(
    this.memberUserIds,
  );

  MessageChatAddMembers.fromJson(Map<String, dynamic> json):
    memberUserIds = convertToTdObject(castList<int>(json['member_user_ids']));
}

class MessageChatJoinByLink extends MessageContent {
  @override
  String get tdType => 'messageChatJoinByLink';

  @override
  Map<String, dynamic> get params => {};

  MessageChatJoinByLink();

  MessageChatJoinByLink.fromJson(Map<String, dynamic> json);
}

class MessageChatDeleteMember extends MessageContent {
  @override
  String get tdType => 'messageChatDeleteMember';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  MessageChatDeleteMember(
    this.userId,
  );

  MessageChatDeleteMember.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id']));
}

class MessageChatUpgradeTo extends MessageContent {
  @override
  String get tdType => 'messageChatUpgradeTo';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  MessageChatUpgradeTo(
    this.supergroupId,
  );

  MessageChatUpgradeTo.fromJson(Map<String, dynamic> json):
    supergroupId = json['supergroup_id'] is int 
      ? convertToTdObject(json['supergroup_id']) 
      : int.parse(convertToTdObject(json['supergroup_id']));
}

class MessageChatUpgradeFrom extends MessageContent {
  @override
  String get tdType => 'messageChatUpgradeFrom';

  String title;
  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'basic_group_id': basicGroupId,
  };

  MessageChatUpgradeFrom(
    this.title,
    this.basicGroupId,
  );

  MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    basicGroupId = json['basic_group_id'] is int 
      ? convertToTdObject(json['basic_group_id']) 
      : int.parse(convertToTdObject(json['basic_group_id']));
}

class MessagePinMessage extends MessageContent {
  @override
  String get tdType => 'messagePinMessage';

  int messageId;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
  };

  MessagePinMessage(
    this.messageId,
  );

  MessagePinMessage.fromJson(Map<String, dynamic> json):
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id']));
}

class MessageScreenshotTaken extends MessageContent {
  @override
  String get tdType => 'messageScreenshotTaken';

  @override
  Map<String, dynamic> get params => {};

  MessageScreenshotTaken();

  MessageScreenshotTaken.fromJson(Map<String, dynamic> json);
}

class MessageChatSetTtl extends MessageContent {
  @override
  String get tdType => 'messageChatSetTtl';

  int ttl;

  @override
  Map<String, dynamic> get params => {
    'ttl': ttl,
  };

  MessageChatSetTtl(
    this.ttl,
  );

  MessageChatSetTtl.fromJson(Map<String, dynamic> json):
    ttl = json['ttl'] is int 
      ? convertToTdObject(json['ttl']) 
      : int.parse(convertToTdObject(json['ttl']));
}

class MessageCustomServiceAction extends MessageContent {
  @override
  String get tdType => 'messageCustomServiceAction';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  MessageCustomServiceAction(
    this.text,
  );

  MessageCustomServiceAction.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class MessageGameScore extends MessageContent {
  @override
  String get tdType => 'messageGameScore';

  int gameMessageId;
  int gameId;
  int score;

  @override
  Map<String, dynamic> get params => {
    'game_message_id': gameMessageId,
    'game_id': gameId,
    'score': score,
  };

  MessageGameScore(
    this.gameMessageId,
    this.gameId,
    this.score,
  );

  MessageGameScore.fromJson(Map<String, dynamic> json):
    gameMessageId = json['game_message_id'] is int 
      ? convertToTdObject(json['game_message_id']) 
      : int.parse(convertToTdObject(json['game_message_id'])),
    gameId = json['game_id'] is int 
      ? convertToTdObject(json['game_id']) 
      : int.parse(convertToTdObject(json['game_id'])),
    score = json['score'] is int 
      ? convertToTdObject(json['score']) 
      : int.parse(convertToTdObject(json['score']));
}

class MessagePaymentSuccessful extends MessageContent {
  @override
  String get tdType => 'messagePaymentSuccessful';

  int invoiceChatId;
  int invoiceMessageId;
  String currency;
  int totalAmount;

  @override
  Map<String, dynamic> get params => {
    'invoice_chat_id': invoiceChatId,
    'invoice_message_id': invoiceMessageId,
    'currency': currency,
    'total_amount': totalAmount,
  };

  MessagePaymentSuccessful(
    this.invoiceChatId,
    this.invoiceMessageId,
    this.currency,
    this.totalAmount,
  );

  MessagePaymentSuccessful.fromJson(Map<String, dynamic> json):
    invoiceChatId = json['invoice_chat_id'] is int 
      ? convertToTdObject(json['invoice_chat_id']) 
      : int.parse(convertToTdObject(json['invoice_chat_id'])),
    invoiceMessageId = json['invoice_message_id'] is int 
      ? convertToTdObject(json['invoice_message_id']) 
      : int.parse(convertToTdObject(json['invoice_message_id'])),
    currency = convertToTdObject(json['currency']),
    totalAmount = json['total_amount'] is int 
      ? convertToTdObject(json['total_amount']) 
      : int.parse(convertToTdObject(json['total_amount']));
}

class MessagePaymentSuccessfulBot extends MessageContent {
  @override
  String get tdType => 'messagePaymentSuccessfulBot';

  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;
  String telegramPaymentChargeId;
  String providerPaymentChargeId;

  @override
  Map<String, dynamic> get params => {
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo,
    'telegram_payment_charge_id': telegramPaymentChargeId,
    'provider_payment_charge_id': providerPaymentChargeId,
  };

  MessagePaymentSuccessfulBot(
    this.currency,
    this.totalAmount,
    this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    this.telegramPaymentChargeId,
    this.providerPaymentChargeId,
  );

  MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json):
    currency = convertToTdObject(json['currency']),
    totalAmount = json['total_amount'] is int 
      ? convertToTdObject(json['total_amount']) 
      : int.parse(convertToTdObject(json['total_amount'])),
    invoicePayload = convertToTdObject(json['invoice_payload']),
    shippingOptionId = convertToTdObject(json['shipping_option_id']),
    orderInfo = convertToTdObject(json['order_info']),
    telegramPaymentChargeId = convertToTdObject(json['telegram_payment_charge_id']),
    providerPaymentChargeId = convertToTdObject(json['provider_payment_charge_id']);
}

class MessageContactRegistered extends MessageContent {
  @override
  String get tdType => 'messageContactRegistered';

  @override
  Map<String, dynamic> get params => {};

  MessageContactRegistered();

  MessageContactRegistered.fromJson(Map<String, dynamic> json);
}

class MessageWebsiteConnected extends MessageContent {
  @override
  String get tdType => 'messageWebsiteConnected';

  String domainName;

  @override
  Map<String, dynamic> get params => {
    'domain_name': domainName,
  };

  MessageWebsiteConnected(
    this.domainName,
  );

  MessageWebsiteConnected.fromJson(Map<String, dynamic> json):
    domainName = convertToTdObject(json['domain_name']);
}

class MessagePassportDataSent extends MessageContent {
  @override
  String get tdType => 'messagePassportDataSent';

  List<PassportElementType> types;

  @override
  Map<String, dynamic> get params => {
    'types': types,
  };

  MessagePassportDataSent(
    this.types,
  );

  MessagePassportDataSent.fromJson(Map<String, dynamic> json):
    types = convertToTdObject(castList<PassportElementType>(json['types']));
}

class MessagePassportDataReceived extends MessageContent {
  @override
  String get tdType => 'messagePassportDataReceived';

  List<EncryptedPassportElement> elements;
  EncryptedCredentials credentials;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
    'credentials': credentials,
  };

  MessagePassportDataReceived(
    this.elements,
    this.credentials,
  );

  MessagePassportDataReceived.fromJson(Map<String, dynamic> json):
    elements = convertToTdObject(castList<EncryptedPassportElement>(json['elements'])),
    credentials = convertToTdObject(json['credentials']);
}

class MessageProximityAlertTriggered extends MessageContent {
  @override
  String get tdType => 'messageProximityAlertTriggered';

  MessageSender traveler;
  MessageSender watcher;
  int distance;

  @override
  Map<String, dynamic> get params => {
    'traveler': traveler,
    'watcher': watcher,
    'distance': distance,
  };

  MessageProximityAlertTriggered(
    this.traveler,
    this.watcher,
    this.distance,
  );

  MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json):
    traveler = convertToTdObject(json['traveler']),
    watcher = convertToTdObject(json['watcher']),
    distance = json['distance'] is int 
      ? convertToTdObject(json['distance']) 
      : int.parse(convertToTdObject(json['distance']));
}

class MessageUnsupported extends MessageContent {
  @override
  String get tdType => 'messageUnsupported';

  @override
  Map<String, dynamic> get params => {};

  MessageUnsupported();

  MessageUnsupported.fromJson(Map<String, dynamic> json);
}

abstract class TextEntityType extends TdObject {}

class TextEntityTypeMention extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeMention';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeMention();

  TextEntityTypeMention.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeHashtag extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeHashtag';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeHashtag();

  TextEntityTypeHashtag.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeCashtag extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeCashtag';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeCashtag();

  TextEntityTypeCashtag.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeBotCommand extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeBotCommand';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeBotCommand();

  TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeUrl extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeUrl';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeUrl();

  TextEntityTypeUrl.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeEmailAddress extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeEmailAddress';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeEmailAddress();

  TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json);
}

class TextEntityTypePhoneNumber extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypePhoneNumber();

  TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeBankCardNumber extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeBankCardNumber';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeBankCardNumber();

  TextEntityTypeBankCardNumber.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeBold extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeBold';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeBold();

  TextEntityTypeBold.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeItalic extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeItalic';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeItalic();

  TextEntityTypeItalic.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeUnderline extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeUnderline';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeUnderline();

  TextEntityTypeUnderline.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeStrikethrough extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeStrikethrough';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeStrikethrough();

  TextEntityTypeStrikethrough.fromJson(Map<String, dynamic> json);
}

class TextEntityTypeCode extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeCode';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeCode();

  TextEntityTypeCode.fromJson(Map<String, dynamic> json);
}

class TextEntityTypePre extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePre';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypePre();

  TextEntityTypePre.fromJson(Map<String, dynamic> json);
}

class TextEntityTypePreCode extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePreCode';

  String language;

  @override
  Map<String, dynamic> get params => {
    'language': language,
  };

  TextEntityTypePreCode(
    this.language,
  );

  TextEntityTypePreCode.fromJson(Map<String, dynamic> json):
    language = convertToTdObject(json['language']);
}

class TextEntityTypeTextUrl extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeTextUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  TextEntityTypeTextUrl(
    this.url,
  );

  TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']);
}

class TextEntityTypeMentionName extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeMentionName';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  TextEntityTypeMentionName(
    this.userId,
  );

  TextEntityTypeMentionName.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id']));
}

class InputThumbnail extends TdObject {
  @override
  String get tdType => 'inputThumbnail';

  InputFile thumbnail;
  int width;
  int height;

  @override
  Map<String, dynamic> get params => {
    'thumbnail': thumbnail,
    'width': width,
    'height': height,
  };

  InputThumbnail(
    this.thumbnail,
    this.width,
    this.height,
  );

  InputThumbnail.fromJson(Map<String, dynamic> json):
    thumbnail = convertToTdObject(json['thumbnail']),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height']));
}

abstract class MessageSchedulingState extends TdObject {}

class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  @override
  String get tdType => 'messageSchedulingStateSendAtDate';

  int sendDate;

  @override
  Map<String, dynamic> get params => {
    'send_date': sendDate,
  };

  MessageSchedulingStateSendAtDate(
    this.sendDate,
  );

  MessageSchedulingStateSendAtDate.fromJson(Map<String, dynamic> json):
    sendDate = json['send_date'] is int 
      ? convertToTdObject(json['send_date']) 
      : int.parse(convertToTdObject(json['send_date']));
}

class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  @override
  String get tdType => 'messageSchedulingStateSendWhenOnline';

  @override
  Map<String, dynamic> get params => {};

  MessageSchedulingStateSendWhenOnline();

  MessageSchedulingStateSendWhenOnline.fromJson(Map<String, dynamic> json);
}

class MessageSendOptions extends TdObject {
  @override
  String get tdType => 'messageSendOptions';

  bool disableNotification;
  bool fromBackground;
  MessageSchedulingState schedulingState;

  @override
  Map<String, dynamic> get params => {
    'disable_notification': disableNotification,
    'from_background': fromBackground,
    'scheduling_state': schedulingState,
  };

  MessageSendOptions(
    this.disableNotification,
    this.fromBackground,
    this.schedulingState,
  );

  MessageSendOptions.fromJson(Map<String, dynamic> json):
    disableNotification = convertToTdObject(json['disable_notification']),
    fromBackground = convertToTdObject(json['from_background']),
    schedulingState = convertToTdObject(json['scheduling_state']);
}

class MessageCopyOptions extends TdObject {
  @override
  String get tdType => 'messageCopyOptions';

  bool sendCopy;
  bool replaceCaption;
  FormattedText newCaption;

  @override
  Map<String, dynamic> get params => {
    'send_copy': sendCopy,
    'replace_caption': replaceCaption,
    'new_caption': newCaption,
  };

  MessageCopyOptions(
    this.sendCopy,
    this.replaceCaption,
    this.newCaption,
  );

  MessageCopyOptions.fromJson(Map<String, dynamic> json):
    sendCopy = convertToTdObject(json['send_copy']),
    replaceCaption = convertToTdObject(json['replace_caption']),
    newCaption = convertToTdObject(json['new_caption']);
}

abstract class InputMessageContent extends TdObject {}

class InputMessageText extends InputMessageContent {
  @override
  String get tdType => 'inputMessageText';

  FormattedText text;
  bool disableWebPagePreview;
  bool clearDraft;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'disable_web_page_preview': disableWebPagePreview,
    'clear_draft': clearDraft,
  };

  InputMessageText(
    this.text,
    this.disableWebPagePreview,
    this.clearDraft,
  );

  InputMessageText.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    disableWebPagePreview = convertToTdObject(json['disable_web_page_preview']),
    clearDraft = convertToTdObject(json['clear_draft']);
}

class InputMessageAnimation extends InputMessageContent {
  @override
  String get tdType => 'inputMessageAnimation';

  InputFile animation;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int duration;
  int width;
  int height;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'duration': duration,
    'width': width,
    'height': height,
    'caption': caption,
  };

  InputMessageAnimation(
    this.animation,
    this.thumbnail,
    this.addedStickerFileIds,
    this.duration,
    this.width,
    this.height,
    this.caption,
  );

  InputMessageAnimation.fromJson(Map<String, dynamic> json):
    animation = convertToTdObject(json['animation']),
    thumbnail = convertToTdObject(json['thumbnail']),
    addedStickerFileIds = convertToTdObject(castList<int>(json['added_sticker_file_ids'])),
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    caption = convertToTdObject(json['caption']);
}

class InputMessageAudio extends InputMessageContent {
  @override
  String get tdType => 'inputMessageAudio';

  InputFile audio;
  InputThumbnail albumCoverThumbnail;
  int duration;
  String title;
  String performer;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'album_cover_thumbnail': albumCoverThumbnail,
    'duration': duration,
    'title': title,
    'performer': performer,
    'caption': caption,
  };

  InputMessageAudio(
    this.audio,
    this.albumCoverThumbnail,
    this.duration,
    this.title,
    this.performer,
    this.caption,
  );

  InputMessageAudio.fromJson(Map<String, dynamic> json):
    audio = convertToTdObject(json['audio']),
    albumCoverThumbnail = convertToTdObject(json['album_cover_thumbnail']),
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    title = convertToTdObject(json['title']),
    performer = convertToTdObject(json['performer']),
    caption = convertToTdObject(json['caption']);
}

class InputMessageDocument extends InputMessageContent {
  @override
  String get tdType => 'inputMessageDocument';

  InputFile document;
  InputThumbnail thumbnail;
  bool disableContentTypeDetection;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'thumbnail': thumbnail,
    'disable_content_type_detection': disableContentTypeDetection,
    'caption': caption,
  };

  InputMessageDocument(
    this.document,
    this.thumbnail,
    this.disableContentTypeDetection,
    this.caption,
  );

  InputMessageDocument.fromJson(Map<String, dynamic> json):
    document = convertToTdObject(json['document']),
    thumbnail = convertToTdObject(json['thumbnail']),
    disableContentTypeDetection = convertToTdObject(json['disable_content_type_detection']),
    caption = convertToTdObject(json['caption']);
}

class InputMessagePhoto extends InputMessageContent {
  @override
  String get tdType => 'inputMessagePhoto';

  InputFile photo;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int width;
  int height;
  FormattedText caption;
  int ttl;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'width': width,
    'height': height,
    'caption': caption,
    'ttl': ttl,
  };

  InputMessagePhoto(
    this.photo,
    this.thumbnail,
    this.addedStickerFileIds,
    this.width,
    this.height,
    this.caption,
    this.ttl,
  );

  InputMessagePhoto.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']),
    thumbnail = convertToTdObject(json['thumbnail']),
    addedStickerFileIds = convertToTdObject(castList<int>(json['added_sticker_file_ids'])),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    caption = convertToTdObject(json['caption']),
    ttl = json['ttl'] is int 
      ? convertToTdObject(json['ttl']) 
      : int.parse(convertToTdObject(json['ttl']));
}

class InputMessageSticker extends InputMessageContent {
  @override
  String get tdType => 'inputMessageSticker';

  InputFile sticker;
  InputThumbnail thumbnail;
  int width;
  int height;
  String emoji;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'thumbnail': thumbnail,
    'width': width,
    'height': height,
    'emoji': emoji,
  };

  InputMessageSticker(
    this.sticker,
    this.thumbnail,
    this.width,
    this.height,
    this.emoji,
  );

  InputMessageSticker.fromJson(Map<String, dynamic> json):
    sticker = convertToTdObject(json['sticker']),
    thumbnail = convertToTdObject(json['thumbnail']),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    emoji = convertToTdObject(json['emoji']);
}

class InputMessageVideo extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVideo';

  InputFile video;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int duration;
  int width;
  int height;
  bool supportsStreaming;
  FormattedText caption;
  int ttl;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'duration': duration,
    'width': width,
    'height': height,
    'supports_streaming': supportsStreaming,
    'caption': caption,
    'ttl': ttl,
  };

  InputMessageVideo(
    this.video,
    this.thumbnail,
    this.addedStickerFileIds,
    this.duration,
    this.width,
    this.height,
    this.supportsStreaming,
    this.caption,
    this.ttl,
  );

  InputMessageVideo.fromJson(Map<String, dynamic> json):
    video = convertToTdObject(json['video']),
    thumbnail = convertToTdObject(json['thumbnail']),
    addedStickerFileIds = convertToTdObject(castList<int>(json['added_sticker_file_ids'])),
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    width = json['width'] is int 
      ? convertToTdObject(json['width']) 
      : int.parse(convertToTdObject(json['width'])),
    height = json['height'] is int 
      ? convertToTdObject(json['height']) 
      : int.parse(convertToTdObject(json['height'])),
    supportsStreaming = convertToTdObject(json['supports_streaming']),
    caption = convertToTdObject(json['caption']),
    ttl = json['ttl'] is int 
      ? convertToTdObject(json['ttl']) 
      : int.parse(convertToTdObject(json['ttl']));
}

class InputMessageVideoNote extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVideoNote';

  InputFile videoNote;
  InputThumbnail thumbnail;
  int duration;
  int length;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'thumbnail': thumbnail,
    'duration': duration,
    'length': length,
  };

  InputMessageVideoNote(
    this.videoNote,
    this.thumbnail,
    this.duration,
    this.length,
  );

  InputMessageVideoNote.fromJson(Map<String, dynamic> json):
    videoNote = convertToTdObject(json['video_note']),
    thumbnail = convertToTdObject(json['thumbnail']),
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    length = json['length'] is int 
      ? convertToTdObject(json['length']) 
      : int.parse(convertToTdObject(json['length']));
}

class InputMessageVoiceNote extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVoiceNote';

  InputFile voiceNote;
  int duration;
  String waveform;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'duration': duration,
    'waveform': waveform,
    'caption': caption,
  };

  InputMessageVoiceNote(
    this.voiceNote,
    this.duration,
    this.waveform,
    this.caption,
  );

  InputMessageVoiceNote.fromJson(Map<String, dynamic> json):
    voiceNote = convertToTdObject(json['voice_note']),
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration'])),
    waveform = convertToTdObject(json['waveform']),
    caption = convertToTdObject(json['caption']);
}

class InputMessageLocation extends InputMessageContent {
  @override
  String get tdType => 'inputMessageLocation';

  Location location;
  int livePeriod;
  int heading;
  int proximityAlertRadius;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'live_period': livePeriod,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  InputMessageLocation(
    this.location,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
  );

  InputMessageLocation.fromJson(Map<String, dynamic> json):
    location = convertToTdObject(json['location']),
    livePeriod = json['live_period'] is int 
      ? convertToTdObject(json['live_period']) 
      : int.parse(convertToTdObject(json['live_period'])),
    heading = json['heading'] is int 
      ? convertToTdObject(json['heading']) 
      : int.parse(convertToTdObject(json['heading'])),
    proximityAlertRadius = json['proximity_alert_radius'] is int 
      ? convertToTdObject(json['proximity_alert_radius']) 
      : int.parse(convertToTdObject(json['proximity_alert_radius']));
}

class InputMessageVenue extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVenue';

  Venue venue;

  @override
  Map<String, dynamic> get params => {
    'venue': venue,
  };

  InputMessageVenue(
    this.venue,
  );

  InputMessageVenue.fromJson(Map<String, dynamic> json):
    venue = convertToTdObject(json['venue']);
}

class InputMessageContact extends InputMessageContent {
  @override
  String get tdType => 'inputMessageContact';

  Contact contact;

  @override
  Map<String, dynamic> get params => {
    'contact': contact,
  };

  InputMessageContact(
    this.contact,
  );

  InputMessageContact.fromJson(Map<String, dynamic> json):
    contact = convertToTdObject(json['contact']);
}

class InputMessageDice extends InputMessageContent {
  @override
  String get tdType => 'inputMessageDice';

  String emoji;
  bool clearDraft;

  @override
  Map<String, dynamic> get params => {
    'emoji': emoji,
    'clear_draft': clearDraft,
  };

  InputMessageDice(
    this.emoji,
    this.clearDraft,
  );

  InputMessageDice.fromJson(Map<String, dynamic> json):
    emoji = convertToTdObject(json['emoji']),
    clearDraft = convertToTdObject(json['clear_draft']);
}

class InputMessageGame extends InputMessageContent {
  @override
  String get tdType => 'inputMessageGame';

  int botUserId;
  String gameShortName;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'game_short_name': gameShortName,
  };

  InputMessageGame(
    this.botUserId,
    this.gameShortName,
  );

  InputMessageGame.fromJson(Map<String, dynamic> json):
    botUserId = json['bot_user_id'] is int 
      ? convertToTdObject(json['bot_user_id']) 
      : int.parse(convertToTdObject(json['bot_user_id'])),
    gameShortName = convertToTdObject(json['game_short_name']);
}

class InputMessageInvoice extends InputMessageContent {
  @override
  String get tdType => 'inputMessageInvoice';

  Invoice invoice;
  String title;
  String description;
  String photoUrl;
  int photoSize;
  int photoWidth;
  int photoHeight;
  String payload;
  String providerToken;
  String providerData;
  String startParameter;

  @override
  Map<String, dynamic> get params => {
    'invoice': invoice,
    'title': title,
    'description': description,
    'photo_url': photoUrl,
    'photo_size': photoSize,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'payload': payload,
    'provider_token': providerToken,
    'provider_data': providerData,
    'start_parameter': startParameter,
  };

  InputMessageInvoice(
    this.invoice,
    this.title,
    this.description,
    this.photoUrl,
    this.photoSize,
    this.photoWidth,
    this.photoHeight,
    this.payload,
    this.providerToken,
    this.providerData,
    this.startParameter,
  );

  InputMessageInvoice.fromJson(Map<String, dynamic> json):
    invoice = convertToTdObject(json['invoice']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    photoUrl = convertToTdObject(json['photo_url']),
    photoSize = json['photo_size'] is int 
      ? convertToTdObject(json['photo_size']) 
      : int.parse(convertToTdObject(json['photo_size'])),
    photoWidth = json['photo_width'] is int 
      ? convertToTdObject(json['photo_width']) 
      : int.parse(convertToTdObject(json['photo_width'])),
    photoHeight = json['photo_height'] is int 
      ? convertToTdObject(json['photo_height']) 
      : int.parse(convertToTdObject(json['photo_height'])),
    payload = convertToTdObject(json['payload']),
    providerToken = convertToTdObject(json['provider_token']),
    providerData = convertToTdObject(json['provider_data']),
    startParameter = convertToTdObject(json['start_parameter']);
}

class InputMessagePoll extends InputMessageContent {
  @override
  String get tdType => 'inputMessagePoll';

  String question;
  List<String> options;
  bool isAnonymous;
  PollType type;
  int openPeriod;
  int closeDate;
  bool isClosed;

  @override
  Map<String, dynamic> get params => {
    'question': question,
    'options': options,
    'is_anonymous': isAnonymous,
    'type': type,
    'open_period': openPeriod,
    'close_date': closeDate,
    'is_closed': isClosed,
  };

  InputMessagePoll(
    this.question,
    this.options,
    this.isAnonymous,
    this.type,
    this.openPeriod,
    this.closeDate,
    this.isClosed,
  );

  InputMessagePoll.fromJson(Map<String, dynamic> json):
    question = convertToTdObject(json['question']),
    options = convertToTdObject(castList<String>(json['options'])),
    isAnonymous = convertToTdObject(json['is_anonymous']),
    type = convertToTdObject(json['type']),
    openPeriod = json['open_period'] is int 
      ? convertToTdObject(json['open_period']) 
      : int.parse(convertToTdObject(json['open_period'])),
    closeDate = json['close_date'] is int 
      ? convertToTdObject(json['close_date']) 
      : int.parse(convertToTdObject(json['close_date'])),
    isClosed = convertToTdObject(json['is_closed']);
}

class InputMessageForwarded extends InputMessageContent {
  @override
  String get tdType => 'inputMessageForwarded';

  int fromChatId;
  int messageId;
  bool inGameShare;
  MessageCopyOptions copyOptions;

  @override
  Map<String, dynamic> get params => {
    'from_chat_id': fromChatId,
    'message_id': messageId,
    'in_game_share': inGameShare,
    'copy_options': copyOptions,
  };

  InputMessageForwarded(
    this.fromChatId,
    this.messageId,
    this.inGameShare,
    this.copyOptions,
  );

  InputMessageForwarded.fromJson(Map<String, dynamic> json):
    fromChatId = json['from_chat_id'] is int 
      ? convertToTdObject(json['from_chat_id']) 
      : int.parse(convertToTdObject(json['from_chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    inGameShare = convertToTdObject(json['in_game_share']),
    copyOptions = convertToTdObject(json['copy_options']);
}

abstract class SearchMessagesFilter extends TdObject {}

class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterEmpty';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterEmpty();

  SearchMessagesFilterEmpty.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterAnimation';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterAnimation();

  SearchMessagesFilterAnimation.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterAudio extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterAudio';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterAudio();

  SearchMessagesFilterAudio.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterDocument extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterDocument';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterDocument();

  SearchMessagesFilterDocument.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterPhoto';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterPhoto();

  SearchMessagesFilterPhoto.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterVideo extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVideo';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVideo();

  SearchMessagesFilterVideo.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVoiceNote();

  SearchMessagesFilterVoiceNote.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterPhotoAndVideo';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterPhotoAndVideo();

  SearchMessagesFilterPhotoAndVideo.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterUrl extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterUrl';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterUrl();

  SearchMessagesFilterUrl.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterChatPhoto';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterChatPhoto();

  SearchMessagesFilterChatPhoto.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterCall extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterCall';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterCall();

  SearchMessagesFilterCall.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterMissedCall extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterMissedCall';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterMissedCall();

  SearchMessagesFilterMissedCall.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVideoNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVideoNote();

  SearchMessagesFilterVideoNote.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVoiceAndVideoNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVoiceAndVideoNote();

  SearchMessagesFilterVoiceAndVideoNote.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterMention extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterMention';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterMention();

  SearchMessagesFilterMention.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterUnreadMention';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterUnreadMention();

  SearchMessagesFilterUnreadMention.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterFailedToSend';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterFailedToSend();

  SearchMessagesFilterFailedToSend.fromJson(Map<String, dynamic> json);
}

class SearchMessagesFilterPinned extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterPinned';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterPinned();

  SearchMessagesFilterPinned.fromJson(Map<String, dynamic> json);
}

abstract class ChatAction extends TdObject {}

class ChatActionTyping extends ChatAction {
  @override
  String get tdType => 'chatActionTyping';

  @override
  Map<String, dynamic> get params => {};

  ChatActionTyping();

  ChatActionTyping.fromJson(Map<String, dynamic> json);
}

class ChatActionRecordingVideo extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVideo';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVideo();

  ChatActionRecordingVideo.fromJson(Map<String, dynamic> json);
}

class ChatActionUploadingVideo extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVideo';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVideo(
    this.progress,
  );

  ChatActionUploadingVideo.fromJson(Map<String, dynamic> json):
    progress = json['progress'] is int 
      ? convertToTdObject(json['progress']) 
      : int.parse(convertToTdObject(json['progress']));
}

class ChatActionRecordingVoiceNote extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVoiceNote();

  ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json);
}

class ChatActionUploadingVoiceNote extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVoiceNote';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVoiceNote(
    this.progress,
  );

  ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json):
    progress = json['progress'] is int 
      ? convertToTdObject(json['progress']) 
      : int.parse(convertToTdObject(json['progress']));
}

class ChatActionUploadingPhoto extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingPhoto';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingPhoto(
    this.progress,
  );

  ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json):
    progress = json['progress'] is int 
      ? convertToTdObject(json['progress']) 
      : int.parse(convertToTdObject(json['progress']));
}

class ChatActionUploadingDocument extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingDocument';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingDocument(
    this.progress,
  );

  ChatActionUploadingDocument.fromJson(Map<String, dynamic> json):
    progress = json['progress'] is int 
      ? convertToTdObject(json['progress']) 
      : int.parse(convertToTdObject(json['progress']));
}

class ChatActionChoosingLocation extends ChatAction {
  @override
  String get tdType => 'chatActionChoosingLocation';

  @override
  Map<String, dynamic> get params => {};

  ChatActionChoosingLocation();

  ChatActionChoosingLocation.fromJson(Map<String, dynamic> json);
}

class ChatActionChoosingContact extends ChatAction {
  @override
  String get tdType => 'chatActionChoosingContact';

  @override
  Map<String, dynamic> get params => {};

  ChatActionChoosingContact();

  ChatActionChoosingContact.fromJson(Map<String, dynamic> json);
}

class ChatActionStartPlayingGame extends ChatAction {
  @override
  String get tdType => 'chatActionStartPlayingGame';

  @override
  Map<String, dynamic> get params => {};

  ChatActionStartPlayingGame();

  ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json);
}

class ChatActionRecordingVideoNote extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVideoNote';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVideoNote();

  ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json);
}

class ChatActionUploadingVideoNote extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVideoNote';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVideoNote(
    this.progress,
  );

  ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json):
    progress = json['progress'] is int 
      ? convertToTdObject(json['progress']) 
      : int.parse(convertToTdObject(json['progress']));
}

class ChatActionCancel extends ChatAction {
  @override
  String get tdType => 'chatActionCancel';

  @override
  Map<String, dynamic> get params => {};

  ChatActionCancel();

  ChatActionCancel.fromJson(Map<String, dynamic> json);
}

abstract class UserStatus extends TdObject {}

class UserStatusEmpty extends UserStatus {
  @override
  String get tdType => 'userStatusEmpty';

  @override
  Map<String, dynamic> get params => {};

  UserStatusEmpty();

  UserStatusEmpty.fromJson(Map<String, dynamic> json);
}

class UserStatusOnline extends UserStatus {
  @override
  String get tdType => 'userStatusOnline';

  int expires;

  @override
  Map<String, dynamic> get params => {
    'expires': expires,
  };

  UserStatusOnline(
    this.expires,
  );

  UserStatusOnline.fromJson(Map<String, dynamic> json):
    expires = json['expires'] is int 
      ? convertToTdObject(json['expires']) 
      : int.parse(convertToTdObject(json['expires']));
}

class UserStatusOffline extends UserStatus {
  @override
  String get tdType => 'userStatusOffline';

  int wasOnline;

  @override
  Map<String, dynamic> get params => {
    'was_online': wasOnline,
  };

  UserStatusOffline(
    this.wasOnline,
  );

  UserStatusOffline.fromJson(Map<String, dynamic> json):
    wasOnline = json['was_online'] is int 
      ? convertToTdObject(json['was_online']) 
      : int.parse(convertToTdObject(json['was_online']));
}

class UserStatusRecently extends UserStatus {
  @override
  String get tdType => 'userStatusRecently';

  @override
  Map<String, dynamic> get params => {};

  UserStatusRecently();

  UserStatusRecently.fromJson(Map<String, dynamic> json);
}

class UserStatusLastWeek extends UserStatus {
  @override
  String get tdType => 'userStatusLastWeek';

  @override
  Map<String, dynamic> get params => {};

  UserStatusLastWeek();

  UserStatusLastWeek.fromJson(Map<String, dynamic> json);
}

class UserStatusLastMonth extends UserStatus {
  @override
  String get tdType => 'userStatusLastMonth';

  @override
  Map<String, dynamic> get params => {};

  UserStatusLastMonth();

  UserStatusLastMonth.fromJson(Map<String, dynamic> json);
}

class Stickers extends TdObject {
  @override
  String get tdType => 'stickers';

  List<Sticker> stickers;

  @override
  Map<String, dynamic> get params => {
    'stickers': stickers,
  };

  Stickers(
    this.stickers,
  );

  Stickers.fromJson(Map<String, dynamic> json):
    stickers = convertToTdObject(castList<Sticker>(json['stickers']));
}

class Emojis extends TdObject {
  @override
  String get tdType => 'emojis';

  List<String> emojis;

  @override
  Map<String, dynamic> get params => {
    'emojis': emojis,
  };

  Emojis(
    this.emojis,
  );

  Emojis.fromJson(Map<String, dynamic> json):
    emojis = convertToTdObject(castList<String>(json['emojis']));
}

class StickerSet extends TdObject {
  @override
  String get tdType => 'stickerSet';

  int id;
  String title;
  String name;
  Thumbnail thumbnail;
  List<ClosedVectorPath> thumbnailOutline;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isAnimated;
  bool isMasks;
  bool isViewed;
  List<Sticker> stickers;
  List<Emojis> emojis;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'name': name,
    'thumbnail': thumbnail,
    'thumbnail_outline': thumbnailOutline,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'is_animated': isAnimated,
    'is_masks': isMasks,
    'is_viewed': isViewed,
    'stickers': stickers,
    'emojis': emojis,
  };

  StickerSet(
    this.id,
    this.title,
    this.name,
    this.thumbnail,
    this.thumbnailOutline,
    this.isInstalled,
    this.isArchived,
    this.isOfficial,
    this.isAnimated,
    this.isMasks,
    this.isViewed,
    this.stickers,
    this.emojis,
  );

  StickerSet.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    title = convertToTdObject(json['title']),
    name = convertToTdObject(json['name']),
    thumbnail = convertToTdObject(json['thumbnail']),
    thumbnailOutline = convertToTdObject(castList<ClosedVectorPath>(json['thumbnail_outline'])),
    isInstalled = convertToTdObject(json['is_installed']),
    isArchived = convertToTdObject(json['is_archived']),
    isOfficial = convertToTdObject(json['is_official']),
    isAnimated = convertToTdObject(json['is_animated']),
    isMasks = convertToTdObject(json['is_masks']),
    isViewed = convertToTdObject(json['is_viewed']),
    stickers = convertToTdObject(castList<Sticker>(json['stickers'])),
    emojis = convertToTdObject(castList<Emojis>(json['emojis']));
}

class StickerSetInfo extends TdObject {
  @override
  String get tdType => 'stickerSetInfo';

  int id;
  String title;
  String name;
  Thumbnail thumbnail;
  List<ClosedVectorPath> thumbnailOutline;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isAnimated;
  bool isMasks;
  bool isViewed;
  int size;
  List<Sticker> covers;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'name': name,
    'thumbnail': thumbnail,
    'thumbnail_outline': thumbnailOutline,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'is_animated': isAnimated,
    'is_masks': isMasks,
    'is_viewed': isViewed,
    'size': size,
    'covers': covers,
  };

  StickerSetInfo(
    this.id,
    this.title,
    this.name,
    this.thumbnail,
    this.thumbnailOutline,
    this.isInstalled,
    this.isArchived,
    this.isOfficial,
    this.isAnimated,
    this.isMasks,
    this.isViewed,
    this.size,
    this.covers,
  );

  StickerSetInfo.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    title = convertToTdObject(json['title']),
    name = convertToTdObject(json['name']),
    thumbnail = convertToTdObject(json['thumbnail']),
    thumbnailOutline = convertToTdObject(castList<ClosedVectorPath>(json['thumbnail_outline'])),
    isInstalled = convertToTdObject(json['is_installed']),
    isArchived = convertToTdObject(json['is_archived']),
    isOfficial = convertToTdObject(json['is_official']),
    isAnimated = convertToTdObject(json['is_animated']),
    isMasks = convertToTdObject(json['is_masks']),
    isViewed = convertToTdObject(json['is_viewed']),
    size = json['size'] is int 
      ? convertToTdObject(json['size']) 
      : int.parse(convertToTdObject(json['size'])),
    covers = convertToTdObject(castList<Sticker>(json['covers']));
}

class StickerSets extends TdObject {
  @override
  String get tdType => 'stickerSets';

  int totalCount;
  List<StickerSetInfo> sets;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'sets': sets,
  };

  StickerSets(
    this.totalCount,
    this.sets,
  );

  StickerSets.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    sets = convertToTdObject(castList<StickerSetInfo>(json['sets']));
}

abstract class CallDiscardReason extends TdObject {}

class CallDiscardReasonEmpty extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonEmpty';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonEmpty();

  CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json);
}

class CallDiscardReasonMissed extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonMissed';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonMissed();

  CallDiscardReasonMissed.fromJson(Map<String, dynamic> json);
}

class CallDiscardReasonDeclined extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonDeclined';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonDeclined();

  CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json);
}

class CallDiscardReasonDisconnected extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonDisconnected';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonDisconnected();

  CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json);
}

class CallDiscardReasonHungUp extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonHungUp';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonHungUp();

  CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json);
}

class CallProtocol extends TdObject {
  @override
  String get tdType => 'callProtocol';

  bool udpP2p;
  bool udpReflector;
  int minLayer;
  int maxLayer;
  List<String> libraryVersions;

  @override
  Map<String, dynamic> get params => {
    'udp_p2p': udpP2p,
    'udp_reflector': udpReflector,
    'min_layer': minLayer,
    'max_layer': maxLayer,
    'library_versions': libraryVersions,
  };

  CallProtocol(
    this.udpP2p,
    this.udpReflector,
    this.minLayer,
    this.maxLayer,
    this.libraryVersions,
  );

  CallProtocol.fromJson(Map<String, dynamic> json):
    udpP2p = convertToTdObject(json['udp_p2p']),
    udpReflector = convertToTdObject(json['udp_reflector']),
    minLayer = json['min_layer'] is int 
      ? convertToTdObject(json['min_layer']) 
      : int.parse(convertToTdObject(json['min_layer'])),
    maxLayer = json['max_layer'] is int 
      ? convertToTdObject(json['max_layer']) 
      : int.parse(convertToTdObject(json['max_layer'])),
    libraryVersions = convertToTdObject(castList<String>(json['library_versions']));
}

abstract class CallServerType extends TdObject {}

class CallServerTypeTelegramReflector extends CallServerType {
  @override
  String get tdType => 'callServerTypeTelegramReflector';

  String peerTag;

  @override
  Map<String, dynamic> get params => {
    'peer_tag': peerTag,
  };

  CallServerTypeTelegramReflector(
    this.peerTag,
  );

  CallServerTypeTelegramReflector.fromJson(Map<String, dynamic> json):
    peerTag = convertToTdObject(json['peer_tag']);
}

class CallServerTypeWebrtc extends CallServerType {
  @override
  String get tdType => 'callServerTypeWebrtc';

  String username;
  String password;
  bool supportsTurn;
  bool supportsStun;

  @override
  Map<String, dynamic> get params => {
    'username': username,
    'password': password,
    'supports_turn': supportsTurn,
    'supports_stun': supportsStun,
  };

  CallServerTypeWebrtc(
    this.username,
    this.password,
    this.supportsTurn,
    this.supportsStun,
  );

  CallServerTypeWebrtc.fromJson(Map<String, dynamic> json):
    username = convertToTdObject(json['username']),
    password = convertToTdObject(json['password']),
    supportsTurn = convertToTdObject(json['supports_turn']),
    supportsStun = convertToTdObject(json['supports_stun']);
}

class CallServer extends TdObject {
  @override
  String get tdType => 'callServer';

  int id;
  String ipAddress;
  String ipv6Address;
  int port;
  CallServerType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'ip_address': ipAddress,
    'ipv6_address': ipv6Address,
    'port': port,
    'type': type,
  };

  CallServer(
    this.id,
    this.ipAddress,
    this.ipv6Address,
    this.port,
    this.type,
  );

  CallServer.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    ipAddress = convertToTdObject(json['ip_address']),
    ipv6Address = convertToTdObject(json['ipv6_address']),
    port = json['port'] is int 
      ? convertToTdObject(json['port']) 
      : int.parse(convertToTdObject(json['port'])),
    type = convertToTdObject(json['type']);
}

class CallId extends TdObject {
  @override
  String get tdType => 'callId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  CallId(
    this.id,
  );

  CallId.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id']));
}

class GroupCallId extends TdObject {
  @override
  String get tdType => 'groupCallId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  GroupCallId(
    this.id,
  );

  GroupCallId.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id']));
}

abstract class CallState extends TdObject {}

class CallStatePending extends CallState {
  @override
  String get tdType => 'callStatePending';

  bool isCreated;
  bool isReceived;

  @override
  Map<String, dynamic> get params => {
    'is_created': isCreated,
    'is_received': isReceived,
  };

  CallStatePending(
    this.isCreated,
    this.isReceived,
  );

  CallStatePending.fromJson(Map<String, dynamic> json):
    isCreated = convertToTdObject(json['is_created']),
    isReceived = convertToTdObject(json['is_received']);
}

class CallStateExchangingKeys extends CallState {
  @override
  String get tdType => 'callStateExchangingKeys';

  @override
  Map<String, dynamic> get params => {};

  CallStateExchangingKeys();

  CallStateExchangingKeys.fromJson(Map<String, dynamic> json);
}

class CallStateReady extends CallState {
  @override
  String get tdType => 'callStateReady';

  CallProtocol protocol;
  List<CallServer> servers;
  String config;
  String encryptionKey;
  List<String> emojis;
  bool allowP2p;

  @override
  Map<String, dynamic> get params => {
    'protocol': protocol,
    'servers': servers,
    'config': config,
    'encryption_key': encryptionKey,
    'emojis': emojis,
    'allow_p2p': allowP2p,
  };

  CallStateReady(
    this.protocol,
    this.servers,
    this.config,
    this.encryptionKey,
    this.emojis,
    this.allowP2p,
  );

  CallStateReady.fromJson(Map<String, dynamic> json):
    protocol = convertToTdObject(json['protocol']),
    servers = convertToTdObject(castList<CallServer>(json['servers'])),
    config = convertToTdObject(json['config']),
    encryptionKey = convertToTdObject(json['encryption_key']),
    emojis = convertToTdObject(castList<String>(json['emojis'])),
    allowP2p = convertToTdObject(json['allow_p2p']);
}

class CallStateHangingUp extends CallState {
  @override
  String get tdType => 'callStateHangingUp';

  @override
  Map<String, dynamic> get params => {};

  CallStateHangingUp();

  CallStateHangingUp.fromJson(Map<String, dynamic> json);
}

class CallStateDiscarded extends CallState {
  @override
  String get tdType => 'callStateDiscarded';

  CallDiscardReason reason;
  bool needRating;
  bool needDebugInformation;

  @override
  Map<String, dynamic> get params => {
    'reason': reason,
    'need_rating': needRating,
    'need_debug_information': needDebugInformation,
  };

  CallStateDiscarded(
    this.reason,
    this.needRating,
    this.needDebugInformation,
  );

  CallStateDiscarded.fromJson(Map<String, dynamic> json):
    reason = convertToTdObject(json['reason']),
    needRating = convertToTdObject(json['need_rating']),
    needDebugInformation = convertToTdObject(json['need_debug_information']);
}

class CallStateError extends CallState {
  @override
  String get tdType => 'callStateError';

  Error error;

  @override
  Map<String, dynamic> get params => {
    'error': error,
  };

  CallStateError(
    this.error,
  );

  CallStateError.fromJson(Map<String, dynamic> json):
    error = convertToTdObject(json['error']);
}

class GroupCallRecentSpeaker extends TdObject {
  @override
  String get tdType => 'groupCallRecentSpeaker';

  MessageSender participantId;
  bool isSpeaking;

  @override
  Map<String, dynamic> get params => {
    'participant_id': participantId,
    'is_speaking': isSpeaking,
  };

  GroupCallRecentSpeaker(
    this.participantId,
    this.isSpeaking,
  );

  GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json):
    participantId = convertToTdObject(json['participant_id']),
    isSpeaking = convertToTdObject(json['is_speaking']);
}

class GroupCall extends TdObject {
  @override
  String get tdType => 'groupCall';

  int id;
  String title;
  int scheduledStartDate;
  bool enabledStartNotification;
  bool isActive;
  bool isJoined;
  bool needRejoin;
  bool canBeManaged;
  int participantCount;
  bool loadedAllParticipants;
  List<GroupCallRecentSpeaker> recentSpeakers;
  bool isMyVideoEnabled;
  bool isMyVideoPaused;
  bool canStartVideo;
  bool muteNewParticipants;
  bool canChangeMuteNewParticipants;
  int recordDuration;
  int duration;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'scheduled_start_date': scheduledStartDate,
    'enabled_start_notification': enabledStartNotification,
    'is_active': isActive,
    'is_joined': isJoined,
    'need_rejoin': needRejoin,
    'can_be_managed': canBeManaged,
    'participant_count': participantCount,
    'loaded_all_participants': loadedAllParticipants,
    'recent_speakers': recentSpeakers,
    'is_my_video_enabled': isMyVideoEnabled,
    'is_my_video_paused': isMyVideoPaused,
    'can_start_video': canStartVideo,
    'mute_new_participants': muteNewParticipants,
    'can_change_mute_new_participants': canChangeMuteNewParticipants,
    'record_duration': recordDuration,
    'duration': duration,
  };

  GroupCall(
    this.id,
    this.title,
    this.scheduledStartDate,
    this.enabledStartNotification,
    this.isActive,
    this.isJoined,
    this.needRejoin,
    this.canBeManaged,
    this.participantCount,
    this.loadedAllParticipants,
    this.recentSpeakers,
    this.isMyVideoEnabled,
    this.isMyVideoPaused,
    this.canStartVideo,
    this.muteNewParticipants,
    this.canChangeMuteNewParticipants,
    this.recordDuration,
    this.duration,
  );

  GroupCall.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    title = convertToTdObject(json['title']),
    scheduledStartDate = json['scheduled_start_date'] is int 
      ? convertToTdObject(json['scheduled_start_date']) 
      : int.parse(convertToTdObject(json['scheduled_start_date'])),
    enabledStartNotification = convertToTdObject(json['enabled_start_notification']),
    isActive = convertToTdObject(json['is_active']),
    isJoined = convertToTdObject(json['is_joined']),
    needRejoin = convertToTdObject(json['need_rejoin']),
    canBeManaged = convertToTdObject(json['can_be_managed']),
    participantCount = json['participant_count'] is int 
      ? convertToTdObject(json['participant_count']) 
      : int.parse(convertToTdObject(json['participant_count'])),
    loadedAllParticipants = convertToTdObject(json['loaded_all_participants']),
    recentSpeakers = convertToTdObject(castList<GroupCallRecentSpeaker>(json['recent_speakers'])),
    isMyVideoEnabled = convertToTdObject(json['is_my_video_enabled']),
    isMyVideoPaused = convertToTdObject(json['is_my_video_paused']),
    canStartVideo = convertToTdObject(json['can_start_video']),
    muteNewParticipants = convertToTdObject(json['mute_new_participants']),
    canChangeMuteNewParticipants = convertToTdObject(json['can_change_mute_new_participants']),
    recordDuration = json['record_duration'] is int 
      ? convertToTdObject(json['record_duration']) 
      : int.parse(convertToTdObject(json['record_duration'])),
    duration = json['duration'] is int 
      ? convertToTdObject(json['duration']) 
      : int.parse(convertToTdObject(json['duration']));
}

class GroupCallVideoSourceGroup extends TdObject {
  @override
  String get tdType => 'groupCallVideoSourceGroup';

  String semantics;
  List<int> sourceIds;

  @override
  Map<String, dynamic> get params => {
    'semantics': semantics,
    'source_ids': sourceIds,
  };

  GroupCallVideoSourceGroup(
    this.semantics,
    this.sourceIds,
  );

  GroupCallVideoSourceGroup.fromJson(Map<String, dynamic> json):
    semantics = convertToTdObject(json['semantics']),
    sourceIds = convertToTdObject(castList<int>(json['source_ids']));
}

class GroupCallParticipantVideoInfo extends TdObject {
  @override
  String get tdType => 'groupCallParticipantVideoInfo';

  List<GroupCallVideoSourceGroup> sourceGroups;
  String endpointId;
  bool isPaused;

  @override
  Map<String, dynamic> get params => {
    'source_groups': sourceGroups,
    'endpoint_id': endpointId,
    'is_paused': isPaused,
  };

  GroupCallParticipantVideoInfo(
    this.sourceGroups,
    this.endpointId,
    this.isPaused,
  );

  GroupCallParticipantVideoInfo.fromJson(Map<String, dynamic> json):
    sourceGroups = convertToTdObject(castList<GroupCallVideoSourceGroup>(json['source_groups'])),
    endpointId = convertToTdObject(json['endpoint_id']),
    isPaused = convertToTdObject(json['is_paused']);
}

class GroupCallParticipant extends TdObject {
  @override
  String get tdType => 'groupCallParticipant';

  MessageSender participantId;
  int audioSourceId;
  bool canEnableVideo;
  GroupCallParticipantVideoInfo videoInfo;
  GroupCallParticipantVideoInfo screenSharingVideoInfo;
  String bio;
  bool isCurrentUser;
  bool isSpeaking;
  bool isHandRaised;
  bool canBeMutedForAllUsers;
  bool canBeUnmutedForAllUsers;
  bool canBeMutedForCurrentUser;
  bool canBeUnmutedForCurrentUser;
  bool isMutedForAllUsers;
  bool isMutedForCurrentUser;
  bool canUnmuteSelf;
  int volumeLevel;
  String order;

  @override
  Map<String, dynamic> get params => {
    'participant_id': participantId,
    'audio_source_id': audioSourceId,
    'can_enable_video': canEnableVideo,
    'video_info': videoInfo,
    'screen_sharing_video_info': screenSharingVideoInfo,
    'bio': bio,
    'is_current_user': isCurrentUser,
    'is_speaking': isSpeaking,
    'is_hand_raised': isHandRaised,
    'can_be_muted_for_all_users': canBeMutedForAllUsers,
    'can_be_unmuted_for_all_users': canBeUnmutedForAllUsers,
    'can_be_muted_for_current_user': canBeMutedForCurrentUser,
    'can_be_unmuted_for_current_user': canBeUnmutedForCurrentUser,
    'is_muted_for_all_users': isMutedForAllUsers,
    'is_muted_for_current_user': isMutedForCurrentUser,
    'can_unmute_self': canUnmuteSelf,
    'volume_level': volumeLevel,
    'order': order,
  };

  GroupCallParticipant(
    this.participantId,
    this.audioSourceId,
    this.canEnableVideo,
    this.videoInfo,
    this.screenSharingVideoInfo,
    this.bio,
    this.isCurrentUser,
    this.isSpeaking,
    this.isHandRaised,
    this.canBeMutedForAllUsers,
    this.canBeUnmutedForAllUsers,
    this.canBeMutedForCurrentUser,
    this.canBeUnmutedForCurrentUser,
    this.isMutedForAllUsers,
    this.isMutedForCurrentUser,
    this.canUnmuteSelf,
    this.volumeLevel,
    this.order,
  );

  GroupCallParticipant.fromJson(Map<String, dynamic> json):
    participantId = convertToTdObject(json['participant_id']),
    audioSourceId = json['audio_source_id'] is int 
      ? convertToTdObject(json['audio_source_id']) 
      : int.parse(convertToTdObject(json['audio_source_id'])),
    canEnableVideo = convertToTdObject(json['can_enable_video']),
    videoInfo = convertToTdObject(json['video_info']),
    screenSharingVideoInfo = convertToTdObject(json['screen_sharing_video_info']),
    bio = convertToTdObject(json['bio']),
    isCurrentUser = convertToTdObject(json['is_current_user']),
    isSpeaking = convertToTdObject(json['is_speaking']),
    isHandRaised = convertToTdObject(json['is_hand_raised']),
    canBeMutedForAllUsers = convertToTdObject(json['can_be_muted_for_all_users']),
    canBeUnmutedForAllUsers = convertToTdObject(json['can_be_unmuted_for_all_users']),
    canBeMutedForCurrentUser = convertToTdObject(json['can_be_muted_for_current_user']),
    canBeUnmutedForCurrentUser = convertToTdObject(json['can_be_unmuted_for_current_user']),
    isMutedForAllUsers = convertToTdObject(json['is_muted_for_all_users']),
    isMutedForCurrentUser = convertToTdObject(json['is_muted_for_current_user']),
    canUnmuteSelf = convertToTdObject(json['can_unmute_self']),
    volumeLevel = json['volume_level'] is int 
      ? convertToTdObject(json['volume_level']) 
      : int.parse(convertToTdObject(json['volume_level'])),
    order = convertToTdObject(json['order']);
}

abstract class CallProblem extends TdObject {}

class CallProblemEcho extends CallProblem {
  @override
  String get tdType => 'callProblemEcho';

  @override
  Map<String, dynamic> get params => {};

  CallProblemEcho();

  CallProblemEcho.fromJson(Map<String, dynamic> json);
}

class CallProblemNoise extends CallProblem {
  @override
  String get tdType => 'callProblemNoise';

  @override
  Map<String, dynamic> get params => {};

  CallProblemNoise();

  CallProblemNoise.fromJson(Map<String, dynamic> json);
}

class CallProblemInterruptions extends CallProblem {
  @override
  String get tdType => 'callProblemInterruptions';

  @override
  Map<String, dynamic> get params => {};

  CallProblemInterruptions();

  CallProblemInterruptions.fromJson(Map<String, dynamic> json);
}

class CallProblemDistortedSpeech extends CallProblem {
  @override
  String get tdType => 'callProblemDistortedSpeech';

  @override
  Map<String, dynamic> get params => {};

  CallProblemDistortedSpeech();

  CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json);
}

class CallProblemSilentLocal extends CallProblem {
  @override
  String get tdType => 'callProblemSilentLocal';

  @override
  Map<String, dynamic> get params => {};

  CallProblemSilentLocal();

  CallProblemSilentLocal.fromJson(Map<String, dynamic> json);
}

class CallProblemSilentRemote extends CallProblem {
  @override
  String get tdType => 'callProblemSilentRemote';

  @override
  Map<String, dynamic> get params => {};

  CallProblemSilentRemote();

  CallProblemSilentRemote.fromJson(Map<String, dynamic> json);
}

class CallProblemDropped extends CallProblem {
  @override
  String get tdType => 'callProblemDropped';

  @override
  Map<String, dynamic> get params => {};

  CallProblemDropped();

  CallProblemDropped.fromJson(Map<String, dynamic> json);
}

class CallProblemDistortedVideo extends CallProblem {
  @override
  String get tdType => 'callProblemDistortedVideo';

  @override
  Map<String, dynamic> get params => {};

  CallProblemDistortedVideo();

  CallProblemDistortedVideo.fromJson(Map<String, dynamic> json);
}

class CallProblemPixelatedVideo extends CallProblem {
  @override
  String get tdType => 'callProblemPixelatedVideo';

  @override
  Map<String, dynamic> get params => {};

  CallProblemPixelatedVideo();

  CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json);
}

class Call extends TdObject {
  @override
  String get tdType => 'call';

  int id;
  int userId;
  bool isOutgoing;
  bool isVideo;
  CallState state;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'user_id': userId,
    'is_outgoing': isOutgoing,
    'is_video': isVideo,
    'state': state,
  };

  Call(
    this.id,
    this.userId,
    this.isOutgoing,
    this.isVideo,
    this.state,
  );

  Call.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    isOutgoing = convertToTdObject(json['is_outgoing']),
    isVideo = convertToTdObject(json['is_video']),
    state = convertToTdObject(json['state']);
}

class PhoneNumberAuthenticationSettings extends TdObject {
  @override
  String get tdType => 'phoneNumberAuthenticationSettings';

  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  bool allowSmsRetrieverApi;

  @override
  Map<String, dynamic> get params => {
    'allow_flash_call': allowFlashCall,
    'is_current_phone_number': isCurrentPhoneNumber,
    'allow_sms_retriever_api': allowSmsRetrieverApi,
  };

  PhoneNumberAuthenticationSettings(
    this.allowFlashCall,
    this.isCurrentPhoneNumber,
    this.allowSmsRetrieverApi,
  );

  PhoneNumberAuthenticationSettings.fromJson(Map<String, dynamic> json):
    allowFlashCall = convertToTdObject(json['allow_flash_call']),
    isCurrentPhoneNumber = convertToTdObject(json['is_current_phone_number']),
    allowSmsRetrieverApi = convertToTdObject(json['allow_sms_retriever_api']);
}

class Animations extends TdObject {
  @override
  String get tdType => 'animations';

  List<Animation> animations;

  @override
  Map<String, dynamic> get params => {
    'animations': animations,
  };

  Animations(
    this.animations,
  );

  Animations.fromJson(Map<String, dynamic> json):
    animations = convertToTdObject(castList<Animation>(json['animations']));
}

abstract class DiceStickers extends TdObject {}

class DiceStickersRegular extends DiceStickers {
  @override
  String get tdType => 'diceStickersRegular';

  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  DiceStickersRegular(
    this.sticker,
  );

  DiceStickersRegular.fromJson(Map<String, dynamic> json):
    sticker = convertToTdObject(json['sticker']);
}

class DiceStickersSlotMachine extends DiceStickers {
  @override
  String get tdType => 'diceStickersSlotMachine';

  Sticker background;
  Sticker lever;
  Sticker leftReel;
  Sticker centerReel;
  Sticker rightReel;

  @override
  Map<String, dynamic> get params => {
    'background': background,
    'lever': lever,
    'left_reel': leftReel,
    'center_reel': centerReel,
    'right_reel': rightReel,
  };

  DiceStickersSlotMachine(
    this.background,
    this.lever,
    this.leftReel,
    this.centerReel,
    this.rightReel,
  );

  DiceStickersSlotMachine.fromJson(Map<String, dynamic> json):
    background = convertToTdObject(json['background']),
    lever = convertToTdObject(json['lever']),
    leftReel = convertToTdObject(json['left_reel']),
    centerReel = convertToTdObject(json['center_reel']),
    rightReel = convertToTdObject(json['right_reel']);
}

class ImportedContacts extends TdObject {
  @override
  String get tdType => 'importedContacts';

  List<int> userIds;
  List<int> importerCount;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
    'importer_count': importerCount,
  };

  ImportedContacts(
    this.userIds,
    this.importerCount,
  );

  ImportedContacts.fromJson(Map<String, dynamic> json):
    userIds = convertToTdObject(castList<int>(json['user_ids'])),
    importerCount = convertToTdObject(castList<int>(json['importer_count']));
}

class HttpUrl extends TdObject {
  @override
  String get tdType => 'httpUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  HttpUrl(
    this.url,
  );

  HttpUrl.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']);
}

abstract class InputInlineQueryResult extends TdObject {}

class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultAnimation';

  String id;
  String title;
  String thumbnailUrl;
  String thumbnailMimeType;
  String videoUrl;
  String videoMimeType;
  int videoDuration;
  int videoWidth;
  int videoHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_mime_type': thumbnailMimeType,
    'video_url': videoUrl,
    'video_mime_type': videoMimeType,
    'video_duration': videoDuration,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultAnimation(
    this.id,
    this.title,
    this.thumbnailUrl,
    this.thumbnailMimeType,
    this.videoUrl,
    this.videoMimeType,
    this.videoDuration,
    this.videoWidth,
    this.videoHeight,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultAnimation.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    title = convertToTdObject(json['title']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    thumbnailMimeType = convertToTdObject(json['thumbnail_mime_type']),
    videoUrl = convertToTdObject(json['video_url']),
    videoMimeType = convertToTdObject(json['video_mime_type']),
    videoDuration = json['video_duration'] is int 
      ? convertToTdObject(json['video_duration']) 
      : int.parse(convertToTdObject(json['video_duration'])),
    videoWidth = json['video_width'] is int 
      ? convertToTdObject(json['video_width']) 
      : int.parse(convertToTdObject(json['video_width'])),
    videoHeight = json['video_height'] is int 
      ? convertToTdObject(json['video_height']) 
      : int.parse(convertToTdObject(json['video_height'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultArticle extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultArticle';

  String id;
  String url;
  bool hideUrl;
  String title;
  String description;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'url': url,
    'hide_url': hideUrl,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultArticle(
    this.id,
    this.url,
    this.hideUrl,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultArticle.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    url = convertToTdObject(json['url']),
    hideUrl = convertToTdObject(json['hide_url']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    thumbnailWidth = json['thumbnail_width'] is int 
      ? convertToTdObject(json['thumbnail_width']) 
      : int.parse(convertToTdObject(json['thumbnail_width'])),
    thumbnailHeight = json['thumbnail_height'] is int 
      ? convertToTdObject(json['thumbnail_height']) 
      : int.parse(convertToTdObject(json['thumbnail_height'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultAudio extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultAudio';

  String id;
  String title;
  String performer;
  String audioUrl;
  int audioDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'performer': performer,
    'audio_url': audioUrl,
    'audio_duration': audioDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultAudio(
    this.id,
    this.title,
    this.performer,
    this.audioUrl,
    this.audioDuration,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultAudio.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    title = convertToTdObject(json['title']),
    performer = convertToTdObject(json['performer']),
    audioUrl = convertToTdObject(json['audio_url']),
    audioDuration = json['audio_duration'] is int 
      ? convertToTdObject(json['audio_duration']) 
      : int.parse(convertToTdObject(json['audio_duration'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultContact extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultContact';

  String id;
  Contact contact;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'contact': contact,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultContact(
    this.id,
    this.contact,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultContact.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    contact = convertToTdObject(json['contact']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    thumbnailWidth = json['thumbnail_width'] is int 
      ? convertToTdObject(json['thumbnail_width']) 
      : int.parse(convertToTdObject(json['thumbnail_width'])),
    thumbnailHeight = json['thumbnail_height'] is int 
      ? convertToTdObject(json['thumbnail_height']) 
      : int.parse(convertToTdObject(json['thumbnail_height'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultDocument extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultDocument';

  String id;
  String title;
  String description;
  String documentUrl;
  String mimeType;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'document_url': documentUrl,
    'mime_type': mimeType,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultDocument(
    this.id,
    this.title,
    this.description,
    this.documentUrl,
    this.mimeType,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultDocument.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    documentUrl = convertToTdObject(json['document_url']),
    mimeType = convertToTdObject(json['mime_type']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    thumbnailWidth = json['thumbnail_width'] is int 
      ? convertToTdObject(json['thumbnail_width']) 
      : int.parse(convertToTdObject(json['thumbnail_width'])),
    thumbnailHeight = json['thumbnail_height'] is int 
      ? convertToTdObject(json['thumbnail_height']) 
      : int.parse(convertToTdObject(json['thumbnail_height'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultGame extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultGame';

  String id;
  String gameShortName;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'game_short_name': gameShortName,
    'reply_markup': replyMarkup,
  };

  InputInlineQueryResultGame(
    this.id,
    this.gameShortName,
    this.replyMarkup,
  );

  InputInlineQueryResultGame.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    gameShortName = convertToTdObject(json['game_short_name']),
    replyMarkup = convertToTdObject(json['reply_markup']);
}

class InputInlineQueryResultLocation extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultLocation';

  String id;
  Location location;
  int livePeriod;
  String title;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'location': location,
    'live_period': livePeriod,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultLocation(
    this.id,
    this.location,
    this.livePeriod,
    this.title,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultLocation.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    location = convertToTdObject(json['location']),
    livePeriod = json['live_period'] is int 
      ? convertToTdObject(json['live_period']) 
      : int.parse(convertToTdObject(json['live_period'])),
    title = convertToTdObject(json['title']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    thumbnailWidth = json['thumbnail_width'] is int 
      ? convertToTdObject(json['thumbnail_width']) 
      : int.parse(convertToTdObject(json['thumbnail_width'])),
    thumbnailHeight = json['thumbnail_height'] is int 
      ? convertToTdObject(json['thumbnail_height']) 
      : int.parse(convertToTdObject(json['thumbnail_height'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultPhoto';

  String id;
  String title;
  String description;
  String thumbnailUrl;
  String photoUrl;
  int photoWidth;
  int photoHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'photo_url': photoUrl,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultPhoto(
    this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.photoUrl,
    this.photoWidth,
    this.photoHeight,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultPhoto.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    photoUrl = convertToTdObject(json['photo_url']),
    photoWidth = json['photo_width'] is int 
      ? convertToTdObject(json['photo_width']) 
      : int.parse(convertToTdObject(json['photo_width'])),
    photoHeight = json['photo_height'] is int 
      ? convertToTdObject(json['photo_height']) 
      : int.parse(convertToTdObject(json['photo_height'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultSticker extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultSticker';

  String id;
  String thumbnailUrl;
  String stickerUrl;
  int stickerWidth;
  int stickerHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'thumbnail_url': thumbnailUrl,
    'sticker_url': stickerUrl,
    'sticker_width': stickerWidth,
    'sticker_height': stickerHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultSticker(
    this.id,
    this.thumbnailUrl,
    this.stickerUrl,
    this.stickerWidth,
    this.stickerHeight,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultSticker.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    stickerUrl = convertToTdObject(json['sticker_url']),
    stickerWidth = json['sticker_width'] is int 
      ? convertToTdObject(json['sticker_width']) 
      : int.parse(convertToTdObject(json['sticker_width'])),
    stickerHeight = json['sticker_height'] is int 
      ? convertToTdObject(json['sticker_height']) 
      : int.parse(convertToTdObject(json['sticker_height'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultVenue extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVenue';

  String id;
  Venue venue;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'venue': venue,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVenue(
    this.id,
    this.venue,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultVenue.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    venue = convertToTdObject(json['venue']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    thumbnailWidth = json['thumbnail_width'] is int 
      ? convertToTdObject(json['thumbnail_width']) 
      : int.parse(convertToTdObject(json['thumbnail_width'])),
    thumbnailHeight = json['thumbnail_height'] is int 
      ? convertToTdObject(json['thumbnail_height']) 
      : int.parse(convertToTdObject(json['thumbnail_height'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultVideo extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVideo';

  String id;
  String title;
  String description;
  String thumbnailUrl;
  String videoUrl;
  String mimeType;
  int videoWidth;
  int videoHeight;
  int videoDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'video_url': videoUrl,
    'mime_type': mimeType,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'video_duration': videoDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVideo(
    this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.videoUrl,
    this.mimeType,
    this.videoWidth,
    this.videoHeight,
    this.videoDuration,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultVideo.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    thumbnailUrl = convertToTdObject(json['thumbnail_url']),
    videoUrl = convertToTdObject(json['video_url']),
    mimeType = convertToTdObject(json['mime_type']),
    videoWidth = json['video_width'] is int 
      ? convertToTdObject(json['video_width']) 
      : int.parse(convertToTdObject(json['video_width'])),
    videoHeight = json['video_height'] is int 
      ? convertToTdObject(json['video_height']) 
      : int.parse(convertToTdObject(json['video_height'])),
    videoDuration = json['video_duration'] is int 
      ? convertToTdObject(json['video_duration']) 
      : int.parse(convertToTdObject(json['video_duration'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVoiceNote';

  String id;
  String title;
  String voiceNoteUrl;
  int voiceNoteDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'voice_note_url': voiceNoteUrl,
    'voice_note_duration': voiceNoteDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVoiceNote(
    this.id,
    this.title,
    this.voiceNoteUrl,
    this.voiceNoteDuration,
    this.replyMarkup,
    this.inputMessageContent,
  );

  InputInlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    title = convertToTdObject(json['title']),
    voiceNoteUrl = convertToTdObject(json['voice_note_url']),
    voiceNoteDuration = json['voice_note_duration'] is int 
      ? convertToTdObject(json['voice_note_duration']) 
      : int.parse(convertToTdObject(json['voice_note_duration'])),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

abstract class InlineQueryResult extends TdObject {}

class InlineQueryResultArticle extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultArticle';

  String id;
  String url;
  bool hideUrl;
  String title;
  String description;
  Thumbnail? thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'url': url,
    'hide_url': hideUrl,
    'title': title,
    'description': description,
    'thumbnail': thumbnail,
  };

  InlineQueryResultArticle(
    this.id,
    this.url,
    this.hideUrl,
    this.title,
    this.description,
    this.thumbnail,
  );

  InlineQueryResultArticle.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    url = convertToTdObject(json['url']),
    hideUrl = convertToTdObject(json['hide_url']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']),
    thumbnail = convertToTdObject(json['thumbnail']);
}

class InlineQueryResultContact extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultContact';

  String id;
  Contact contact;
  Thumbnail? thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'contact': contact,
    'thumbnail': thumbnail,
  };

  InlineQueryResultContact(
    this.id,
    this.contact,
    this.thumbnail,
  );

  InlineQueryResultContact.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    contact = convertToTdObject(json['contact']),
    thumbnail = convertToTdObject(json['thumbnail']);
}

class InlineQueryResultLocation extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultLocation';

  String id;
  Location location;
  String title;
  Thumbnail? thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'location': location,
    'title': title,
    'thumbnail': thumbnail,
  };

  InlineQueryResultLocation(
    this.id,
    this.location,
    this.title,
    this.thumbnail,
  );

  InlineQueryResultLocation.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    location = convertToTdObject(json['location']),
    title = convertToTdObject(json['title']),
    thumbnail = convertToTdObject(json['thumbnail']);
}

class InlineQueryResultVenue extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVenue';

  String id;
  Venue venue;
  Thumbnail? thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'venue': venue,
    'thumbnail': thumbnail,
  };

  InlineQueryResultVenue(
    this.id,
    this.venue,
    this.thumbnail,
  );

  InlineQueryResultVenue.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    venue = convertToTdObject(json['venue']),
    thumbnail = convertToTdObject(json['thumbnail']);
}

class InlineQueryResultGame extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultGame';

  String id;
  Game game;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'game': game,
  };

  InlineQueryResultGame(
    this.id,
    this.game,
  );

  InlineQueryResultGame.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    game = convertToTdObject(json['game']);
}

class InlineQueryResultAnimation extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultAnimation';

  String id;
  Animation animation;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'animation': animation,
    'title': title,
  };

  InlineQueryResultAnimation(
    this.id,
    this.animation,
    this.title,
  );

  InlineQueryResultAnimation.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    animation = convertToTdObject(json['animation']),
    title = convertToTdObject(json['title']);
}

class InlineQueryResultAudio extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultAudio';

  String id;
  Audio audio;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'audio': audio,
  };

  InlineQueryResultAudio(
    this.id,
    this.audio,
  );

  InlineQueryResultAudio.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    audio = convertToTdObject(json['audio']);
}

class InlineQueryResultDocument extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultDocument';

  String id;
  Document document;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'document': document,
    'title': title,
    'description': description,
  };

  InlineQueryResultDocument(
    this.id,
    this.document,
    this.title,
    this.description,
  );

  InlineQueryResultDocument.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    document = convertToTdObject(json['document']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']);
}

class InlineQueryResultPhoto extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultPhoto';

  String id;
  Photo photo;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'photo': photo,
    'title': title,
    'description': description,
  };

  InlineQueryResultPhoto(
    this.id,
    this.photo,
    this.title,
    this.description,
  );

  InlineQueryResultPhoto.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    photo = convertToTdObject(json['photo']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']);
}

class InlineQueryResultSticker extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultSticker';

  String id;
  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sticker': sticker,
  };

  InlineQueryResultSticker(
    this.id,
    this.sticker,
  );

  InlineQueryResultSticker.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    sticker = convertToTdObject(json['sticker']);
}

class InlineQueryResultVideo extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVideo';

  String id;
  Video video;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'video': video,
    'title': title,
    'description': description,
  };

  InlineQueryResultVideo(
    this.id,
    this.video,
    this.title,
    this.description,
  );

  InlineQueryResultVideo.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    video = convertToTdObject(json['video']),
    title = convertToTdObject(json['title']),
    description = convertToTdObject(json['description']);
}

class InlineQueryResultVoiceNote extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVoiceNote';

  String id;
  VoiceNote voiceNote;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'voice_note': voiceNote,
    'title': title,
  };

  InlineQueryResultVoiceNote(
    this.id,
    this.voiceNote,
    this.title,
  );

  InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    voiceNote = convertToTdObject(json['voice_note']),
    title = convertToTdObject(json['title']);
}

class InlineQueryResults extends TdObject {
  @override
  String get tdType => 'inlineQueryResults';

  int inlineQueryId;
  String nextOffset;
  List<InlineQueryResult> results;
  String switchPmText;
  String switchPmParameter;

  @override
  Map<String, dynamic> get params => {
    'inline_query_id': inlineQueryId,
    'next_offset': nextOffset,
    'results': results,
    'switch_pm_text': switchPmText,
    'switch_pm_parameter': switchPmParameter,
  };

  InlineQueryResults(
    this.inlineQueryId,
    this.nextOffset,
    this.results,
    this.switchPmText,
    this.switchPmParameter,
  );

  InlineQueryResults.fromJson(Map<String, dynamic> json):
    inlineQueryId = json['inline_query_id'] is int 
      ? convertToTdObject(json['inline_query_id']) 
      : int.parse(convertToTdObject(json['inline_query_id'])),
    nextOffset = convertToTdObject(json['next_offset']),
    results = convertToTdObject(castList<InlineQueryResult>(json['results'])),
    switchPmText = convertToTdObject(json['switch_pm_text']),
    switchPmParameter = convertToTdObject(json['switch_pm_parameter']);
}

abstract class CallbackQueryPayload extends TdObject {}

class CallbackQueryPayloadData extends CallbackQueryPayload {
  @override
  String get tdType => 'callbackQueryPayloadData';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  CallbackQueryPayloadData(
    this.data,
  );

  CallbackQueryPayloadData.fromJson(Map<String, dynamic> json):
    data = convertToTdObject(json['data']);
}

class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  @override
  String get tdType => 'callbackQueryPayloadDataWithPassword';

  String password;
  String data;

  @override
  Map<String, dynamic> get params => {
    'password': password,
    'data': data,
  };

  CallbackQueryPayloadDataWithPassword(
    this.password,
    this.data,
  );

  CallbackQueryPayloadDataWithPassword.fromJson(Map<String, dynamic> json):
    password = convertToTdObject(json['password']),
    data = convertToTdObject(json['data']);
}

class CallbackQueryPayloadGame extends CallbackQueryPayload {
  @override
  String get tdType => 'callbackQueryPayloadGame';

  String gameShortName;

  @override
  Map<String, dynamic> get params => {
    'game_short_name': gameShortName,
  };

  CallbackQueryPayloadGame(
    this.gameShortName,
  );

  CallbackQueryPayloadGame.fromJson(Map<String, dynamic> json):
    gameShortName = convertToTdObject(json['game_short_name']);
}

class CallbackQueryAnswer extends TdObject {
  @override
  String get tdType => 'callbackQueryAnswer';

  String text;
  bool showAlert;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'show_alert': showAlert,
    'url': url,
  };

  CallbackQueryAnswer(
    this.text,
    this.showAlert,
    this.url,
  );

  CallbackQueryAnswer.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    showAlert = convertToTdObject(json['show_alert']),
    url = convertToTdObject(json['url']);
}

class CustomRequestResult extends TdObject {
  @override
  String get tdType => 'customRequestResult';

  String result;

  @override
  Map<String, dynamic> get params => {
    'result': result,
  };

  CustomRequestResult(
    this.result,
  );

  CustomRequestResult.fromJson(Map<String, dynamic> json):
    result = convertToTdObject(json['result']);
}

class GameHighScore extends TdObject {
  @override
  String get tdType => 'gameHighScore';

  int position;
  int userId;
  int score;

  @override
  Map<String, dynamic> get params => {
    'position': position,
    'user_id': userId,
    'score': score,
  };

  GameHighScore(
    this.position,
    this.userId,
    this.score,
  );

  GameHighScore.fromJson(Map<String, dynamic> json):
    position = json['position'] is int 
      ? convertToTdObject(json['position']) 
      : int.parse(convertToTdObject(json['position'])),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    score = json['score'] is int 
      ? convertToTdObject(json['score']) 
      : int.parse(convertToTdObject(json['score']));
}

class GameHighScores extends TdObject {
  @override
  String get tdType => 'gameHighScores';

  List<GameHighScore> scores;

  @override
  Map<String, dynamic> get params => {
    'scores': scores,
  };

  GameHighScores(
    this.scores,
  );

  GameHighScores.fromJson(Map<String, dynamic> json):
    scores = convertToTdObject(castList<GameHighScore>(json['scores']));
}

abstract class ChatEventAction extends TdObject {}

class ChatEventMessageEdited extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageEdited';

  Message oldMessage;
  Message newMessage;

  @override
  Map<String, dynamic> get params => {
    'old_message': oldMessage,
    'new_message': newMessage,
  };

  ChatEventMessageEdited(
    this.oldMessage,
    this.newMessage,
  );

  ChatEventMessageEdited.fromJson(Map<String, dynamic> json):
    oldMessage = convertToTdObject(json['old_message']),
    newMessage = convertToTdObject(json['new_message']);
}

class ChatEventMessageDeleted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageDeleted';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventMessageDeleted(
    this.message,
  );

  ChatEventMessageDeleted.fromJson(Map<String, dynamic> json):
    message = convertToTdObject(json['message']);
}

class ChatEventPollStopped extends ChatEventAction {
  @override
  String get tdType => 'chatEventPollStopped';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventPollStopped(
    this.message,
  );

  ChatEventPollStopped.fromJson(Map<String, dynamic> json):
    message = convertToTdObject(json['message']);
}

class ChatEventMessagePinned extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessagePinned';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventMessagePinned(
    this.message,
  );

  ChatEventMessagePinned.fromJson(Map<String, dynamic> json):
    message = convertToTdObject(json['message']);
}

class ChatEventMessageUnpinned extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageUnpinned';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventMessageUnpinned(
    this.message,
  );

  ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json):
    message = convertToTdObject(json['message']);
}

class ChatEventMemberJoined extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberJoined';

  @override
  Map<String, dynamic> get params => {};

  ChatEventMemberJoined();

  ChatEventMemberJoined.fromJson(Map<String, dynamic> json);
}

class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberJoinedByInviteLink';

  ChatInviteLink inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  ChatEventMemberJoinedByInviteLink(
    this.inviteLink,
  );

  ChatEventMemberJoinedByInviteLink.fromJson(Map<String, dynamic> json):
    inviteLink = convertToTdObject(json['invite_link']);
}

class ChatEventMemberLeft extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberLeft';

  @override
  Map<String, dynamic> get params => {};

  ChatEventMemberLeft();

  ChatEventMemberLeft.fromJson(Map<String, dynamic> json);
}

class ChatEventMemberInvited extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberInvited';

  int userId;
  ChatMemberStatus status;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'status': status,
  };

  ChatEventMemberInvited(
    this.userId,
    this.status,
  );

  ChatEventMemberInvited.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    status = convertToTdObject(json['status']);
}

class ChatEventMemberPromoted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberPromoted';

  int userId;
  ChatMemberStatus oldStatus;
  ChatMemberStatus newStatus;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'old_status': oldStatus,
    'new_status': newStatus,
  };

  ChatEventMemberPromoted(
    this.userId,
    this.oldStatus,
    this.newStatus,
  );

  ChatEventMemberPromoted.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    oldStatus = convertToTdObject(json['old_status']),
    newStatus = convertToTdObject(json['new_status']);
}

class ChatEventMemberRestricted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberRestricted';

  MessageSender memberId;
  ChatMemberStatus oldStatus;
  ChatMemberStatus newStatus;

  @override
  Map<String, dynamic> get params => {
    'member_id': memberId,
    'old_status': oldStatus,
    'new_status': newStatus,
  };

  ChatEventMemberRestricted(
    this.memberId,
    this.oldStatus,
    this.newStatus,
  );

  ChatEventMemberRestricted.fromJson(Map<String, dynamic> json):
    memberId = convertToTdObject(json['member_id']),
    oldStatus = convertToTdObject(json['old_status']),
    newStatus = convertToTdObject(json['new_status']);
}

class ChatEventTitleChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventTitleChanged';

  String oldTitle;
  String newTitle;

  @override
  Map<String, dynamic> get params => {
    'old_title': oldTitle,
    'new_title': newTitle,
  };

  ChatEventTitleChanged(
    this.oldTitle,
    this.newTitle,
  );

  ChatEventTitleChanged.fromJson(Map<String, dynamic> json):
    oldTitle = convertToTdObject(json['old_title']),
    newTitle = convertToTdObject(json['new_title']);
}

class ChatEventPermissionsChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventPermissionsChanged';

  ChatPermissions oldPermissions;
  ChatPermissions newPermissions;

  @override
  Map<String, dynamic> get params => {
    'old_permissions': oldPermissions,
    'new_permissions': newPermissions,
  };

  ChatEventPermissionsChanged(
    this.oldPermissions,
    this.newPermissions,
  );

  ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json):
    oldPermissions = convertToTdObject(json['old_permissions']),
    newPermissions = convertToTdObject(json['new_permissions']);
}

class ChatEventDescriptionChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventDescriptionChanged';

  String oldDescription;
  String newDescription;

  @override
  Map<String, dynamic> get params => {
    'old_description': oldDescription,
    'new_description': newDescription,
  };

  ChatEventDescriptionChanged(
    this.oldDescription,
    this.newDescription,
  );

  ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json):
    oldDescription = convertToTdObject(json['old_description']),
    newDescription = convertToTdObject(json['new_description']);
}

class ChatEventUsernameChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventUsernameChanged';

  String oldUsername;
  String newUsername;

  @override
  Map<String, dynamic> get params => {
    'old_username': oldUsername,
    'new_username': newUsername,
  };

  ChatEventUsernameChanged(
    this.oldUsername,
    this.newUsername,
  );

  ChatEventUsernameChanged.fromJson(Map<String, dynamic> json):
    oldUsername = convertToTdObject(json['old_username']),
    newUsername = convertToTdObject(json['new_username']);
}

class ChatEventPhotoChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventPhotoChanged';

  ChatPhoto? oldPhoto;
  ChatPhoto? newPhoto;

  @override
  Map<String, dynamic> get params => {
    'old_photo': oldPhoto,
    'new_photo': newPhoto,
  };

  ChatEventPhotoChanged(
    this.oldPhoto,
    this.newPhoto,
  );

  ChatEventPhotoChanged.fromJson(Map<String, dynamic> json):
    oldPhoto = convertToTdObject(json['old_photo']),
    newPhoto = convertToTdObject(json['new_photo']);
}

class ChatEventInvitesToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventInvitesToggled';

  bool canInviteUsers;

  @override
  Map<String, dynamic> get params => {
    'can_invite_users': canInviteUsers,
  };

  ChatEventInvitesToggled(
    this.canInviteUsers,
  );

  ChatEventInvitesToggled.fromJson(Map<String, dynamic> json):
    canInviteUsers = convertToTdObject(json['can_invite_users']);
}

class ChatEventLinkedChatChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventLinkedChatChanged';

  int oldLinkedChatId;
  int newLinkedChatId;

  @override
  Map<String, dynamic> get params => {
    'old_linked_chat_id': oldLinkedChatId,
    'new_linked_chat_id': newLinkedChatId,
  };

  ChatEventLinkedChatChanged(
    this.oldLinkedChatId,
    this.newLinkedChatId,
  );

  ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json):
    oldLinkedChatId = json['old_linked_chat_id'] is int 
      ? convertToTdObject(json['old_linked_chat_id']) 
      : int.parse(convertToTdObject(json['old_linked_chat_id'])),
    newLinkedChatId = json['new_linked_chat_id'] is int 
      ? convertToTdObject(json['new_linked_chat_id']) 
      : int.parse(convertToTdObject(json['new_linked_chat_id']));
}

class ChatEventSlowModeDelayChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventSlowModeDelayChanged';

  int oldSlowModeDelay;
  int newSlowModeDelay;

  @override
  Map<String, dynamic> get params => {
    'old_slow_mode_delay': oldSlowModeDelay,
    'new_slow_mode_delay': newSlowModeDelay,
  };

  ChatEventSlowModeDelayChanged(
    this.oldSlowModeDelay,
    this.newSlowModeDelay,
  );

  ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json):
    oldSlowModeDelay = json['old_slow_mode_delay'] is int 
      ? convertToTdObject(json['old_slow_mode_delay']) 
      : int.parse(convertToTdObject(json['old_slow_mode_delay'])),
    newSlowModeDelay = json['new_slow_mode_delay'] is int 
      ? convertToTdObject(json['new_slow_mode_delay']) 
      : int.parse(convertToTdObject(json['new_slow_mode_delay']));
}

class ChatEventMessageTtlSettingChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageTtlSettingChanged';

  int oldMessageTtlSetting;
  int newMessageTtlSetting;

  @override
  Map<String, dynamic> get params => {
    'old_message_ttl_setting': oldMessageTtlSetting,
    'new_message_ttl_setting': newMessageTtlSetting,
  };

  ChatEventMessageTtlSettingChanged(
    this.oldMessageTtlSetting,
    this.newMessageTtlSetting,
  );

  ChatEventMessageTtlSettingChanged.fromJson(Map<String, dynamic> json):
    oldMessageTtlSetting = json['old_message_ttl_setting'] is int 
      ? convertToTdObject(json['old_message_ttl_setting']) 
      : int.parse(convertToTdObject(json['old_message_ttl_setting'])),
    newMessageTtlSetting = json['new_message_ttl_setting'] is int 
      ? convertToTdObject(json['new_message_ttl_setting']) 
      : int.parse(convertToTdObject(json['new_message_ttl_setting']));
}

class ChatEventSignMessagesToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventSignMessagesToggled';

  bool signMessages;

  @override
  Map<String, dynamic> get params => {
    'sign_messages': signMessages,
  };

  ChatEventSignMessagesToggled(
    this.signMessages,
  );

  ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json):
    signMessages = convertToTdObject(json['sign_messages']);
}

class ChatEventStickerSetChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventStickerSetChanged';

  int oldStickerSetId;
  int newStickerSetId;

  @override
  Map<String, dynamic> get params => {
    'old_sticker_set_id': oldStickerSetId,
    'new_sticker_set_id': newStickerSetId,
  };

  ChatEventStickerSetChanged(
    this.oldStickerSetId,
    this.newStickerSetId,
  );

  ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json):
    oldStickerSetId = json['old_sticker_set_id'] is int 
      ? convertToTdObject(json['old_sticker_set_id']) 
      : int.parse(convertToTdObject(json['old_sticker_set_id'])),
    newStickerSetId = json['new_sticker_set_id'] is int 
      ? convertToTdObject(json['new_sticker_set_id']) 
      : int.parse(convertToTdObject(json['new_sticker_set_id']));
}

class ChatEventLocationChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventLocationChanged';

  ChatLocation? oldLocation;
  ChatLocation? newLocation;

  @override
  Map<String, dynamic> get params => {
    'old_location': oldLocation,
    'new_location': newLocation,
  };

  ChatEventLocationChanged(
    this.oldLocation,
    this.newLocation,
  );

  ChatEventLocationChanged.fromJson(Map<String, dynamic> json):
    oldLocation = convertToTdObject(json['old_location']),
    newLocation = convertToTdObject(json['new_location']);
}

class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventIsAllHistoryAvailableToggled';

  bool isAllHistoryAvailable;

  @override
  Map<String, dynamic> get params => {
    'is_all_history_available': isAllHistoryAvailable,
  };

  ChatEventIsAllHistoryAvailableToggled(
    this.isAllHistoryAvailable,
  );

  ChatEventIsAllHistoryAvailableToggled.fromJson(Map<String, dynamic> json):
    isAllHistoryAvailable = convertToTdObject(json['is_all_history_available']);
}

class ChatEventInviteLinkEdited extends ChatEventAction {
  @override
  String get tdType => 'chatEventInviteLinkEdited';

  ChatInviteLink oldInviteLink;
  ChatInviteLink newInviteLink;

  @override
  Map<String, dynamic> get params => {
    'old_invite_link': oldInviteLink,
    'new_invite_link': newInviteLink,
  };

  ChatEventInviteLinkEdited(
    this.oldInviteLink,
    this.newInviteLink,
  );

  ChatEventInviteLinkEdited.fromJson(Map<String, dynamic> json):
    oldInviteLink = convertToTdObject(json['old_invite_link']),
    newInviteLink = convertToTdObject(json['new_invite_link']);
}

class ChatEventInviteLinkRevoked extends ChatEventAction {
  @override
  String get tdType => 'chatEventInviteLinkRevoked';

  ChatInviteLink inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  ChatEventInviteLinkRevoked(
    this.inviteLink,
  );

  ChatEventInviteLinkRevoked.fromJson(Map<String, dynamic> json):
    inviteLink = convertToTdObject(json['invite_link']);
}

class ChatEventInviteLinkDeleted extends ChatEventAction {
  @override
  String get tdType => 'chatEventInviteLinkDeleted';

  ChatInviteLink inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  ChatEventInviteLinkDeleted(
    this.inviteLink,
  );

  ChatEventInviteLinkDeleted.fromJson(Map<String, dynamic> json):
    inviteLink = convertToTdObject(json['invite_link']);
}

class ChatEventVoiceChatCreated extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatCreated';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  ChatEventVoiceChatCreated(
    this.groupCallId,
  );

  ChatEventVoiceChatCreated.fromJson(Map<String, dynamic> json):
    groupCallId = json['group_call_id'] is int 
      ? convertToTdObject(json['group_call_id']) 
      : int.parse(convertToTdObject(json['group_call_id']));
}

class ChatEventVoiceChatDiscarded extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatDiscarded';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  ChatEventVoiceChatDiscarded(
    this.groupCallId,
  );

  ChatEventVoiceChatDiscarded.fromJson(Map<String, dynamic> json):
    groupCallId = json['group_call_id'] is int 
      ? convertToTdObject(json['group_call_id']) 
      : int.parse(convertToTdObject(json['group_call_id']));
}

class ChatEventVoiceChatParticipantIsMutedToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatParticipantIsMutedToggled';

  MessageSender participantId;
  bool isMuted;

  @override
  Map<String, dynamic> get params => {
    'participant_id': participantId,
    'is_muted': isMuted,
  };

  ChatEventVoiceChatParticipantIsMutedToggled(
    this.participantId,
    this.isMuted,
  );

  ChatEventVoiceChatParticipantIsMutedToggled.fromJson(Map<String, dynamic> json):
    participantId = convertToTdObject(json['participant_id']),
    isMuted = convertToTdObject(json['is_muted']);
}

class ChatEventVoiceChatParticipantVolumeLevelChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatParticipantVolumeLevelChanged';

  MessageSender participantId;
  int volumeLevel;

  @override
  Map<String, dynamic> get params => {
    'participant_id': participantId,
    'volume_level': volumeLevel,
  };

  ChatEventVoiceChatParticipantVolumeLevelChanged(
    this.participantId,
    this.volumeLevel,
  );

  ChatEventVoiceChatParticipantVolumeLevelChanged.fromJson(Map<String, dynamic> json):
    participantId = convertToTdObject(json['participant_id']),
    volumeLevel = json['volume_level'] is int 
      ? convertToTdObject(json['volume_level']) 
      : int.parse(convertToTdObject(json['volume_level']));
}

class ChatEventVoiceChatMuteNewParticipantsToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatMuteNewParticipantsToggled';

  bool muteNewParticipants;

  @override
  Map<String, dynamic> get params => {
    'mute_new_participants': muteNewParticipants,
  };

  ChatEventVoiceChatMuteNewParticipantsToggled(
    this.muteNewParticipants,
  );

  ChatEventVoiceChatMuteNewParticipantsToggled.fromJson(Map<String, dynamic> json):
    muteNewParticipants = convertToTdObject(json['mute_new_participants']);
}

class ChatEvent extends TdObject {
  @override
  String get tdType => 'chatEvent';

  int id;
  int date;
  int userId;
  ChatEventAction action;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'date': date,
    'user_id': userId,
    'action': action,
  };

  ChatEvent(
    this.id,
    this.date,
    this.userId,
    this.action,
  );

  ChatEvent.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    action = convertToTdObject(json['action']);
}

class ChatEvents extends TdObject {
  @override
  String get tdType => 'chatEvents';

  List<ChatEvent> events;

  @override
  Map<String, dynamic> get params => {
    'events': events,
  };

  ChatEvents(
    this.events,
  );

  ChatEvents.fromJson(Map<String, dynamic> json):
    events = convertToTdObject(castList<ChatEvent>(json['events']));
}

class ChatEventLogFilters extends TdObject {
  @override
  String get tdType => 'chatEventLogFilters';

  bool messageEdits;
  bool messageDeletions;
  bool messagePins;
  bool memberJoins;
  bool memberLeaves;
  bool memberInvites;
  bool memberPromotions;
  bool memberRestrictions;
  bool infoChanges;
  bool settingChanges;
  bool inviteLinkChanges;
  bool voiceChatChanges;

  @override
  Map<String, dynamic> get params => {
    'message_edits': messageEdits,
    'message_deletions': messageDeletions,
    'message_pins': messagePins,
    'member_joins': memberJoins,
    'member_leaves': memberLeaves,
    'member_invites': memberInvites,
    'member_promotions': memberPromotions,
    'member_restrictions': memberRestrictions,
    'info_changes': infoChanges,
    'setting_changes': settingChanges,
    'invite_link_changes': inviteLinkChanges,
    'voice_chat_changes': voiceChatChanges,
  };

  ChatEventLogFilters(
    this.messageEdits,
    this.messageDeletions,
    this.messagePins,
    this.memberJoins,
    this.memberLeaves,
    this.memberInvites,
    this.memberPromotions,
    this.memberRestrictions,
    this.infoChanges,
    this.settingChanges,
    this.inviteLinkChanges,
    this.voiceChatChanges,
  );

  ChatEventLogFilters.fromJson(Map<String, dynamic> json):
    messageEdits = convertToTdObject(json['message_edits']),
    messageDeletions = convertToTdObject(json['message_deletions']),
    messagePins = convertToTdObject(json['message_pins']),
    memberJoins = convertToTdObject(json['member_joins']),
    memberLeaves = convertToTdObject(json['member_leaves']),
    memberInvites = convertToTdObject(json['member_invites']),
    memberPromotions = convertToTdObject(json['member_promotions']),
    memberRestrictions = convertToTdObject(json['member_restrictions']),
    infoChanges = convertToTdObject(json['info_changes']),
    settingChanges = convertToTdObject(json['setting_changes']),
    inviteLinkChanges = convertToTdObject(json['invite_link_changes']),
    voiceChatChanges = convertToTdObject(json['voice_chat_changes']);
}

abstract class LanguagePackStringValue extends TdObject {}

class LanguagePackStringValueOrdinary extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValueOrdinary';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  LanguagePackStringValueOrdinary(
    this.value,
  );

  LanguagePackStringValueOrdinary.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

class LanguagePackStringValuePluralized extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValuePluralized';

  String zeroValue;
  String oneValue;
  String twoValue;
  String fewValue;
  String manyValue;
  String otherValue;

  @override
  Map<String, dynamic> get params => {
    'zero_value': zeroValue,
    'one_value': oneValue,
    'two_value': twoValue,
    'few_value': fewValue,
    'many_value': manyValue,
    'other_value': otherValue,
  };

  LanguagePackStringValuePluralized(
    this.zeroValue,
    this.oneValue,
    this.twoValue,
    this.fewValue,
    this.manyValue,
    this.otherValue,
  );

  LanguagePackStringValuePluralized.fromJson(Map<String, dynamic> json):
    zeroValue = convertToTdObject(json['zero_value']),
    oneValue = convertToTdObject(json['one_value']),
    twoValue = convertToTdObject(json['two_value']),
    fewValue = convertToTdObject(json['few_value']),
    manyValue = convertToTdObject(json['many_value']),
    otherValue = convertToTdObject(json['other_value']);
}

class LanguagePackStringValueDeleted extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValueDeleted';

  @override
  Map<String, dynamic> get params => {};

  LanguagePackStringValueDeleted();

  LanguagePackStringValueDeleted.fromJson(Map<String, dynamic> json);
}

class LanguagePackString extends TdObject {
  @override
  String get tdType => 'languagePackString';

  String key;
  LanguagePackStringValue value;

  @override
  Map<String, dynamic> get params => {
    'key': key,
    'value': value,
  };

  LanguagePackString(
    this.key,
    this.value,
  );

  LanguagePackString.fromJson(Map<String, dynamic> json):
    key = convertToTdObject(json['key']),
    value = convertToTdObject(json['value']);
}

class LanguagePackStrings extends TdObject {
  @override
  String get tdType => 'languagePackStrings';

  List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    'strings': strings,
  };

  LanguagePackStrings(
    this.strings,
  );

  LanguagePackStrings.fromJson(Map<String, dynamic> json):
    strings = convertToTdObject(castList<LanguagePackString>(json['strings']));
}

class LanguagePackInfo extends TdObject {
  @override
  String get tdType => 'languagePackInfo';

  String id;
  String baseLanguagePackId;
  String name;
  String nativeName;
  String pluralCode;
  bool isOfficial;
  bool isRtl;
  bool isBeta;
  bool isInstalled;
  int totalStringCount;
  int translatedStringCount;
  int localStringCount;
  String translationUrl;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'base_language_pack_id': baseLanguagePackId,
    'name': name,
    'native_name': nativeName,
    'plural_code': pluralCode,
    'is_official': isOfficial,
    'is_rtl': isRtl,
    'is_beta': isBeta,
    'is_installed': isInstalled,
    'total_string_count': totalStringCount,
    'translated_string_count': translatedStringCount,
    'local_string_count': localStringCount,
    'translation_url': translationUrl,
  };

  LanguagePackInfo(
    this.id,
    this.baseLanguagePackId,
    this.name,
    this.nativeName,
    this.pluralCode,
    this.isOfficial,
    this.isRtl,
    this.isBeta,
    this.isInstalled,
    this.totalStringCount,
    this.translatedStringCount,
    this.localStringCount,
    this.translationUrl,
  );

  LanguagePackInfo.fromJson(Map<String, dynamic> json):
    id = convertToTdObject(json['id']),
    baseLanguagePackId = convertToTdObject(json['base_language_pack_id']),
    name = convertToTdObject(json['name']),
    nativeName = convertToTdObject(json['native_name']),
    pluralCode = convertToTdObject(json['plural_code']),
    isOfficial = convertToTdObject(json['is_official']),
    isRtl = convertToTdObject(json['is_rtl']),
    isBeta = convertToTdObject(json['is_beta']),
    isInstalled = convertToTdObject(json['is_installed']),
    totalStringCount = json['total_string_count'] is int 
      ? convertToTdObject(json['total_string_count']) 
      : int.parse(convertToTdObject(json['total_string_count'])),
    translatedStringCount = json['translated_string_count'] is int 
      ? convertToTdObject(json['translated_string_count']) 
      : int.parse(convertToTdObject(json['translated_string_count'])),
    localStringCount = json['local_string_count'] is int 
      ? convertToTdObject(json['local_string_count']) 
      : int.parse(convertToTdObject(json['local_string_count'])),
    translationUrl = convertToTdObject(json['translation_url']);
}

class LocalizationTargetInfo extends TdObject {
  @override
  String get tdType => 'localizationTargetInfo';

  List<LanguagePackInfo> languagePacks;

  @override
  Map<String, dynamic> get params => {
    'language_packs': languagePacks,
  };

  LocalizationTargetInfo(
    this.languagePacks,
  );

  LocalizationTargetInfo.fromJson(Map<String, dynamic> json):
    languagePacks = convertToTdObject(castList<LanguagePackInfo>(json['language_packs']));
}

abstract class DeviceToken extends TdObject {}

class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  @override
  String get tdType => 'deviceTokenFirebaseCloudMessaging';

  String token;
  bool encrypt;

  @override
  Map<String, dynamic> get params => {
    'token': token,
    'encrypt': encrypt,
  };

  DeviceTokenFirebaseCloudMessaging(
    this.token,
    this.encrypt,
  );

  DeviceTokenFirebaseCloudMessaging.fromJson(Map<String, dynamic> json):
    token = convertToTdObject(json['token']),
    encrypt = convertToTdObject(json['encrypt']);
}

class DeviceTokenApplePush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenApplePush';

  String deviceToken;
  bool isAppSandbox;

  @override
  Map<String, dynamic> get params => {
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
  };

  DeviceTokenApplePush(
    this.deviceToken,
    this.isAppSandbox,
  );

  DeviceTokenApplePush.fromJson(Map<String, dynamic> json):
    deviceToken = convertToTdObject(json['device_token']),
    isAppSandbox = convertToTdObject(json['is_app_sandbox']);
}

class DeviceTokenApplePushVoIP extends DeviceToken {
  @override
  String get tdType => 'deviceTokenApplePushVoIP';

  String deviceToken;
  bool isAppSandbox;
  bool encrypt;

  @override
  Map<String, dynamic> get params => {
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
    'encrypt': encrypt,
  };

  DeviceTokenApplePushVoIP(
    this.deviceToken,
    this.isAppSandbox,
    this.encrypt,
  );

  DeviceTokenApplePushVoIP.fromJson(Map<String, dynamic> json):
    deviceToken = convertToTdObject(json['device_token']),
    isAppSandbox = convertToTdObject(json['is_app_sandbox']),
    encrypt = convertToTdObject(json['encrypt']);
}

class DeviceTokenWindowsPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenWindowsPush';

  String accessToken;

  @override
  Map<String, dynamic> get params => {
    'access_token': accessToken,
  };

  DeviceTokenWindowsPush(
    this.accessToken,
  );

  DeviceTokenWindowsPush.fromJson(Map<String, dynamic> json):
    accessToken = convertToTdObject(json['access_token']);
}

class DeviceTokenMicrosoftPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenMicrosoftPush';

  String channelUri;

  @override
  Map<String, dynamic> get params => {
    'channel_uri': channelUri,
  };

  DeviceTokenMicrosoftPush(
    this.channelUri,
  );

  DeviceTokenMicrosoftPush.fromJson(Map<String, dynamic> json):
    channelUri = convertToTdObject(json['channel_uri']);
}

class DeviceTokenMicrosoftPushVoIP extends DeviceToken {
  @override
  String get tdType => 'deviceTokenMicrosoftPushVoIP';

  String channelUri;

  @override
  Map<String, dynamic> get params => {
    'channel_uri': channelUri,
  };

  DeviceTokenMicrosoftPushVoIP(
    this.channelUri,
  );

  DeviceTokenMicrosoftPushVoIP.fromJson(Map<String, dynamic> json):
    channelUri = convertToTdObject(json['channel_uri']);
}

class DeviceTokenWebPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenWebPush';

  String endpoint;
  String p256dhBase64url;
  String authBase64url;

  @override
  Map<String, dynamic> get params => {
    'endpoint': endpoint,
    'p256dh_base64url': p256dhBase64url,
    'auth_base64url': authBase64url,
  };

  DeviceTokenWebPush(
    this.endpoint,
    this.p256dhBase64url,
    this.authBase64url,
  );

  DeviceTokenWebPush.fromJson(Map<String, dynamic> json):
    endpoint = convertToTdObject(json['endpoint']),
    p256dhBase64url = convertToTdObject(json['p256dh_base64url']),
    authBase64url = convertToTdObject(json['auth_base64url']);
}

class DeviceTokenSimplePush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenSimplePush';

  String endpoint;

  @override
  Map<String, dynamic> get params => {
    'endpoint': endpoint,
  };

  DeviceTokenSimplePush(
    this.endpoint,
  );

  DeviceTokenSimplePush.fromJson(Map<String, dynamic> json):
    endpoint = convertToTdObject(json['endpoint']);
}

class DeviceTokenUbuntuPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenUbuntuPush';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  DeviceTokenUbuntuPush(
    this.token,
  );

  DeviceTokenUbuntuPush.fromJson(Map<String, dynamic> json):
    token = convertToTdObject(json['token']);
}

class DeviceTokenBlackBerryPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenBlackBerryPush';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  DeviceTokenBlackBerryPush(
    this.token,
  );

  DeviceTokenBlackBerryPush.fromJson(Map<String, dynamic> json):
    token = convertToTdObject(json['token']);
}

class DeviceTokenTizenPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenTizenPush';

  String regId;

  @override
  Map<String, dynamic> get params => {
    'reg_id': regId,
  };

  DeviceTokenTizenPush(
    this.regId,
  );

  DeviceTokenTizenPush.fromJson(Map<String, dynamic> json):
    regId = convertToTdObject(json['reg_id']);
}

class PushReceiverId extends TdObject {
  @override
  String get tdType => 'pushReceiverId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  PushReceiverId(
    this.id,
  );

  PushReceiverId.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id']));
}

abstract class BackgroundFill extends TdObject {}

class BackgroundFillSolid extends BackgroundFill {
  @override
  String get tdType => 'backgroundFillSolid';

  int color;

  @override
  Map<String, dynamic> get params => {
    'color': color,
  };

  BackgroundFillSolid(
    this.color,
  );

  BackgroundFillSolid.fromJson(Map<String, dynamic> json):
    color = json['color'] is int 
      ? convertToTdObject(json['color']) 
      : int.parse(convertToTdObject(json['color']));
}

class BackgroundFillGradient extends BackgroundFill {
  @override
  String get tdType => 'backgroundFillGradient';

  int topColor;
  int bottomColor;
  int rotationAngle;

  @override
  Map<String, dynamic> get params => {
    'top_color': topColor,
    'bottom_color': bottomColor,
    'rotation_angle': rotationAngle,
  };

  BackgroundFillGradient(
    this.topColor,
    this.bottomColor,
    this.rotationAngle,
  );

  BackgroundFillGradient.fromJson(Map<String, dynamic> json):
    topColor = json['top_color'] is int 
      ? convertToTdObject(json['top_color']) 
      : int.parse(convertToTdObject(json['top_color'])),
    bottomColor = json['bottom_color'] is int 
      ? convertToTdObject(json['bottom_color']) 
      : int.parse(convertToTdObject(json['bottom_color'])),
    rotationAngle = json['rotation_angle'] is int 
      ? convertToTdObject(json['rotation_angle']) 
      : int.parse(convertToTdObject(json['rotation_angle']));
}

class BackgroundFillFreeformGradient extends BackgroundFill {
  @override
  String get tdType => 'backgroundFillFreeformGradient';

  List<int> colors;

  @override
  Map<String, dynamic> get params => {
    'colors': colors,
  };

  BackgroundFillFreeformGradient(
    this.colors,
  );

  BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json):
    colors = convertToTdObject(castList<int>(json['colors']));
}

abstract class BackgroundType extends TdObject {}

class BackgroundTypeWallpaper extends BackgroundType {
  @override
  String get tdType => 'backgroundTypeWallpaper';

  bool isBlurred;
  bool isMoving;

  @override
  Map<String, dynamic> get params => {
    'is_blurred': isBlurred,
    'is_moving': isMoving,
  };

  BackgroundTypeWallpaper(
    this.isBlurred,
    this.isMoving,
  );

  BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json):
    isBlurred = convertToTdObject(json['is_blurred']),
    isMoving = convertToTdObject(json['is_moving']);
}

class BackgroundTypePattern extends BackgroundType {
  @override
  String get tdType => 'backgroundTypePattern';

  BackgroundFill fill;
  int intensity;
  bool isMoving;

  @override
  Map<String, dynamic> get params => {
    'fill': fill,
    'intensity': intensity,
    'is_moving': isMoving,
  };

  BackgroundTypePattern(
    this.fill,
    this.intensity,
    this.isMoving,
  );

  BackgroundTypePattern.fromJson(Map<String, dynamic> json):
    fill = convertToTdObject(json['fill']),
    intensity = json['intensity'] is int 
      ? convertToTdObject(json['intensity']) 
      : int.parse(convertToTdObject(json['intensity'])),
    isMoving = convertToTdObject(json['is_moving']);
}

class BackgroundTypeFill extends BackgroundType {
  @override
  String get tdType => 'backgroundTypeFill';

  BackgroundFill fill;

  @override
  Map<String, dynamic> get params => {
    'fill': fill,
  };

  BackgroundTypeFill(
    this.fill,
  );

  BackgroundTypeFill.fromJson(Map<String, dynamic> json):
    fill = convertToTdObject(json['fill']);
}

class Background extends TdObject {
  @override
  String get tdType => 'background';

  int id;
  bool isDefault;
  bool isDark;
  String name;
  Document document;
  BackgroundType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'is_default': isDefault,
    'is_dark': isDark,
    'name': name,
    'document': document,
    'type': type,
  };

  Background(
    this.id,
    this.isDefault,
    this.isDark,
    this.name,
    this.document,
    this.type,
  );

  Background.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    isDefault = convertToTdObject(json['is_default']),
    isDark = convertToTdObject(json['is_dark']),
    name = convertToTdObject(json['name']),
    document = convertToTdObject(json['document']),
    type = convertToTdObject(json['type']);
}

class Backgrounds extends TdObject {
  @override
  String get tdType => 'backgrounds';

  List<Background> backgrounds;

  @override
  Map<String, dynamic> get params => {
    'backgrounds': backgrounds,
  };

  Backgrounds(
    this.backgrounds,
  );

  Backgrounds.fromJson(Map<String, dynamic> json):
    backgrounds = convertToTdObject(castList<Background>(json['backgrounds']));
}

abstract class InputBackground extends TdObject {}

class InputBackgroundLocal extends InputBackground {
  @override
  String get tdType => 'inputBackgroundLocal';

  InputFile background;

  @override
  Map<String, dynamic> get params => {
    'background': background,
  };

  InputBackgroundLocal(
    this.background,
  );

  InputBackgroundLocal.fromJson(Map<String, dynamic> json):
    background = convertToTdObject(json['background']);
}

class InputBackgroundRemote extends InputBackground {
  @override
  String get tdType => 'inputBackgroundRemote';

  int backgroundId;

  @override
  Map<String, dynamic> get params => {
    'background_id': backgroundId,
  };

  InputBackgroundRemote(
    this.backgroundId,
  );

  InputBackgroundRemote.fromJson(Map<String, dynamic> json):
    backgroundId = json['background_id'] is int 
      ? convertToTdObject(json['background_id']) 
      : int.parse(convertToTdObject(json['background_id']));
}

class Hashtags extends TdObject {
  @override
  String get tdType => 'hashtags';

  List<String> hashtags;

  @override
  Map<String, dynamic> get params => {
    'hashtags': hashtags,
  };

  Hashtags(
    this.hashtags,
  );

  Hashtags.fromJson(Map<String, dynamic> json):
    hashtags = convertToTdObject(castList<String>(json['hashtags']));
}

abstract class CanTransferOwnershipResult extends TdObject {}

class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  @override
  String get tdType => 'canTransferOwnershipResultOk';

  @override
  Map<String, dynamic> get params => {};

  CanTransferOwnershipResultOk();

  CanTransferOwnershipResultOk.fromJson(Map<String, dynamic> json);
}

class CanTransferOwnershipResultPasswordNeeded extends CanTransferOwnershipResult {
  @override
  String get tdType => 'canTransferOwnershipResultPasswordNeeded';

  @override
  Map<String, dynamic> get params => {};

  CanTransferOwnershipResultPasswordNeeded();

  CanTransferOwnershipResultPasswordNeeded.fromJson(Map<String, dynamic> json);
}

class CanTransferOwnershipResultPasswordTooFresh extends CanTransferOwnershipResult {
  @override
  String get tdType => 'canTransferOwnershipResultPasswordTooFresh';

  int retryAfter;

  @override
  Map<String, dynamic> get params => {
    'retry_after': retryAfter,
  };

  CanTransferOwnershipResultPasswordTooFresh(
    this.retryAfter,
  );

  CanTransferOwnershipResultPasswordTooFresh.fromJson(Map<String, dynamic> json):
    retryAfter = json['retry_after'] is int 
      ? convertToTdObject(json['retry_after']) 
      : int.parse(convertToTdObject(json['retry_after']));
}

class CanTransferOwnershipResultSessionTooFresh extends CanTransferOwnershipResult {
  @override
  String get tdType => 'canTransferOwnershipResultSessionTooFresh';

  int retryAfter;

  @override
  Map<String, dynamic> get params => {
    'retry_after': retryAfter,
  };

  CanTransferOwnershipResultSessionTooFresh(
    this.retryAfter,
  );

  CanTransferOwnershipResultSessionTooFresh.fromJson(Map<String, dynamic> json):
    retryAfter = json['retry_after'] is int 
      ? convertToTdObject(json['retry_after']) 
      : int.parse(convertToTdObject(json['retry_after']));
}

abstract class CheckChatUsernameResult extends TdObject {}

class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultOk';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultOk();

  CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json);
}

class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultUsernameInvalid';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultUsernameInvalid();

  CheckChatUsernameResultUsernameInvalid.fromJson(Map<String, dynamic> json);
}

class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultUsernameOccupied';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultUsernameOccupied();

  CheckChatUsernameResultUsernameOccupied.fromJson(Map<String, dynamic> json);
}

class CheckChatUsernameResultPublicChatsTooMuch extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultPublicChatsTooMuch';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultPublicChatsTooMuch();

  CheckChatUsernameResultPublicChatsTooMuch.fromJson(Map<String, dynamic> json);
}

class CheckChatUsernameResultPublicGroupsUnavailable extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultPublicGroupsUnavailable';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultPublicGroupsUnavailable();

  CheckChatUsernameResultPublicGroupsUnavailable.fromJson(Map<String, dynamic> json);
}

abstract class CheckStickerSetNameResult extends TdObject {}

class CheckStickerSetNameResultOk extends CheckStickerSetNameResult {
  @override
  String get tdType => 'checkStickerSetNameResultOk';

  @override
  Map<String, dynamic> get params => {};

  CheckStickerSetNameResultOk();

  CheckStickerSetNameResultOk.fromJson(Map<String, dynamic> json);
}

class CheckStickerSetNameResultNameInvalid extends CheckStickerSetNameResult {
  @override
  String get tdType => 'checkStickerSetNameResultNameInvalid';

  @override
  Map<String, dynamic> get params => {};

  CheckStickerSetNameResultNameInvalid();

  CheckStickerSetNameResultNameInvalid.fromJson(Map<String, dynamic> json);
}

class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {
  @override
  String get tdType => 'checkStickerSetNameResultNameOccupied';

  @override
  Map<String, dynamic> get params => {};

  CheckStickerSetNameResultNameOccupied();

  CheckStickerSetNameResultNameOccupied.fromJson(Map<String, dynamic> json);
}

abstract class MessageFileType extends TdObject {}

class MessageFileTypePrivate extends MessageFileType {
  @override
  String get tdType => 'messageFileTypePrivate';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  MessageFileTypePrivate(
    this.name,
  );

  MessageFileTypePrivate.fromJson(Map<String, dynamic> json):
    name = convertToTdObject(json['name']);
}

class MessageFileTypeGroup extends MessageFileType {
  @override
  String get tdType => 'messageFileTypeGroup';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  MessageFileTypeGroup(
    this.title,
  );

  MessageFileTypeGroup.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']);
}

class MessageFileTypeUnknown extends MessageFileType {
  @override
  String get tdType => 'messageFileTypeUnknown';

  @override
  Map<String, dynamic> get params => {};

  MessageFileTypeUnknown();

  MessageFileTypeUnknown.fromJson(Map<String, dynamic> json);
}

abstract class PushMessageContent extends TdObject {}

class PushMessageContentHidden extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentHidden';

  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'is_pinned': isPinned,
  };

  PushMessageContentHidden(
    this.isPinned,
  );

  PushMessageContentHidden.fromJson(Map<String, dynamic> json):
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentAnimation extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentAnimation';

  Animation? animation;
  String caption;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'is_pinned': isPinned,
  };

  PushMessageContentAnimation(
    this.animation,
    this.caption,
    this.isPinned,
  );

  PushMessageContentAnimation.fromJson(Map<String, dynamic> json):
    animation = convertToTdObject(json['animation']),
    caption = convertToTdObject(json['caption']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentAudio extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentAudio';

  Audio? audio;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'is_pinned': isPinned,
  };

  PushMessageContentAudio(
    this.audio,
    this.isPinned,
  );

  PushMessageContentAudio.fromJson(Map<String, dynamic> json):
    audio = convertToTdObject(json['audio']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentContact extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentContact';

  String name;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'is_pinned': isPinned,
  };

  PushMessageContentContact(
    this.name,
    this.isPinned,
  );

  PushMessageContentContact.fromJson(Map<String, dynamic> json):
    name = convertToTdObject(json['name']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentContactRegistered extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentContactRegistered';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentContactRegistered();

  PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json);
}

class PushMessageContentDocument extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentDocument';

  Document? document;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'is_pinned': isPinned,
  };

  PushMessageContentDocument(
    this.document,
    this.isPinned,
  );

  PushMessageContentDocument.fromJson(Map<String, dynamic> json):
    document = convertToTdObject(json['document']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentGame extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentGame';

  String title;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'is_pinned': isPinned,
  };

  PushMessageContentGame(
    this.title,
    this.isPinned,
  );

  PushMessageContentGame.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentGameScore extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentGameScore';

  String title;
  int score;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'score': score,
    'is_pinned': isPinned,
  };

  PushMessageContentGameScore(
    this.title,
    this.score,
    this.isPinned,
  );

  PushMessageContentGameScore.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']),
    score = json['score'] is int 
      ? convertToTdObject(json['score']) 
      : int.parse(convertToTdObject(json['score'])),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentInvoice extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentInvoice';

  String price;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'price': price,
    'is_pinned': isPinned,
  };

  PushMessageContentInvoice(
    this.price,
    this.isPinned,
  );

  PushMessageContentInvoice.fromJson(Map<String, dynamic> json):
    price = convertToTdObject(json['price']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentLocation extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentLocation';

  bool isLive;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'is_live': isLive,
    'is_pinned': isPinned,
  };

  PushMessageContentLocation(
    this.isLive,
    this.isPinned,
  );

  PushMessageContentLocation.fromJson(Map<String, dynamic> json):
    isLive = convertToTdObject(json['is_live']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentPhoto extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentPhoto';

  Photo? photo;
  String caption;
  bool isSecret;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
  };

  PushMessageContentPhoto(
    this.photo,
    this.caption,
    this.isSecret,
    this.isPinned,
  );

  PushMessageContentPhoto.fromJson(Map<String, dynamic> json):
    photo = convertToTdObject(json['photo']),
    caption = convertToTdObject(json['caption']),
    isSecret = convertToTdObject(json['is_secret']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentPoll extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentPoll';

  String question;
  bool isRegular;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'question': question,
    'is_regular': isRegular,
    'is_pinned': isPinned,
  };

  PushMessageContentPoll(
    this.question,
    this.isRegular,
    this.isPinned,
  );

  PushMessageContentPoll.fromJson(Map<String, dynamic> json):
    question = convertToTdObject(json['question']),
    isRegular = convertToTdObject(json['is_regular']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentScreenshotTaken extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentScreenshotTaken';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentScreenshotTaken();

  PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json);
}

class PushMessageContentSticker extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentSticker';

  Sticker? sticker;
  String emoji;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'emoji': emoji,
    'is_pinned': isPinned,
  };

  PushMessageContentSticker(
    this.sticker,
    this.emoji,
    this.isPinned,
  );

  PushMessageContentSticker.fromJson(Map<String, dynamic> json):
    sticker = convertToTdObject(json['sticker']),
    emoji = convertToTdObject(json['emoji']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentText extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentText';

  String text;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'is_pinned': isPinned,
  };

  PushMessageContentText(
    this.text,
    this.isPinned,
  );

  PushMessageContentText.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentVideo extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVideo';

  Video? video;
  String caption;
  bool isSecret;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
  };

  PushMessageContentVideo(
    this.video,
    this.caption,
    this.isSecret,
    this.isPinned,
  );

  PushMessageContentVideo.fromJson(Map<String, dynamic> json):
    video = convertToTdObject(json['video']),
    caption = convertToTdObject(json['caption']),
    isSecret = convertToTdObject(json['is_secret']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentVideoNote extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVideoNote';

  VideoNote? videoNote;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'is_pinned': isPinned,
  };

  PushMessageContentVideoNote(
    this.videoNote,
    this.isPinned,
  );

  PushMessageContentVideoNote.fromJson(Map<String, dynamic> json):
    videoNote = convertToTdObject(json['video_note']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentVoiceNote extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVoiceNote';

  VoiceNote? voiceNote;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'is_pinned': isPinned,
  };

  PushMessageContentVoiceNote(
    this.voiceNote,
    this.isPinned,
  );

  PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json):
    voiceNote = convertToTdObject(json['voice_note']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentBasicGroupChatCreate';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentBasicGroupChatCreate();

  PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json);
}

class PushMessageContentChatAddMembers extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatAddMembers';

  String memberName;
  bool isCurrentUser;
  bool isReturned;

  @override
  Map<String, dynamic> get params => {
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_returned': isReturned,
  };

  PushMessageContentChatAddMembers(
    this.memberName,
    this.isCurrentUser,
    this.isReturned,
  );

  PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json):
    memberName = convertToTdObject(json['member_name']),
    isCurrentUser = convertToTdObject(json['is_current_user']),
    isReturned = convertToTdObject(json['is_returned']);
}

class PushMessageContentChatChangePhoto extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatChangePhoto';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentChatChangePhoto();

  PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json);
}

class PushMessageContentChatChangeTitle extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatChangeTitle';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  PushMessageContentChatChangeTitle(
    this.title,
  );

  PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json):
    title = convertToTdObject(json['title']);
}

class PushMessageContentChatDeleteMember extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatDeleteMember';

  String memberName;
  bool isCurrentUser;
  bool isLeft;

  @override
  Map<String, dynamic> get params => {
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_left': isLeft,
  };

  PushMessageContentChatDeleteMember(
    this.memberName,
    this.isCurrentUser,
    this.isLeft,
  );

  PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json):
    memberName = convertToTdObject(json['member_name']),
    isCurrentUser = convertToTdObject(json['is_current_user']),
    isLeft = convertToTdObject(json['is_left']);
}

class PushMessageContentChatJoinByLink extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatJoinByLink';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentChatJoinByLink();

  PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json);
}

class PushMessageContentMessageForwards extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentMessageForwards';

  int totalCount;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
  };

  PushMessageContentMessageForwards(
    this.totalCount,
  );

  PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count']));
}

class PushMessageContentMediaAlbum extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentMediaAlbum';

  int totalCount;
  bool hasPhotos;
  bool hasVideos;
  bool hasAudios;
  bool hasDocuments;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'has_photos': hasPhotos,
    'has_videos': hasVideos,
    'has_audios': hasAudios,
    'has_documents': hasDocuments,
  };

  PushMessageContentMediaAlbum(
    this.totalCount,
    this.hasPhotos,
    this.hasVideos,
    this.hasAudios,
    this.hasDocuments,
  );

  PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json):
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    hasPhotos = convertToTdObject(json['has_photos']),
    hasVideos = convertToTdObject(json['has_videos']),
    hasAudios = convertToTdObject(json['has_audios']),
    hasDocuments = convertToTdObject(json['has_documents']);
}

abstract class NotificationType extends TdObject {}

class NotificationTypeNewMessage extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewMessage';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  NotificationTypeNewMessage(
    this.message,
  );

  NotificationTypeNewMessage.fromJson(Map<String, dynamic> json):
    message = convertToTdObject(json['message']);
}

class NotificationTypeNewSecretChat extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewSecretChat';

  @override
  Map<String, dynamic> get params => {};

  NotificationTypeNewSecretChat();

  NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json);
}

class NotificationTypeNewCall extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewCall';

  int callId;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
  };

  NotificationTypeNewCall(
    this.callId,
  );

  NotificationTypeNewCall.fromJson(Map<String, dynamic> json):
    callId = json['call_id'] is int 
      ? convertToTdObject(json['call_id']) 
      : int.parse(convertToTdObject(json['call_id']));
}

class NotificationTypeNewPushMessage extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewPushMessage';

  int messageId;
  MessageSender sender;
  String senderName;
  bool isOutgoing;
  PushMessageContent content;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
    'sender': sender,
    'sender_name': senderName,
    'is_outgoing': isOutgoing,
    'content': content,
  };

  NotificationTypeNewPushMessage(
    this.messageId,
    this.sender,
    this.senderName,
    this.isOutgoing,
    this.content,
  );

  NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json):
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    sender = convertToTdObject(json['sender']),
    senderName = convertToTdObject(json['sender_name']),
    isOutgoing = convertToTdObject(json['is_outgoing']),
    content = convertToTdObject(json['content']);
}

abstract class NotificationGroupType extends TdObject {}

class NotificationGroupTypeMessages extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeMessages';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeMessages();

  NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json);
}

class NotificationGroupTypeMentions extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeMentions';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeMentions();

  NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json);
}

class NotificationGroupTypeSecretChat extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeSecretChat';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeSecretChat();

  NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json);
}

class NotificationGroupTypeCalls extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeCalls';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeCalls();

  NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json);
}

class Notification extends TdObject {
  @override
  String get tdType => 'notification';

  int id;
  int date;
  bool isSilent;
  NotificationType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'date': date,
    'is_silent': isSilent,
    'type': type,
  };

  Notification(
    this.id,
    this.date,
    this.isSilent,
    this.type,
  );

  Notification.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    isSilent = convertToTdObject(json['is_silent']),
    type = convertToTdObject(json['type']);
}

class NotificationGroup extends TdObject {
  @override
  String get tdType => 'notificationGroup';

  int id;
  NotificationGroupType type;
  int chatId;
  int totalCount;
  List<Notification> notifications;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'type': type,
    'chat_id': chatId,
    'total_count': totalCount,
    'notifications': notifications,
  };

  NotificationGroup(
    this.id,
    this.type,
    this.chatId,
    this.totalCount,
    this.notifications,
  );

  NotificationGroup.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    type = convertToTdObject(json['type']),
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    notifications = convertToTdObject(castList<Notification>(json['notifications']));
}

abstract class OptionValue extends TdObject {}

class OptionValueBoolean extends OptionValue {
  @override
  String get tdType => 'optionValueBoolean';

  bool value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueBoolean(
    this.value,
  );

  OptionValueBoolean.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

class OptionValueEmpty extends OptionValue {
  @override
  String get tdType => 'optionValueEmpty';

  @override
  Map<String, dynamic> get params => {};

  OptionValueEmpty();

  OptionValueEmpty.fromJson(Map<String, dynamic> json);
}

class OptionValueInteger extends OptionValue {
  @override
  String get tdType => 'optionValueInteger';

  int value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueInteger(
    this.value,
  );

  OptionValueInteger.fromJson(Map<String, dynamic> json):
    value = json['value'] is int 
      ? convertToTdObject(json['value']) 
      : int.parse(convertToTdObject(json['value']));
}

class OptionValueString extends OptionValue {
  @override
  String get tdType => 'optionValueString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueString(
    this.value,
  );

  OptionValueString.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

class JsonObjectMember extends TdObject {
  @override
  String get tdType => 'jsonObjectMember';

  String key;
  JsonValue value;

  @override
  Map<String, dynamic> get params => {
    'key': key,
    'value': value,
  };

  JsonObjectMember(
    this.key,
    this.value,
  );

  JsonObjectMember.fromJson(Map<String, dynamic> json):
    key = convertToTdObject(json['key']),
    value = convertToTdObject(json['value']);
}

abstract class JsonValue extends TdObject {}

class JsonValueNull extends JsonValue {
  @override
  String get tdType => 'jsonValueNull';

  @override
  Map<String, dynamic> get params => {};

  JsonValueNull();

  JsonValueNull.fromJson(Map<String, dynamic> json);
}

class JsonValueBoolean extends JsonValue {
  @override
  String get tdType => 'jsonValueBoolean';

  bool value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueBoolean(
    this.value,
  );

  JsonValueBoolean.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

class JsonValueNumber extends JsonValue {
  @override
  String get tdType => 'jsonValueNumber';

  double value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueNumber(
    this.value,
  );

  JsonValueNumber.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

class JsonValueString extends JsonValue {
  @override
  String get tdType => 'jsonValueString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueString(
    this.value,
  );

  JsonValueString.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

class JsonValueArray extends JsonValue {
  @override
  String get tdType => 'jsonValueArray';

  List<JsonValue> values;

  @override
  Map<String, dynamic> get params => {
    'values': values,
  };

  JsonValueArray(
    this.values,
  );

  JsonValueArray.fromJson(Map<String, dynamic> json):
    values = convertToTdObject(castList<JsonValue>(json['values']));
}

class JsonValueObject extends JsonValue {
  @override
  String get tdType => 'jsonValueObject';

  List<JsonObjectMember> members;

  @override
  Map<String, dynamic> get params => {
    'members': members,
  };

  JsonValueObject(
    this.members,
  );

  JsonValueObject.fromJson(Map<String, dynamic> json):
    members = convertToTdObject(castList<JsonObjectMember>(json['members']));
}

abstract class UserPrivacySettingRule extends TdObject {}

class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowAll';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleAllowAll();

  UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowContacts';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleAllowContacts();

  UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowUsers';

  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
  };

  UserPrivacySettingRuleAllowUsers(
    this.userIds,
  );

  UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json):
    userIds = convertToTdObject(castList<int>(json['user_ids']));
}

class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowChatMembers';

  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'chat_ids': chatIds,
  };

  UserPrivacySettingRuleAllowChatMembers(
    this.chatIds,
  );

  UserPrivacySettingRuleAllowChatMembers.fromJson(Map<String, dynamic> json):
    chatIds = convertToTdObject(castList<int>(json['chat_ids']));
}

class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictAll';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleRestrictAll();

  UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictContacts';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleRestrictContacts();

  UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictUsers';

  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
  };

  UserPrivacySettingRuleRestrictUsers(
    this.userIds,
  );

  UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json):
    userIds = convertToTdObject(castList<int>(json['user_ids']));
}

class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictChatMembers';

  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'chat_ids': chatIds,
  };

  UserPrivacySettingRuleRestrictChatMembers(
    this.chatIds,
  );

  UserPrivacySettingRuleRestrictChatMembers.fromJson(Map<String, dynamic> json):
    chatIds = convertToTdObject(castList<int>(json['chat_ids']));
}

class UserPrivacySettingRules extends TdObject {
  @override
  String get tdType => 'userPrivacySettingRules';

  List<UserPrivacySettingRule> rules;

  @override
  Map<String, dynamic> get params => {
    'rules': rules,
  };

  UserPrivacySettingRules(
    this.rules,
  );

  UserPrivacySettingRules.fromJson(Map<String, dynamic> json):
    rules = convertToTdObject(castList<UserPrivacySettingRule>(json['rules']));
}

abstract class UserPrivacySetting extends TdObject {}

class UserPrivacySettingShowStatus extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowStatus';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowStatus();

  UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowProfilePhoto';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowProfilePhoto();

  UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowLinkInForwardedMessages';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowLinkInForwardedMessages();

  UserPrivacySettingShowLinkInForwardedMessages.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowPhoneNumber();

  UserPrivacySettingShowPhoneNumber.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowChatInvites';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowChatInvites();

  UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowCalls';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowCalls();

  UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowPeerToPeerCalls();

  UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json);
}

class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowFindingByPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowFindingByPhoneNumber();

  UserPrivacySettingAllowFindingByPhoneNumber.fromJson(Map<String, dynamic> json);
}

class AccountTtl extends TdObject {
  @override
  String get tdType => 'accountTtl';

  int days;

  @override
  Map<String, dynamic> get params => {
    'days': days,
  };

  AccountTtl(
    this.days,
  );

  AccountTtl.fromJson(Map<String, dynamic> json):
    days = json['days'] is int 
      ? convertToTdObject(json['days']) 
      : int.parse(convertToTdObject(json['days']));
}

class Session extends TdObject {
  @override
  String get tdType => 'session';

  int id;
  bool isCurrent;
  bool isPasswordPending;
  int apiId;
  String applicationName;
  String applicationVersion;
  bool isOfficialApplication;
  String deviceModel;
  String platform;
  String systemVersion;
  int logInDate;
  int lastActiveDate;
  String ip;
  String country;
  String region;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'is_current': isCurrent,
    'is_password_pending': isPasswordPending,
    'api_id': apiId,
    'application_name': applicationName,
    'application_version': applicationVersion,
    'is_official_application': isOfficialApplication,
    'device_model': deviceModel,
    'platform': platform,
    'system_version': systemVersion,
    'log_in_date': logInDate,
    'last_active_date': lastActiveDate,
    'ip': ip,
    'country': country,
    'region': region,
  };

  Session(
    this.id,
    this.isCurrent,
    this.isPasswordPending,
    this.apiId,
    this.applicationName,
    this.applicationVersion,
    this.isOfficialApplication,
    this.deviceModel,
    this.platform,
    this.systemVersion,
    this.logInDate,
    this.lastActiveDate,
    this.ip,
    this.country,
    this.region,
  );

  Session.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    isCurrent = convertToTdObject(json['is_current']),
    isPasswordPending = convertToTdObject(json['is_password_pending']),
    apiId = json['api_id'] is int 
      ? convertToTdObject(json['api_id']) 
      : int.parse(convertToTdObject(json['api_id'])),
    applicationName = convertToTdObject(json['application_name']),
    applicationVersion = convertToTdObject(json['application_version']),
    isOfficialApplication = convertToTdObject(json['is_official_application']),
    deviceModel = convertToTdObject(json['device_model']),
    platform = convertToTdObject(json['platform']),
    systemVersion = convertToTdObject(json['system_version']),
    logInDate = json['log_in_date'] is int 
      ? convertToTdObject(json['log_in_date']) 
      : int.parse(convertToTdObject(json['log_in_date'])),
    lastActiveDate = json['last_active_date'] is int 
      ? convertToTdObject(json['last_active_date']) 
      : int.parse(convertToTdObject(json['last_active_date'])),
    ip = convertToTdObject(json['ip']),
    country = convertToTdObject(json['country']),
    region = convertToTdObject(json['region']);
}

class Sessions extends TdObject {
  @override
  String get tdType => 'sessions';

  List<Session> sessions;

  @override
  Map<String, dynamic> get params => {
    'sessions': sessions,
  };

  Sessions(
    this.sessions,
  );

  Sessions.fromJson(Map<String, dynamic> json):
    sessions = convertToTdObject(castList<Session>(json['sessions']));
}

class ConnectedWebsite extends TdObject {
  @override
  String get tdType => 'connectedWebsite';

  int id;
  String domainName;
  int botUserId;
  String browser;
  String platform;
  int logInDate;
  int lastActiveDate;
  String ip;
  String location;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'domain_name': domainName,
    'bot_user_id': botUserId,
    'browser': browser,
    'platform': platform,
    'log_in_date': logInDate,
    'last_active_date': lastActiveDate,
    'ip': ip,
    'location': location,
  };

  ConnectedWebsite(
    this.id,
    this.domainName,
    this.botUserId,
    this.browser,
    this.platform,
    this.logInDate,
    this.lastActiveDate,
    this.ip,
    this.location,
  );

  ConnectedWebsite.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    domainName = convertToTdObject(json['domain_name']),
    botUserId = json['bot_user_id'] is int 
      ? convertToTdObject(json['bot_user_id']) 
      : int.parse(convertToTdObject(json['bot_user_id'])),
    browser = convertToTdObject(json['browser']),
    platform = convertToTdObject(json['platform']),
    logInDate = json['log_in_date'] is int 
      ? convertToTdObject(json['log_in_date']) 
      : int.parse(convertToTdObject(json['log_in_date'])),
    lastActiveDate = json['last_active_date'] is int 
      ? convertToTdObject(json['last_active_date']) 
      : int.parse(convertToTdObject(json['last_active_date'])),
    ip = convertToTdObject(json['ip']),
    location = convertToTdObject(json['location']);
}

class ConnectedWebsites extends TdObject {
  @override
  String get tdType => 'connectedWebsites';

  List<ConnectedWebsite> websites;

  @override
  Map<String, dynamic> get params => {
    'websites': websites,
  };

  ConnectedWebsites(
    this.websites,
  );

  ConnectedWebsites.fromJson(Map<String, dynamic> json):
    websites = convertToTdObject(castList<ConnectedWebsite>(json['websites']));
}

abstract class ChatReportReason extends TdObject {}

class ChatReportReasonSpam extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonSpam';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonSpam();

  ChatReportReasonSpam.fromJson(Map<String, dynamic> json);
}

class ChatReportReasonViolence extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonViolence';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonViolence();

  ChatReportReasonViolence.fromJson(Map<String, dynamic> json);
}

class ChatReportReasonPornography extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonPornography';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonPornography();

  ChatReportReasonPornography.fromJson(Map<String, dynamic> json);
}

class ChatReportReasonChildAbuse extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonChildAbuse';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonChildAbuse();

  ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json);
}

class ChatReportReasonCopyright extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonCopyright';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonCopyright();

  ChatReportReasonCopyright.fromJson(Map<String, dynamic> json);
}

class ChatReportReasonUnrelatedLocation extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonUnrelatedLocation';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonUnrelatedLocation();

  ChatReportReasonUnrelatedLocation.fromJson(Map<String, dynamic> json);
}

class ChatReportReasonFake extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonFake';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonFake();

  ChatReportReasonFake.fromJson(Map<String, dynamic> json);
}

class ChatReportReasonCustom extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonCustom';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonCustom();

  ChatReportReasonCustom.fromJson(Map<String, dynamic> json);
}

abstract class InternalLinkType extends TdObject {}

class InternalLinkTypeActiveSessions extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeActiveSessions';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeActiveSessions();

  InternalLinkTypeActiveSessions.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeAuthenticationCode extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeAuthenticationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  InternalLinkTypeAuthenticationCode(
    this.code,
  );

  InternalLinkTypeAuthenticationCode.fromJson(Map<String, dynamic> json):
    code = convertToTdObject(json['code']);
}

class InternalLinkTypeBackground extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeBackground';

  String backgroundName;

  @override
  Map<String, dynamic> get params => {
    'background_name': backgroundName,
  };

  InternalLinkTypeBackground(
    this.backgroundName,
  );

  InternalLinkTypeBackground.fromJson(Map<String, dynamic> json):
    backgroundName = convertToTdObject(json['background_name']);
}

class InternalLinkTypeBotStart extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeBotStart';

  String botUsername;
  String startParameter;

  @override
  Map<String, dynamic> get params => {
    'bot_username': botUsername,
    'start_parameter': startParameter,
  };

  InternalLinkTypeBotStart(
    this.botUsername,
    this.startParameter,
  );

  InternalLinkTypeBotStart.fromJson(Map<String, dynamic> json):
    botUsername = convertToTdObject(json['bot_username']),
    startParameter = convertToTdObject(json['start_parameter']);
}

class InternalLinkTypeBotStartInGroup extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeBotStartInGroup';

  String botUsername;
  String startParameter;

  @override
  Map<String, dynamic> get params => {
    'bot_username': botUsername,
    'start_parameter': startParameter,
  };

  InternalLinkTypeBotStartInGroup(
    this.botUsername,
    this.startParameter,
  );

  InternalLinkTypeBotStartInGroup.fromJson(Map<String, dynamic> json):
    botUsername = convertToTdObject(json['bot_username']),
    startParameter = convertToTdObject(json['start_parameter']);
}

class InternalLinkTypeChangePhoneNumber extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeChangePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeChangePhoneNumber();

  InternalLinkTypeChangePhoneNumber.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeChatInvite extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeChatInvite';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeChatInvite();

  InternalLinkTypeChatInvite.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeFilterSettings extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeFilterSettings';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeFilterSettings();

  InternalLinkTypeFilterSettings.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeGame extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeGame';

  String botUsername;
  String gameShortName;

  @override
  Map<String, dynamic> get params => {
    'bot_username': botUsername,
    'game_short_name': gameShortName,
  };

  InternalLinkTypeGame(
    this.botUsername,
    this.gameShortName,
  );

  InternalLinkTypeGame.fromJson(Map<String, dynamic> json):
    botUsername = convertToTdObject(json['bot_username']),
    gameShortName = convertToTdObject(json['game_short_name']);
}

class InternalLinkTypeLanguagePack extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeLanguagePack';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  InternalLinkTypeLanguagePack(
    this.languagePackId,
  );

  InternalLinkTypeLanguagePack.fromJson(Map<String, dynamic> json):
    languagePackId = convertToTdObject(json['language_pack_id']);
}

class InternalLinkTypeMessage extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeMessage';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeMessage();

  InternalLinkTypeMessage.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeMessageDraft extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeMessageDraft';

  FormattedText text;
  bool containsLink;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'contains_link': containsLink,
  };

  InternalLinkTypeMessageDraft(
    this.text,
    this.containsLink,
  );

  InternalLinkTypeMessageDraft.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    containsLink = convertToTdObject(json['contains_link']);
}

class InternalLinkTypePassportDataRequest extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypePassportDataRequest';

  int botUserId;
  String scope;
  String publicKey;
  String nonce;
  String callbackUrl;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'scope': scope,
    'public_key': publicKey,
    'nonce': nonce,
    'callback_url': callbackUrl,
  };

  InternalLinkTypePassportDataRequest(
    this.botUserId,
    this.scope,
    this.publicKey,
    this.nonce,
    this.callbackUrl,
  );

  InternalLinkTypePassportDataRequest.fromJson(Map<String, dynamic> json):
    botUserId = json['bot_user_id'] is int 
      ? convertToTdObject(json['bot_user_id']) 
      : int.parse(convertToTdObject(json['bot_user_id'])),
    scope = convertToTdObject(json['scope']),
    publicKey = convertToTdObject(json['public_key']),
    nonce = convertToTdObject(json['nonce']),
    callbackUrl = convertToTdObject(json['callback_url']);
}

class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypePhoneNumberConfirmation';

  String hash;
  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'hash': hash,
    'phone_number': phoneNumber,
  };

  InternalLinkTypePhoneNumberConfirmation(
    this.hash,
    this.phoneNumber,
  );

  InternalLinkTypePhoneNumberConfirmation.fromJson(Map<String, dynamic> json):
    hash = convertToTdObject(json['hash']),
    phoneNumber = convertToTdObject(json['phone_number']);
}

class InternalLinkTypeProxy extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeProxy';

  String server;
  int port;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'server': server,
    'port': port,
    'type': type,
  };

  InternalLinkTypeProxy(
    this.server,
    this.port,
    this.type,
  );

  InternalLinkTypeProxy.fromJson(Map<String, dynamic> json):
    server = convertToTdObject(json['server']),
    port = json['port'] is int 
      ? convertToTdObject(json['port']) 
      : int.parse(convertToTdObject(json['port'])),
    type = convertToTdObject(json['type']);
}

class InternalLinkTypePublicChat extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypePublicChat';

  String chatUsername;

  @override
  Map<String, dynamic> get params => {
    'chat_username': chatUsername,
  };

  InternalLinkTypePublicChat(
    this.chatUsername,
  );

  InternalLinkTypePublicChat.fromJson(Map<String, dynamic> json):
    chatUsername = convertToTdObject(json['chat_username']);
}

class InternalLinkTypeQrCodeAuthentication extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeQrCodeAuthentication';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeQrCodeAuthentication();

  InternalLinkTypeQrCodeAuthentication.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeSettings extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeSettings';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeSettings();

  InternalLinkTypeSettings.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeStickerSet extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeStickerSet';

  String stickerSetName;

  @override
  Map<String, dynamic> get params => {
    'sticker_set_name': stickerSetName,
  };

  InternalLinkTypeStickerSet(
    this.stickerSetName,
  );

  InternalLinkTypeStickerSet.fromJson(Map<String, dynamic> json):
    stickerSetName = convertToTdObject(json['sticker_set_name']);
}

class InternalLinkTypeTheme extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeTheme';

  String themeName;

  @override
  Map<String, dynamic> get params => {
    'theme_name': themeName,
  };

  InternalLinkTypeTheme(
    this.themeName,
  );

  InternalLinkTypeTheme.fromJson(Map<String, dynamic> json):
    themeName = convertToTdObject(json['theme_name']);
}

class InternalLinkTypeThemeSettings extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeThemeSettings';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeThemeSettings();

  InternalLinkTypeThemeSettings.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeUnknownDeepLink extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeUnknownDeepLink';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeUnknownDeepLink();

  InternalLinkTypeUnknownDeepLink.fromJson(Map<String, dynamic> json);
}

class InternalLinkTypeVoiceChat extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeVoiceChat';

  String chatUsername;
  String inviteHash;

  @override
  Map<String, dynamic> get params => {
    'chat_username': chatUsername,
    'invite_hash': inviteHash,
  };

  InternalLinkTypeVoiceChat(
    this.chatUsername,
    this.inviteHash,
  );

  InternalLinkTypeVoiceChat.fromJson(Map<String, dynamic> json):
    chatUsername = convertToTdObject(json['chat_username']),
    inviteHash = convertToTdObject(json['invite_hash']);
}

class MessageLink extends TdObject {
  @override
  String get tdType => 'messageLink';

  String link;
  bool isPublic;

  @override
  Map<String, dynamic> get params => {
    'link': link,
    'is_public': isPublic,
  };

  MessageLink(
    this.link,
    this.isPublic,
  );

  MessageLink.fromJson(Map<String, dynamic> json):
    link = convertToTdObject(json['link']),
    isPublic = convertToTdObject(json['is_public']);
}

class MessageLinkInfo extends TdObject {
  @override
  String get tdType => 'messageLinkInfo';

  bool isPublic;
  int chatId;
  Message message;
  bool forAlbum;
  bool forComment;

  @override
  Map<String, dynamic> get params => {
    'is_public': isPublic,
    'chat_id': chatId,
    'message': message,
    'for_album': forAlbum,
    'for_comment': forComment,
  };

  MessageLinkInfo(
    this.isPublic,
    this.chatId,
    this.message,
    this.forAlbum,
    this.forComment,
  );

  MessageLinkInfo.fromJson(Map<String, dynamic> json):
    isPublic = convertToTdObject(json['is_public']),
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    message = convertToTdObject(json['message']),
    forAlbum = convertToTdObject(json['for_album']),
    forComment = convertToTdObject(json['for_comment']);
}

class FilePart extends TdObject {
  @override
  String get tdType => 'filePart';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  FilePart(
    this.data,
  );

  FilePart.fromJson(Map<String, dynamic> json):
    data = convertToTdObject(json['data']);
}

abstract class FileType extends TdObject {}

class FileTypeNone extends FileType {
  @override
  String get tdType => 'fileTypeNone';

  @override
  Map<String, dynamic> get params => {};

  FileTypeNone();

  FileTypeNone.fromJson(Map<String, dynamic> json);
}

class FileTypeAnimation extends FileType {
  @override
  String get tdType => 'fileTypeAnimation';

  @override
  Map<String, dynamic> get params => {};

  FileTypeAnimation();

  FileTypeAnimation.fromJson(Map<String, dynamic> json);
}

class FileTypeAudio extends FileType {
  @override
  String get tdType => 'fileTypeAudio';

  @override
  Map<String, dynamic> get params => {};

  FileTypeAudio();

  FileTypeAudio.fromJson(Map<String, dynamic> json);
}

class FileTypeDocument extends FileType {
  @override
  String get tdType => 'fileTypeDocument';

  @override
  Map<String, dynamic> get params => {};

  FileTypeDocument();

  FileTypeDocument.fromJson(Map<String, dynamic> json);
}

class FileTypePhoto extends FileType {
  @override
  String get tdType => 'fileTypePhoto';

  @override
  Map<String, dynamic> get params => {};

  FileTypePhoto();

  FileTypePhoto.fromJson(Map<String, dynamic> json);
}

class FileTypeProfilePhoto extends FileType {
  @override
  String get tdType => 'fileTypeProfilePhoto';

  @override
  Map<String, dynamic> get params => {};

  FileTypeProfilePhoto();

  FileTypeProfilePhoto.fromJson(Map<String, dynamic> json);
}

class FileTypeSecret extends FileType {
  @override
  String get tdType => 'fileTypeSecret';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecret();

  FileTypeSecret.fromJson(Map<String, dynamic> json);
}

class FileTypeSecretThumbnail extends FileType {
  @override
  String get tdType => 'fileTypeSecretThumbnail';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecretThumbnail();

  FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json);
}

class FileTypeSecure extends FileType {
  @override
  String get tdType => 'fileTypeSecure';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecure();

  FileTypeSecure.fromJson(Map<String, dynamic> json);
}

class FileTypeSticker extends FileType {
  @override
  String get tdType => 'fileTypeSticker';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSticker();

  FileTypeSticker.fromJson(Map<String, dynamic> json);
}

class FileTypeThumbnail extends FileType {
  @override
  String get tdType => 'fileTypeThumbnail';

  @override
  Map<String, dynamic> get params => {};

  FileTypeThumbnail();

  FileTypeThumbnail.fromJson(Map<String, dynamic> json);
}

class FileTypeUnknown extends FileType {
  @override
  String get tdType => 'fileTypeUnknown';

  @override
  Map<String, dynamic> get params => {};

  FileTypeUnknown();

  FileTypeUnknown.fromJson(Map<String, dynamic> json);
}

class FileTypeVideo extends FileType {
  @override
  String get tdType => 'fileTypeVideo';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVideo();

  FileTypeVideo.fromJson(Map<String, dynamic> json);
}

class FileTypeVideoNote extends FileType {
  @override
  String get tdType => 'fileTypeVideoNote';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVideoNote();

  FileTypeVideoNote.fromJson(Map<String, dynamic> json);
}

class FileTypeVoiceNote extends FileType {
  @override
  String get tdType => 'fileTypeVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVoiceNote();

  FileTypeVoiceNote.fromJson(Map<String, dynamic> json);
}

class FileTypeWallpaper extends FileType {
  @override
  String get tdType => 'fileTypeWallpaper';

  @override
  Map<String, dynamic> get params => {};

  FileTypeWallpaper();

  FileTypeWallpaper.fromJson(Map<String, dynamic> json);
}

class StorageStatisticsByFileType extends TdObject {
  @override
  String get tdType => 'storageStatisticsByFileType';

  FileType fileType;
  int size;
  int count;

  @override
  Map<String, dynamic> get params => {
    'file_type': fileType,
    'size': size,
    'count': count,
  };

  StorageStatisticsByFileType(
    this.fileType,
    this.size,
    this.count,
  );

  StorageStatisticsByFileType.fromJson(Map<String, dynamic> json):
    fileType = convertToTdObject(json['file_type']),
    size = json['size'] is int 
      ? convertToTdObject(json['size']) 
      : int.parse(convertToTdObject(json['size'])),
    count = json['count'] is int 
      ? convertToTdObject(json['count']) 
      : int.parse(convertToTdObject(json['count']));
}

class StorageStatisticsByChat extends TdObject {
  @override
  String get tdType => 'storageStatisticsByChat';

  int chatId;
  int size;
  int count;
  List<StorageStatisticsByFileType> byFileType;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'size': size,
    'count': count,
    'by_file_type': byFileType,
  };

  StorageStatisticsByChat(
    this.chatId,
    this.size,
    this.count,
    this.byFileType,
  );

  StorageStatisticsByChat.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    size = json['size'] is int 
      ? convertToTdObject(json['size']) 
      : int.parse(convertToTdObject(json['size'])),
    count = json['count'] is int 
      ? convertToTdObject(json['count']) 
      : int.parse(convertToTdObject(json['count'])),
    byFileType = convertToTdObject(castList<StorageStatisticsByFileType>(json['by_file_type']));
}

class StorageStatistics extends TdObject {
  @override
  String get tdType => 'storageStatistics';

  int size;
  int count;
  List<StorageStatisticsByChat> byChat;

  @override
  Map<String, dynamic> get params => {
    'size': size,
    'count': count,
    'by_chat': byChat,
  };

  StorageStatistics(
    this.size,
    this.count,
    this.byChat,
  );

  StorageStatistics.fromJson(Map<String, dynamic> json):
    size = json['size'] is int 
      ? convertToTdObject(json['size']) 
      : int.parse(convertToTdObject(json['size'])),
    count = json['count'] is int 
      ? convertToTdObject(json['count']) 
      : int.parse(convertToTdObject(json['count'])),
    byChat = convertToTdObject(castList<StorageStatisticsByChat>(json['by_chat']));
}

class StorageStatisticsFast extends TdObject {
  @override
  String get tdType => 'storageStatisticsFast';

  int filesSize;
  int fileCount;
  int databaseSize;
  int languagePackDatabaseSize;
  int logSize;

  @override
  Map<String, dynamic> get params => {
    'files_size': filesSize,
    'file_count': fileCount,
    'database_size': databaseSize,
    'language_pack_database_size': languagePackDatabaseSize,
    'log_size': logSize,
  };

  StorageStatisticsFast(
    this.filesSize,
    this.fileCount,
    this.databaseSize,
    this.languagePackDatabaseSize,
    this.logSize,
  );

  StorageStatisticsFast.fromJson(Map<String, dynamic> json):
    filesSize = json['files_size'] is int 
      ? convertToTdObject(json['files_size']) 
      : int.parse(convertToTdObject(json['files_size'])),
    fileCount = json['file_count'] is int 
      ? convertToTdObject(json['file_count']) 
      : int.parse(convertToTdObject(json['file_count'])),
    databaseSize = json['database_size'] is int 
      ? convertToTdObject(json['database_size']) 
      : int.parse(convertToTdObject(json['database_size'])),
    languagePackDatabaseSize = json['language_pack_database_size'] is int 
      ? convertToTdObject(json['language_pack_database_size']) 
      : int.parse(convertToTdObject(json['language_pack_database_size'])),
    logSize = json['log_size'] is int 
      ? convertToTdObject(json['log_size']) 
      : int.parse(convertToTdObject(json['log_size']));
}

class DatabaseStatistics extends TdObject {
  @override
  String get tdType => 'databaseStatistics';

  String statistics;

  @override
  Map<String, dynamic> get params => {
    'statistics': statistics,
  };

  DatabaseStatistics(
    this.statistics,
  );

  DatabaseStatistics.fromJson(Map<String, dynamic> json):
    statistics = convertToTdObject(json['statistics']);
}

abstract class NetworkType extends TdObject {}

class NetworkTypeNone extends NetworkType {
  @override
  String get tdType => 'networkTypeNone';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeNone();

  NetworkTypeNone.fromJson(Map<String, dynamic> json);
}

class NetworkTypeMobile extends NetworkType {
  @override
  String get tdType => 'networkTypeMobile';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeMobile();

  NetworkTypeMobile.fromJson(Map<String, dynamic> json);
}

class NetworkTypeMobileRoaming extends NetworkType {
  @override
  String get tdType => 'networkTypeMobileRoaming';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeMobileRoaming();

  NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json);
}

class NetworkTypeWiFi extends NetworkType {
  @override
  String get tdType => 'networkTypeWiFi';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeWiFi();

  NetworkTypeWiFi.fromJson(Map<String, dynamic> json);
}

class NetworkTypeOther extends NetworkType {
  @override
  String get tdType => 'networkTypeOther';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeOther();

  NetworkTypeOther.fromJson(Map<String, dynamic> json);
}

abstract class NetworkStatisticsEntry extends TdObject {}

class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  @override
  String get tdType => 'networkStatisticsEntryFile';

  FileType fileType;
  NetworkType networkType;
  int sentBytes;
  int receivedBytes;

  @override
  Map<String, dynamic> get params => {
    'file_type': fileType,
    'network_type': networkType,
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
  };

  NetworkStatisticsEntryFile(
    this.fileType,
    this.networkType,
    this.sentBytes,
    this.receivedBytes,
  );

  NetworkStatisticsEntryFile.fromJson(Map<String, dynamic> json):
    fileType = convertToTdObject(json['file_type']),
    networkType = convertToTdObject(json['network_type']),
    sentBytes = json['sent_bytes'] is int 
      ? convertToTdObject(json['sent_bytes']) 
      : int.parse(convertToTdObject(json['sent_bytes'])),
    receivedBytes = json['received_bytes'] is int 
      ? convertToTdObject(json['received_bytes']) 
      : int.parse(convertToTdObject(json['received_bytes']));
}

class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  @override
  String get tdType => 'networkStatisticsEntryCall';

  NetworkType networkType;
  int sentBytes;
  int receivedBytes;
  double duration;

  @override
  Map<String, dynamic> get params => {
    'network_type': networkType,
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
    'duration': duration,
  };

  NetworkStatisticsEntryCall(
    this.networkType,
    this.sentBytes,
    this.receivedBytes,
    this.duration,
  );

  NetworkStatisticsEntryCall.fromJson(Map<String, dynamic> json):
    networkType = convertToTdObject(json['network_type']),
    sentBytes = json['sent_bytes'] is int 
      ? convertToTdObject(json['sent_bytes']) 
      : int.parse(convertToTdObject(json['sent_bytes'])),
    receivedBytes = json['received_bytes'] is int 
      ? convertToTdObject(json['received_bytes']) 
      : int.parse(convertToTdObject(json['received_bytes'])),
    duration = convertToTdObject(json['duration']);
}

class NetworkStatistics extends TdObject {
  @override
  String get tdType => 'networkStatistics';

  int sinceDate;
  List<NetworkStatisticsEntry> entries;

  @override
  Map<String, dynamic> get params => {
    'since_date': sinceDate,
    'entries': entries,
  };

  NetworkStatistics(
    this.sinceDate,
    this.entries,
  );

  NetworkStatistics.fromJson(Map<String, dynamic> json):
    sinceDate = json['since_date'] is int 
      ? convertToTdObject(json['since_date']) 
      : int.parse(convertToTdObject(json['since_date'])),
    entries = convertToTdObject(castList<NetworkStatisticsEntry>(json['entries']));
}

class AutoDownloadSettings extends TdObject {
  @override
  String get tdType => 'autoDownloadSettings';

  bool isAutoDownloadEnabled;
  int maxPhotoFileSize;
  int maxVideoFileSize;
  int maxOtherFileSize;
  int videoUploadBitrate;
  bool preloadLargeVideos;
  bool preloadNextAudio;
  bool useLessDataForCalls;

  @override
  Map<String, dynamic> get params => {
    'is_auto_download_enabled': isAutoDownloadEnabled,
    'max_photo_file_size': maxPhotoFileSize,
    'max_video_file_size': maxVideoFileSize,
    'max_other_file_size': maxOtherFileSize,
    'video_upload_bitrate': videoUploadBitrate,
    'preload_large_videos': preloadLargeVideos,
    'preload_next_audio': preloadNextAudio,
    'use_less_data_for_calls': useLessDataForCalls,
  };

  AutoDownloadSettings(
    this.isAutoDownloadEnabled,
    this.maxPhotoFileSize,
    this.maxVideoFileSize,
    this.maxOtherFileSize,
    this.videoUploadBitrate,
    this.preloadLargeVideos,
    this.preloadNextAudio,
    this.useLessDataForCalls,
  );

  AutoDownloadSettings.fromJson(Map<String, dynamic> json):
    isAutoDownloadEnabled = convertToTdObject(json['is_auto_download_enabled']),
    maxPhotoFileSize = json['max_photo_file_size'] is int 
      ? convertToTdObject(json['max_photo_file_size']) 
      : int.parse(convertToTdObject(json['max_photo_file_size'])),
    maxVideoFileSize = json['max_video_file_size'] is int 
      ? convertToTdObject(json['max_video_file_size']) 
      : int.parse(convertToTdObject(json['max_video_file_size'])),
    maxOtherFileSize = json['max_other_file_size'] is int 
      ? convertToTdObject(json['max_other_file_size']) 
      : int.parse(convertToTdObject(json['max_other_file_size'])),
    videoUploadBitrate = json['video_upload_bitrate'] is int 
      ? convertToTdObject(json['video_upload_bitrate']) 
      : int.parse(convertToTdObject(json['video_upload_bitrate'])),
    preloadLargeVideos = convertToTdObject(json['preload_large_videos']),
    preloadNextAudio = convertToTdObject(json['preload_next_audio']),
    useLessDataForCalls = convertToTdObject(json['use_less_data_for_calls']);
}

class AutoDownloadSettingsPresets extends TdObject {
  @override
  String get tdType => 'autoDownloadSettingsPresets';

  AutoDownloadSettings low;
  AutoDownloadSettings medium;
  AutoDownloadSettings high;

  @override
  Map<String, dynamic> get params => {
    'low': low,
    'medium': medium,
    'high': high,
  };

  AutoDownloadSettingsPresets(
    this.low,
    this.medium,
    this.high,
  );

  AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json):
    low = convertToTdObject(json['low']),
    medium = convertToTdObject(json['medium']),
    high = convertToTdObject(json['high']);
}

abstract class ConnectionState extends TdObject {}

class ConnectionStateWaitingForNetwork extends ConnectionState {
  @override
  String get tdType => 'connectionStateWaitingForNetwork';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateWaitingForNetwork();

  ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json);
}

class ConnectionStateConnectingToProxy extends ConnectionState {
  @override
  String get tdType => 'connectionStateConnectingToProxy';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateConnectingToProxy();

  ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json);
}

class ConnectionStateConnecting extends ConnectionState {
  @override
  String get tdType => 'connectionStateConnecting';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateConnecting();

  ConnectionStateConnecting.fromJson(Map<String, dynamic> json);
}

class ConnectionStateUpdating extends ConnectionState {
  @override
  String get tdType => 'connectionStateUpdating';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateUpdating();

  ConnectionStateUpdating.fromJson(Map<String, dynamic> json);
}

class ConnectionStateReady extends ConnectionState {
  @override
  String get tdType => 'connectionStateReady';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateReady();

  ConnectionStateReady.fromJson(Map<String, dynamic> json);
}

abstract class TopChatCategory extends TdObject {}

class TopChatCategoryUsers extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryUsers';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryUsers();

  TopChatCategoryUsers.fromJson(Map<String, dynamic> json);
}

class TopChatCategoryBots extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryBots';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryBots();

  TopChatCategoryBots.fromJson(Map<String, dynamic> json);
}

class TopChatCategoryGroups extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryGroups';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryGroups();

  TopChatCategoryGroups.fromJson(Map<String, dynamic> json);
}

class TopChatCategoryChannels extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryChannels';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryChannels();

  TopChatCategoryChannels.fromJson(Map<String, dynamic> json);
}

class TopChatCategoryInlineBots extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryInlineBots';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryInlineBots();

  TopChatCategoryInlineBots.fromJson(Map<String, dynamic> json);
}

class TopChatCategoryCalls extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryCalls';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryCalls();

  TopChatCategoryCalls.fromJson(Map<String, dynamic> json);
}

class TopChatCategoryForwardChats extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryForwardChats';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryForwardChats();

  TopChatCategoryForwardChats.fromJson(Map<String, dynamic> json);
}

abstract class TMeUrlType extends TdObject {}

class TMeUrlTypeUser extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeUser';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  TMeUrlTypeUser(
    this.userId,
  );

  TMeUrlTypeUser.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id']));
}

class TMeUrlTypeSupergroup extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeSupergroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  TMeUrlTypeSupergroup(
    this.supergroupId,
  );

  TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json):
    supergroupId = json['supergroup_id'] is int 
      ? convertToTdObject(json['supergroup_id']) 
      : int.parse(convertToTdObject(json['supergroup_id']));
}

class TMeUrlTypeChatInvite extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeChatInvite';

  ChatInviteLinkInfo info;

  @override
  Map<String, dynamic> get params => {
    'info': info,
  };

  TMeUrlTypeChatInvite(
    this.info,
  );

  TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json):
    info = convertToTdObject(json['info']);
}

class TMeUrlTypeStickerSet extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeStickerSet';

  int stickerSetId;

  @override
  Map<String, dynamic> get params => {
    'sticker_set_id': stickerSetId,
  };

  TMeUrlTypeStickerSet(
    this.stickerSetId,
  );

  TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json):
    stickerSetId = json['sticker_set_id'] is int 
      ? convertToTdObject(json['sticker_set_id']) 
      : int.parse(convertToTdObject(json['sticker_set_id']));
}

class TMeUrl extends TdObject {
  @override
  String get tdType => 'tMeUrl';

  String url;
  TMeUrlType type;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'type': type,
  };

  TMeUrl(
    this.url,
    this.type,
  );

  TMeUrl.fromJson(Map<String, dynamic> json):
    url = convertToTdObject(json['url']),
    type = convertToTdObject(json['type']);
}

class TMeUrls extends TdObject {
  @override
  String get tdType => 'tMeUrls';

  List<TMeUrl> urls;

  @override
  Map<String, dynamic> get params => {
    'urls': urls,
  };

  TMeUrls(
    this.urls,
  );

  TMeUrls.fromJson(Map<String, dynamic> json):
    urls = convertToTdObject(castList<TMeUrl>(json['urls']));
}

abstract class SuggestedAction extends TdObject {}

class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionEnableArchiveAndMuteNewChats';

  @override
  Map<String, dynamic> get params => {};

  SuggestedActionEnableArchiveAndMuteNewChats();

  SuggestedActionEnableArchiveAndMuteNewChats.fromJson(Map<String, dynamic> json);
}

class SuggestedActionCheckPassword extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionCheckPassword';

  @override
  Map<String, dynamic> get params => {};

  SuggestedActionCheckPassword();

  SuggestedActionCheckPassword.fromJson(Map<String, dynamic> json);
}

class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionCheckPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  SuggestedActionCheckPhoneNumber();

  SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json);
}

class SuggestedActionSeeTicksHint extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionSeeTicksHint';

  @override
  Map<String, dynamic> get params => {};

  SuggestedActionSeeTicksHint();

  SuggestedActionSeeTicksHint.fromJson(Map<String, dynamic> json);
}

class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionConvertToBroadcastGroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  SuggestedActionConvertToBroadcastGroup(
    this.supergroupId,
  );

  SuggestedActionConvertToBroadcastGroup.fromJson(Map<String, dynamic> json):
    supergroupId = json['supergroup_id'] is int 
      ? convertToTdObject(json['supergroup_id']) 
      : int.parse(convertToTdObject(json['supergroup_id']));
}

class Count extends TdObject {
  @override
  String get tdType => 'count';

  int count;

  @override
  Map<String, dynamic> get params => {
    'count': count,
  };

  Count(
    this.count,
  );

  Count.fromJson(Map<String, dynamic> json):
    count = json['count'] is int 
      ? convertToTdObject(json['count']) 
      : int.parse(convertToTdObject(json['count']));
}

class Text extends TdObject {
  @override
  String get tdType => 'text';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  Text(
    this.text,
  );

  Text.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']);
}

class Seconds extends TdObject {
  @override
  String get tdType => 'seconds';

  double seconds;

  @override
  Map<String, dynamic> get params => {
    'seconds': seconds,
  };

  Seconds(
    this.seconds,
  );

  Seconds.fromJson(Map<String, dynamic> json):
    seconds = convertToTdObject(json['seconds']);
}

class DeepLinkInfo extends TdObject {
  @override
  String get tdType => 'deepLinkInfo';

  FormattedText text;
  bool needUpdateApplication;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'need_update_application': needUpdateApplication,
  };

  DeepLinkInfo(
    this.text,
    this.needUpdateApplication,
  );

  DeepLinkInfo.fromJson(Map<String, dynamic> json):
    text = convertToTdObject(json['text']),
    needUpdateApplication = convertToTdObject(json['need_update_application']);
}

abstract class TextParseMode extends TdObject {}

class TextParseModeMarkdown extends TextParseMode {
  @override
  String get tdType => 'textParseModeMarkdown';

  int version;

  @override
  Map<String, dynamic> get params => {
    'version': version,
  };

  TextParseModeMarkdown(
    this.version,
  );

  TextParseModeMarkdown.fromJson(Map<String, dynamic> json):
    version = json['version'] is int 
      ? convertToTdObject(json['version']) 
      : int.parse(convertToTdObject(json['version']));
}

class TextParseModeHTML extends TextParseMode {
  @override
  String get tdType => 'textParseModeHTML';

  @override
  Map<String, dynamic> get params => {};

  TextParseModeHTML();

  TextParseModeHTML.fromJson(Map<String, dynamic> json);
}

abstract class ProxyType extends TdObject {}

class ProxyTypeSocks5 extends ProxyType {
  @override
  String get tdType => 'proxyTypeSocks5';

  String username;
  String password;

  @override
  Map<String, dynamic> get params => {
    'username': username,
    'password': password,
  };

  ProxyTypeSocks5(
    this.username,
    this.password,
  );

  ProxyTypeSocks5.fromJson(Map<String, dynamic> json):
    username = convertToTdObject(json['username']),
    password = convertToTdObject(json['password']);
}

class ProxyTypeHttp extends ProxyType {
  @override
  String get tdType => 'proxyTypeHttp';

  String username;
  String password;
  bool httpOnly;

  @override
  Map<String, dynamic> get params => {
    'username': username,
    'password': password,
    'http_only': httpOnly,
  };

  ProxyTypeHttp(
    this.username,
    this.password,
    this.httpOnly,
  );

  ProxyTypeHttp.fromJson(Map<String, dynamic> json):
    username = convertToTdObject(json['username']),
    password = convertToTdObject(json['password']),
    httpOnly = convertToTdObject(json['http_only']);
}

class ProxyTypeMtproto extends ProxyType {
  @override
  String get tdType => 'proxyTypeMtproto';

  String secret;

  @override
  Map<String, dynamic> get params => {
    'secret': secret,
  };

  ProxyTypeMtproto(
    this.secret,
  );

  ProxyTypeMtproto.fromJson(Map<String, dynamic> json):
    secret = convertToTdObject(json['secret']);
}

class Proxy extends TdObject {
  @override
  String get tdType => 'proxy';

  int id;
  String server;
  int port;
  int lastUsedDate;
  bool isEnabled;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'server': server,
    'port': port,
    'last_used_date': lastUsedDate,
    'is_enabled': isEnabled,
    'type': type,
  };

  Proxy(
    this.id,
    this.server,
    this.port,
    this.lastUsedDate,
    this.isEnabled,
    this.type,
  );

  Proxy.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    server = convertToTdObject(json['server']),
    port = json['port'] is int 
      ? convertToTdObject(json['port']) 
      : int.parse(convertToTdObject(json['port'])),
    lastUsedDate = json['last_used_date'] is int 
      ? convertToTdObject(json['last_used_date']) 
      : int.parse(convertToTdObject(json['last_used_date'])),
    isEnabled = convertToTdObject(json['is_enabled']),
    type = convertToTdObject(json['type']);
}

class Proxies extends TdObject {
  @override
  String get tdType => 'proxies';

  List<Proxy> proxies;

  @override
  Map<String, dynamic> get params => {
    'proxies': proxies,
  };

  Proxies(
    this.proxies,
  );

  Proxies.fromJson(Map<String, dynamic> json):
    proxies = convertToTdObject(castList<Proxy>(json['proxies']));
}

abstract class InputSticker extends TdObject {}

class InputStickerStatic extends InputSticker {
  @override
  String get tdType => 'inputStickerStatic';

  InputFile sticker;
  String emojis;
  MaskPosition? maskPosition;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'emojis': emojis,
    'mask_position': maskPosition,
  };

  InputStickerStatic(
    this.sticker,
    this.emojis,
    this.maskPosition,
  );

  InputStickerStatic.fromJson(Map<String, dynamic> json):
    sticker = convertToTdObject(json['sticker']),
    emojis = convertToTdObject(json['emojis']),
    maskPosition = convertToTdObject(json['mask_position']);
}

class InputStickerAnimated extends InputSticker {
  @override
  String get tdType => 'inputStickerAnimated';

  InputFile sticker;
  String emojis;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'emojis': emojis,
  };

  InputStickerAnimated(
    this.sticker,
    this.emojis,
  );

  InputStickerAnimated.fromJson(Map<String, dynamic> json):
    sticker = convertToTdObject(json['sticker']),
    emojis = convertToTdObject(json['emojis']);
}

class DateRange extends TdObject {
  @override
  String get tdType => 'dateRange';

  int startDate;
  int endDate;

  @override
  Map<String, dynamic> get params => {
    'start_date': startDate,
    'end_date': endDate,
  };

  DateRange(
    this.startDate,
    this.endDate,
  );

  DateRange.fromJson(Map<String, dynamic> json):
    startDate = json['start_date'] is int 
      ? convertToTdObject(json['start_date']) 
      : int.parse(convertToTdObject(json['start_date'])),
    endDate = json['end_date'] is int 
      ? convertToTdObject(json['end_date']) 
      : int.parse(convertToTdObject(json['end_date']));
}

class StatisticalValue extends TdObject {
  @override
  String get tdType => 'statisticalValue';

  double value;
  double previousValue;
  double growthRatePercentage;

  @override
  Map<String, dynamic> get params => {
    'value': value,
    'previous_value': previousValue,
    'growth_rate_percentage': growthRatePercentage,
  };

  StatisticalValue(
    this.value,
    this.previousValue,
    this.growthRatePercentage,
  );

  StatisticalValue.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']),
    previousValue = convertToTdObject(json['previous_value']),
    growthRatePercentage = convertToTdObject(json['growth_rate_percentage']);
}

abstract class StatisticalGraph extends TdObject {}

class StatisticalGraphData extends StatisticalGraph {
  @override
  String get tdType => 'statisticalGraphData';

  String jsonData;
  String zoomToken;

  @override
  Map<String, dynamic> get params => {
    'json_data': jsonData,
    'zoom_token': zoomToken,
  };

  StatisticalGraphData(
    this.jsonData,
    this.zoomToken,
  );

  StatisticalGraphData.fromJson(Map<String, dynamic> json):
    jsonData = convertToTdObject(json['json_data']),
    zoomToken = convertToTdObject(json['zoom_token']);
}

class StatisticalGraphAsync extends StatisticalGraph {
  @override
  String get tdType => 'statisticalGraphAsync';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  StatisticalGraphAsync(
    this.token,
  );

  StatisticalGraphAsync.fromJson(Map<String, dynamic> json):
    token = convertToTdObject(json['token']);
}

class StatisticalGraphError extends StatisticalGraph {
  @override
  String get tdType => 'statisticalGraphError';

  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'error_message': errorMessage,
  };

  StatisticalGraphError(
    this.errorMessage,
  );

  StatisticalGraphError.fromJson(Map<String, dynamic> json):
    errorMessage = convertToTdObject(json['error_message']);
}

class ChatStatisticsMessageInteractionInfo extends TdObject {
  @override
  String get tdType => 'chatStatisticsMessageInteractionInfo';

  int messageId;
  int viewCount;
  int forwardCount;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
    'view_count': viewCount,
    'forward_count': forwardCount,
  };

  ChatStatisticsMessageInteractionInfo(
    this.messageId,
    this.viewCount,
    this.forwardCount,
  );

  ChatStatisticsMessageInteractionInfo.fromJson(Map<String, dynamic> json):
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    viewCount = json['view_count'] is int 
      ? convertToTdObject(json['view_count']) 
      : int.parse(convertToTdObject(json['view_count'])),
    forwardCount = json['forward_count'] is int 
      ? convertToTdObject(json['forward_count']) 
      : int.parse(convertToTdObject(json['forward_count']));
}

class ChatStatisticsMessageSenderInfo extends TdObject {
  @override
  String get tdType => 'chatStatisticsMessageSenderInfo';

  int userId;
  int sentMessageCount;
  int averageCharacterCount;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'sent_message_count': sentMessageCount,
    'average_character_count': averageCharacterCount,
  };

  ChatStatisticsMessageSenderInfo(
    this.userId,
    this.sentMessageCount,
    this.averageCharacterCount,
  );

  ChatStatisticsMessageSenderInfo.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    sentMessageCount = json['sent_message_count'] is int 
      ? convertToTdObject(json['sent_message_count']) 
      : int.parse(convertToTdObject(json['sent_message_count'])),
    averageCharacterCount = json['average_character_count'] is int 
      ? convertToTdObject(json['average_character_count']) 
      : int.parse(convertToTdObject(json['average_character_count']));
}

class ChatStatisticsAdministratorActionsInfo extends TdObject {
  @override
  String get tdType => 'chatStatisticsAdministratorActionsInfo';

  int userId;
  int deletedMessageCount;
  int bannedUserCount;
  int restrictedUserCount;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'deleted_message_count': deletedMessageCount,
    'banned_user_count': bannedUserCount,
    'restricted_user_count': restrictedUserCount,
  };

  ChatStatisticsAdministratorActionsInfo(
    this.userId,
    this.deletedMessageCount,
    this.bannedUserCount,
    this.restrictedUserCount,
  );

  ChatStatisticsAdministratorActionsInfo.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    deletedMessageCount = json['deleted_message_count'] is int 
      ? convertToTdObject(json['deleted_message_count']) 
      : int.parse(convertToTdObject(json['deleted_message_count'])),
    bannedUserCount = json['banned_user_count'] is int 
      ? convertToTdObject(json['banned_user_count']) 
      : int.parse(convertToTdObject(json['banned_user_count'])),
    restrictedUserCount = json['restricted_user_count'] is int 
      ? convertToTdObject(json['restricted_user_count']) 
      : int.parse(convertToTdObject(json['restricted_user_count']));
}

class ChatStatisticsInviterInfo extends TdObject {
  @override
  String get tdType => 'chatStatisticsInviterInfo';

  int userId;
  int addedMemberCount;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'added_member_count': addedMemberCount,
  };

  ChatStatisticsInviterInfo(
    this.userId,
    this.addedMemberCount,
  );

  ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    addedMemberCount = json['added_member_count'] is int 
      ? convertToTdObject(json['added_member_count']) 
      : int.parse(convertToTdObject(json['added_member_count']));
}

abstract class ChatStatistics extends TdObject {}

class ChatStatisticsSupergroup extends ChatStatistics {
  @override
  String get tdType => 'chatStatisticsSupergroup';

  DateRange period;
  StatisticalValue memberCount;
  StatisticalValue messageCount;
  StatisticalValue viewerCount;
  StatisticalValue senderCount;
  StatisticalGraph memberCountGraph;
  StatisticalGraph joinGraph;
  StatisticalGraph joinBySourceGraph;
  StatisticalGraph languageGraph;
  StatisticalGraph messageContentGraph;
  StatisticalGraph actionGraph;
  StatisticalGraph dayGraph;
  StatisticalGraph weekGraph;
  List<ChatStatisticsMessageSenderInfo> topSenders;
  List<ChatStatisticsAdministratorActionsInfo> topAdministrators;
  List<ChatStatisticsInviterInfo> topInviters;

  @override
  Map<String, dynamic> get params => {
    'period': period,
    'member_count': memberCount,
    'message_count': messageCount,
    'viewer_count': viewerCount,
    'sender_count': senderCount,
    'member_count_graph': memberCountGraph,
    'join_graph': joinGraph,
    'join_by_source_graph': joinBySourceGraph,
    'language_graph': languageGraph,
    'message_content_graph': messageContentGraph,
    'action_graph': actionGraph,
    'day_graph': dayGraph,
    'week_graph': weekGraph,
    'top_senders': topSenders,
    'top_administrators': topAdministrators,
    'top_inviters': topInviters,
  };

  ChatStatisticsSupergroup(
    this.period,
    this.memberCount,
    this.messageCount,
    this.viewerCount,
    this.senderCount,
    this.memberCountGraph,
    this.joinGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageContentGraph,
    this.actionGraph,
    this.dayGraph,
    this.weekGraph,
    this.topSenders,
    this.topAdministrators,
    this.topInviters,
  );

  ChatStatisticsSupergroup.fromJson(Map<String, dynamic> json):
    period = convertToTdObject(json['period']),
    memberCount = convertToTdObject(json['member_count']),
    messageCount = convertToTdObject(json['message_count']),
    viewerCount = convertToTdObject(json['viewer_count']),
    senderCount = convertToTdObject(json['sender_count']),
    memberCountGraph = convertToTdObject(json['member_count_graph']),
    joinGraph = convertToTdObject(json['join_graph']),
    joinBySourceGraph = convertToTdObject(json['join_by_source_graph']),
    languageGraph = convertToTdObject(json['language_graph']),
    messageContentGraph = convertToTdObject(json['message_content_graph']),
    actionGraph = convertToTdObject(json['action_graph']),
    dayGraph = convertToTdObject(json['day_graph']),
    weekGraph = convertToTdObject(json['week_graph']),
    topSenders = convertToTdObject(castList<ChatStatisticsMessageSenderInfo>(json['top_senders'])),
    topAdministrators = convertToTdObject(castList<ChatStatisticsAdministratorActionsInfo>(json['top_administrators'])),
    topInviters = convertToTdObject(castList<ChatStatisticsInviterInfo>(json['top_inviters']));
}

class ChatStatisticsChannel extends ChatStatistics {
  @override
  String get tdType => 'chatStatisticsChannel';

  DateRange period;
  StatisticalValue memberCount;
  StatisticalValue meanViewCount;
  StatisticalValue meanShareCount;
  double enabledNotificationsPercentage;
  StatisticalGraph memberCountGraph;
  StatisticalGraph joinGraph;
  StatisticalGraph muteGraph;
  StatisticalGraph viewCountByHourGraph;
  StatisticalGraph viewCountBySourceGraph;
  StatisticalGraph joinBySourceGraph;
  StatisticalGraph languageGraph;
  StatisticalGraph messageInteractionGraph;
  StatisticalGraph instantViewInteractionGraph;
  List<ChatStatisticsMessageInteractionInfo> recentMessageInteractions;

  @override
  Map<String, dynamic> get params => {
    'period': period,
    'member_count': memberCount,
    'mean_view_count': meanViewCount,
    'mean_share_count': meanShareCount,
    'enabled_notifications_percentage': enabledNotificationsPercentage,
    'member_count_graph': memberCountGraph,
    'join_graph': joinGraph,
    'mute_graph': muteGraph,
    'view_count_by_hour_graph': viewCountByHourGraph,
    'view_count_by_source_graph': viewCountBySourceGraph,
    'join_by_source_graph': joinBySourceGraph,
    'language_graph': languageGraph,
    'message_interaction_graph': messageInteractionGraph,
    'instant_view_interaction_graph': instantViewInteractionGraph,
    'recent_message_interactions': recentMessageInteractions,
  };

  ChatStatisticsChannel(
    this.period,
    this.memberCount,
    this.meanViewCount,
    this.meanShareCount,
    this.enabledNotificationsPercentage,
    this.memberCountGraph,
    this.joinGraph,
    this.muteGraph,
    this.viewCountByHourGraph,
    this.viewCountBySourceGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageInteractionGraph,
    this.instantViewInteractionGraph,
    this.recentMessageInteractions,
  );

  ChatStatisticsChannel.fromJson(Map<String, dynamic> json):
    period = convertToTdObject(json['period']),
    memberCount = convertToTdObject(json['member_count']),
    meanViewCount = convertToTdObject(json['mean_view_count']),
    meanShareCount = convertToTdObject(json['mean_share_count']),
    enabledNotificationsPercentage = convertToTdObject(json['enabled_notifications_percentage']),
    memberCountGraph = convertToTdObject(json['member_count_graph']),
    joinGraph = convertToTdObject(json['join_graph']),
    muteGraph = convertToTdObject(json['mute_graph']),
    viewCountByHourGraph = convertToTdObject(json['view_count_by_hour_graph']),
    viewCountBySourceGraph = convertToTdObject(json['view_count_by_source_graph']),
    joinBySourceGraph = convertToTdObject(json['join_by_source_graph']),
    languageGraph = convertToTdObject(json['language_graph']),
    messageInteractionGraph = convertToTdObject(json['message_interaction_graph']),
    instantViewInteractionGraph = convertToTdObject(json['instant_view_interaction_graph']),
    recentMessageInteractions = convertToTdObject(castList<ChatStatisticsMessageInteractionInfo>(json['recent_message_interactions']));
}

class MessageStatistics extends TdObject {
  @override
  String get tdType => 'messageStatistics';

  StatisticalGraph messageInteractionGraph;

  @override
  Map<String, dynamic> get params => {
    'message_interaction_graph': messageInteractionGraph,
  };

  MessageStatistics(
    this.messageInteractionGraph,
  );

  MessageStatistics.fromJson(Map<String, dynamic> json):
    messageInteractionGraph = convertToTdObject(json['message_interaction_graph']);
}

class Point extends TdObject {
  @override
  String get tdType => 'point';

  double x;
  double y;

  @override
  Map<String, dynamic> get params => {
    'x': x,
    'y': y,
  };

  Point(
    this.x,
    this.y,
  );

  Point.fromJson(Map<String, dynamic> json):
    x = convertToTdObject(json['x']),
    y = convertToTdObject(json['y']);
}

abstract class VectorPathCommand extends TdObject {}

class VectorPathCommandLine extends VectorPathCommand {
  @override
  String get tdType => 'vectorPathCommandLine';

  Point endPoint;

  @override
  Map<String, dynamic> get params => {
    'end_point': endPoint,
  };

  VectorPathCommandLine(
    this.endPoint,
  );

  VectorPathCommandLine.fromJson(Map<String, dynamic> json):
    endPoint = convertToTdObject(json['end_point']);
}

class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  @override
  String get tdType => 'vectorPathCommandCubicBezierCurve';

  Point startControlPoint;
  Point endControlPoint;
  Point endPoint;

  @override
  Map<String, dynamic> get params => {
    'start_control_point': startControlPoint,
    'end_control_point': endControlPoint,
    'end_point': endPoint,
  };

  VectorPathCommandCubicBezierCurve(
    this.startControlPoint,
    this.endControlPoint,
    this.endPoint,
  );

  VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json):
    startControlPoint = convertToTdObject(json['start_control_point']),
    endControlPoint = convertToTdObject(json['end_control_point']),
    endPoint = convertToTdObject(json['end_point']);
}

abstract class BotCommandScope extends TdObject {}

class BotCommandScopeDefault extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeDefault';

  @override
  Map<String, dynamic> get params => {};

  BotCommandScopeDefault();

  BotCommandScopeDefault.fromJson(Map<String, dynamic> json);
}

class BotCommandScopeAllPrivateChats extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeAllPrivateChats';

  @override
  Map<String, dynamic> get params => {};

  BotCommandScopeAllPrivateChats();

  BotCommandScopeAllPrivateChats.fromJson(Map<String, dynamic> json);
}

class BotCommandScopeAllGroupChats extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeAllGroupChats';

  @override
  Map<String, dynamic> get params => {};

  BotCommandScopeAllGroupChats();

  BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json);
}

class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeAllChatAdministrators';

  @override
  Map<String, dynamic> get params => {};

  BotCommandScopeAllChatAdministrators();

  BotCommandScopeAllChatAdministrators.fromJson(Map<String, dynamic> json);
}

class BotCommandScopeChat extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  BotCommandScopeChat(
    this.chatId,
  );

  BotCommandScopeChat.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id']));
}

class BotCommandScopeChatAdministrators extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeChatAdministrators';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  BotCommandScopeChatAdministrators(
    this.chatId,
  );

  BotCommandScopeChatAdministrators.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id']));
}

class BotCommandScopeChatMember extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeChatMember';

  int chatId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
  };

  BotCommandScopeChatMember(
    this.chatId,
    this.userId,
  );

  BotCommandScopeChatMember.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id']));
}

abstract class Update extends TdObject {}

class UpdateAuthorizationState extends Update {
  @override
  String get tdType => 'updateAuthorizationState';

  AuthorizationState authorizationState;

  @override
  Map<String, dynamic> get params => {
    'authorization_state': authorizationState,
  };

  UpdateAuthorizationState(
    this.authorizationState,
  );

  UpdateAuthorizationState.fromJson(Map<String, dynamic> json):
    authorizationState = convertToTdObject(json['authorization_state']);
}

class UpdateNewMessage extends Update {
  @override
  String get tdType => 'updateNewMessage';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  UpdateNewMessage(
    this.message,
  );

  UpdateNewMessage.fromJson(Map<String, dynamic> json):
    message = convertToTdObject(json['message']);
}

class UpdateMessageSendAcknowledged extends Update {
  @override
  String get tdType => 'updateMessageSendAcknowledged';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UpdateMessageSendAcknowledged(
    this.chatId,
    this.messageId,
  );

  UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id']));
}

class UpdateMessageSendSucceeded extends Update {
  @override
  String get tdType => 'updateMessageSendSucceeded';

  Message message;
  int oldMessageId;

  @override
  Map<String, dynamic> get params => {
    'message': message,
    'old_message_id': oldMessageId,
  };

  UpdateMessageSendSucceeded(
    this.message,
    this.oldMessageId,
  );

  UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json):
    message = convertToTdObject(json['message']),
    oldMessageId = json['old_message_id'] is int 
      ? convertToTdObject(json['old_message_id']) 
      : int.parse(convertToTdObject(json['old_message_id']));
}

class UpdateMessageSendFailed extends Update {
  @override
  String get tdType => 'updateMessageSendFailed';

  Message message;
  int oldMessageId;
  int errorCode;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'message': message,
    'old_message_id': oldMessageId,
    'error_code': errorCode,
    'error_message': errorMessage,
  };

  UpdateMessageSendFailed(
    this.message,
    this.oldMessageId,
    this.errorCode,
    this.errorMessage,
  );

  UpdateMessageSendFailed.fromJson(Map<String, dynamic> json):
    message = convertToTdObject(json['message']),
    oldMessageId = json['old_message_id'] is int 
      ? convertToTdObject(json['old_message_id']) 
      : int.parse(convertToTdObject(json['old_message_id'])),
    errorCode = json['error_code'] is int 
      ? convertToTdObject(json['error_code']) 
      : int.parse(convertToTdObject(json['error_code'])),
    errorMessage = convertToTdObject(json['error_message']);
}

class UpdateMessageContent extends Update {
  @override
  String get tdType => 'updateMessageContent';

  int chatId;
  int messageId;
  MessageContent newContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'new_content': newContent,
  };

  UpdateMessageContent(
    this.chatId,
    this.messageId,
    this.newContent,
  );

  UpdateMessageContent.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    newContent = convertToTdObject(json['new_content']);
}

class UpdateMessageEdited extends Update {
  @override
  String get tdType => 'updateMessageEdited';

  int chatId;
  int messageId;
  int editDate;
  ReplyMarkup? replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'edit_date': editDate,
    'reply_markup': replyMarkup,
  };

  UpdateMessageEdited(
    this.chatId,
    this.messageId,
    this.editDate,
    this.replyMarkup,
  );

  UpdateMessageEdited.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    editDate = json['edit_date'] is int 
      ? convertToTdObject(json['edit_date']) 
      : int.parse(convertToTdObject(json['edit_date'])),
    replyMarkup = convertToTdObject(json['reply_markup']);
}

class UpdateMessageIsPinned extends Update {
  @override
  String get tdType => 'updateMessageIsPinned';

  int chatId;
  int messageId;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'is_pinned': isPinned,
  };

  UpdateMessageIsPinned(
    this.chatId,
    this.messageId,
    this.isPinned,
  );

  UpdateMessageIsPinned.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    isPinned = convertToTdObject(json['is_pinned']);
}

class UpdateMessageInteractionInfo extends Update {
  @override
  String get tdType => 'updateMessageInteractionInfo';

  int chatId;
  int messageId;
  MessageInteractionInfo? interactionInfo;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'interaction_info': interactionInfo,
  };

  UpdateMessageInteractionInfo(
    this.chatId,
    this.messageId,
    this.interactionInfo,
  );

  UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    interactionInfo = convertToTdObject(json['interaction_info']);
}

class UpdateMessageContentOpened extends Update {
  @override
  String get tdType => 'updateMessageContentOpened';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UpdateMessageContentOpened(
    this.chatId,
    this.messageId,
  );

  UpdateMessageContentOpened.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id']));
}

class UpdateMessageMentionRead extends Update {
  @override
  String get tdType => 'updateMessageMentionRead';

  int chatId;
  int messageId;
  int unreadMentionCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'unread_mention_count': unreadMentionCount,
  };

  UpdateMessageMentionRead(
    this.chatId,
    this.messageId,
    this.unreadMentionCount,
  );

  UpdateMessageMentionRead.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    unreadMentionCount = json['unread_mention_count'] is int 
      ? convertToTdObject(json['unread_mention_count']) 
      : int.parse(convertToTdObject(json['unread_mention_count']));
}

class UpdateMessageLiveLocationViewed extends Update {
  @override
  String get tdType => 'updateMessageLiveLocationViewed';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UpdateMessageLiveLocationViewed(
    this.chatId,
    this.messageId,
  );

  UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id']));
}

class UpdateNewChat extends Update {
  @override
  String get tdType => 'updateNewChat';

  Chat chat;

  @override
  Map<String, dynamic> get params => {
    'chat': chat,
  };

  UpdateNewChat(
    this.chat,
  );

  UpdateNewChat.fromJson(Map<String, dynamic> json):
    chat = convertToTdObject(json['chat']);
}

class UpdateChatTitle extends Update {
  @override
  String get tdType => 'updateChatTitle';

  int chatId;
  String title;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'title': title,
  };

  UpdateChatTitle(
    this.chatId,
    this.title,
  );

  UpdateChatTitle.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    title = convertToTdObject(json['title']);
}

class UpdateChatPhoto extends Update {
  @override
  String get tdType => 'updateChatPhoto';

  int chatId;
  ChatPhotoInfo? photo;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'photo': photo,
  };

  UpdateChatPhoto(
    this.chatId,
    this.photo,
  );

  UpdateChatPhoto.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    photo = convertToTdObject(json['photo']);
}

class UpdateChatPermissions extends Update {
  @override
  String get tdType => 'updateChatPermissions';

  int chatId;
  ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'permissions': permissions,
  };

  UpdateChatPermissions(
    this.chatId,
    this.permissions,
  );

  UpdateChatPermissions.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    permissions = convertToTdObject(json['permissions']);
}

class UpdateChatLastMessage extends Update {
  @override
  String get tdType => 'updateChatLastMessage';

  int chatId;
  Message? lastMessage;
  List<ChatPosition> positions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_message': lastMessage,
    'positions': positions,
  };

  UpdateChatLastMessage(
    this.chatId,
    this.lastMessage,
    this.positions,
  );

  UpdateChatLastMessage.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    lastMessage = convertToTdObject(json['last_message']),
    positions = convertToTdObject(castList<ChatPosition>(json['positions']));
}

class UpdateChatPosition extends Update {
  @override
  String get tdType => 'updateChatPosition';

  int chatId;
  ChatPosition position;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'position': position,
  };

  UpdateChatPosition(
    this.chatId,
    this.position,
  );

  UpdateChatPosition.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    position = convertToTdObject(json['position']);
}

class UpdateChatIsMarkedAsUnread extends Update {
  @override
  String get tdType => 'updateChatIsMarkedAsUnread';

  int chatId;
  bool isMarkedAsUnread;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_marked_as_unread': isMarkedAsUnread,
  };

  UpdateChatIsMarkedAsUnread(
    this.chatId,
    this.isMarkedAsUnread,
  );

  UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    isMarkedAsUnread = convertToTdObject(json['is_marked_as_unread']);
}

class UpdateChatIsBlocked extends Update {
  @override
  String get tdType => 'updateChatIsBlocked';

  int chatId;
  bool isBlocked;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_blocked': isBlocked,
  };

  UpdateChatIsBlocked(
    this.chatId,
    this.isBlocked,
  );

  UpdateChatIsBlocked.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    isBlocked = convertToTdObject(json['is_blocked']);
}

class UpdateChatHasScheduledMessages extends Update {
  @override
  String get tdType => 'updateChatHasScheduledMessages';

  int chatId;
  bool hasScheduledMessages;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'has_scheduled_messages': hasScheduledMessages,
  };

  UpdateChatHasScheduledMessages(
    this.chatId,
    this.hasScheduledMessages,
  );

  UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    hasScheduledMessages = convertToTdObject(json['has_scheduled_messages']);
}

class UpdateChatVoiceChat extends Update {
  @override
  String get tdType => 'updateChatVoiceChat';

  int chatId;
  VoiceChat voiceChat;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'voice_chat': voiceChat,
  };

  UpdateChatVoiceChat(
    this.chatId,
    this.voiceChat,
  );

  UpdateChatVoiceChat.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    voiceChat = convertToTdObject(json['voice_chat']);
}

class UpdateChatDefaultDisableNotification extends Update {
  @override
  String get tdType => 'updateChatDefaultDisableNotification';

  int chatId;
  bool defaultDisableNotification;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'default_disable_notification': defaultDisableNotification,
  };

  UpdateChatDefaultDisableNotification(
    this.chatId,
    this.defaultDisableNotification,
  );

  UpdateChatDefaultDisableNotification.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    defaultDisableNotification = convertToTdObject(json['default_disable_notification']);
}

class UpdateChatReadInbox extends Update {
  @override
  String get tdType => 'updateChatReadInbox';

  int chatId;
  int lastReadInboxMessageId;
  int unreadCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'unread_count': unreadCount,
  };

  UpdateChatReadInbox(
    this.chatId,
    this.lastReadInboxMessageId,
    this.unreadCount,
  );

  UpdateChatReadInbox.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    lastReadInboxMessageId = json['last_read_inbox_message_id'] is int 
      ? convertToTdObject(json['last_read_inbox_message_id']) 
      : int.parse(convertToTdObject(json['last_read_inbox_message_id'])),
    unreadCount = json['unread_count'] is int 
      ? convertToTdObject(json['unread_count']) 
      : int.parse(convertToTdObject(json['unread_count']));
}

class UpdateChatReadOutbox extends Update {
  @override
  String get tdType => 'updateChatReadOutbox';

  int chatId;
  int lastReadOutboxMessageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
  };

  UpdateChatReadOutbox(
    this.chatId,
    this.lastReadOutboxMessageId,
  );

  UpdateChatReadOutbox.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    lastReadOutboxMessageId = json['last_read_outbox_message_id'] is int 
      ? convertToTdObject(json['last_read_outbox_message_id']) 
      : int.parse(convertToTdObject(json['last_read_outbox_message_id']));
}

class UpdateChatUnreadMentionCount extends Update {
  @override
  String get tdType => 'updateChatUnreadMentionCount';

  int chatId;
  int unreadMentionCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'unread_mention_count': unreadMentionCount,
  };

  UpdateChatUnreadMentionCount(
    this.chatId,
    this.unreadMentionCount,
  );

  UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    unreadMentionCount = json['unread_mention_count'] is int 
      ? convertToTdObject(json['unread_mention_count']) 
      : int.parse(convertToTdObject(json['unread_mention_count']));
}

class UpdateChatNotificationSettings extends Update {
  @override
  String get tdType => 'updateChatNotificationSettings';

  int chatId;
  ChatNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'notification_settings': notificationSettings,
  };

  UpdateChatNotificationSettings(
    this.chatId,
    this.notificationSettings,
  );

  UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    notificationSettings = convertToTdObject(json['notification_settings']);
}

class UpdateScopeNotificationSettings extends Update {
  @override
  String get tdType => 'updateScopeNotificationSettings';

  NotificationSettingsScope scope;
  ScopeNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'notification_settings': notificationSettings,
  };

  UpdateScopeNotificationSettings(
    this.scope,
    this.notificationSettings,
  );

  UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json):
    scope = convertToTdObject(json['scope']),
    notificationSettings = convertToTdObject(json['notification_settings']);
}

class UpdateChatMessageTtlSetting extends Update {
  @override
  String get tdType => 'updateChatMessageTtlSetting';

  int chatId;
  int messageTtlSetting;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ttl_setting': messageTtlSetting,
  };

  UpdateChatMessageTtlSetting(
    this.chatId,
    this.messageTtlSetting,
  );

  UpdateChatMessageTtlSetting.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageTtlSetting = json['message_ttl_setting'] is int 
      ? convertToTdObject(json['message_ttl_setting']) 
      : int.parse(convertToTdObject(json['message_ttl_setting']));
}

class UpdateChatActionBar extends Update {
  @override
  String get tdType => 'updateChatActionBar';

  int chatId;
  ChatActionBar? actionBar;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'action_bar': actionBar,
  };

  UpdateChatActionBar(
    this.chatId,
    this.actionBar,
  );

  UpdateChatActionBar.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    actionBar = convertToTdObject(json['action_bar']);
}

class UpdateChatReplyMarkup extends Update {
  @override
  String get tdType => 'updateChatReplyMarkup';

  int chatId;
  int replyMarkupMessageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'reply_markup_message_id': replyMarkupMessageId,
  };

  UpdateChatReplyMarkup(
    this.chatId,
    this.replyMarkupMessageId,
  );

  UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    replyMarkupMessageId = json['reply_markup_message_id'] is int 
      ? convertToTdObject(json['reply_markup_message_id']) 
      : int.parse(convertToTdObject(json['reply_markup_message_id']));
}

class UpdateChatDraftMessage extends Update {
  @override
  String get tdType => 'updateChatDraftMessage';

  int chatId;
  DraftMessage? draftMessage;
  List<ChatPosition> positions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'draft_message': draftMessage,
    'positions': positions,
  };

  UpdateChatDraftMessage(
    this.chatId,
    this.draftMessage,
    this.positions,
  );

  UpdateChatDraftMessage.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    draftMessage = convertToTdObject(json['draft_message']),
    positions = convertToTdObject(castList<ChatPosition>(json['positions']));
}

class UpdateChatFilters extends Update {
  @override
  String get tdType => 'updateChatFilters';

  List<ChatFilterInfo> chatFilters;

  @override
  Map<String, dynamic> get params => {
    'chat_filters': chatFilters,
  };

  UpdateChatFilters(
    this.chatFilters,
  );

  UpdateChatFilters.fromJson(Map<String, dynamic> json):
    chatFilters = convertToTdObject(castList<ChatFilterInfo>(json['chat_filters']));
}

class UpdateChatOnlineMemberCount extends Update {
  @override
  String get tdType => 'updateChatOnlineMemberCount';

  int chatId;
  int onlineMemberCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'online_member_count': onlineMemberCount,
  };

  UpdateChatOnlineMemberCount(
    this.chatId,
    this.onlineMemberCount,
  );

  UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    onlineMemberCount = json['online_member_count'] is int 
      ? convertToTdObject(json['online_member_count']) 
      : int.parse(convertToTdObject(json['online_member_count']));
}

class UpdateNotification extends Update {
  @override
  String get tdType => 'updateNotification';

  int notificationGroupId;
  Notification notification;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'notification': notification,
  };

  UpdateNotification(
    this.notificationGroupId,
    this.notification,
  );

  UpdateNotification.fromJson(Map<String, dynamic> json):
    notificationGroupId = json['notification_group_id'] is int 
      ? convertToTdObject(json['notification_group_id']) 
      : int.parse(convertToTdObject(json['notification_group_id'])),
    notification = convertToTdObject(json['notification']);
}

class UpdateNotificationGroup extends Update {
  @override
  String get tdType => 'updateNotificationGroup';

  int notificationGroupId;
  NotificationGroupType type;
  int chatId;
  int notificationSettingsChatId;
  bool isSilent;
  int totalCount;
  List<Notification> addedNotifications;
  List<int> removedNotificationIds;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'type': type,
    'chat_id': chatId,
    'notification_settings_chat_id': notificationSettingsChatId,
    'is_silent': isSilent,
    'total_count': totalCount,
    'added_notifications': addedNotifications,
    'removed_notification_ids': removedNotificationIds,
  };

  UpdateNotificationGroup(
    this.notificationGroupId,
    this.type,
    this.chatId,
    this.notificationSettingsChatId,
    this.isSilent,
    this.totalCount,
    this.addedNotifications,
    this.removedNotificationIds,
  );

  UpdateNotificationGroup.fromJson(Map<String, dynamic> json):
    notificationGroupId = json['notification_group_id'] is int 
      ? convertToTdObject(json['notification_group_id']) 
      : int.parse(convertToTdObject(json['notification_group_id'])),
    type = convertToTdObject(json['type']),
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    notificationSettingsChatId = json['notification_settings_chat_id'] is int 
      ? convertToTdObject(json['notification_settings_chat_id']) 
      : int.parse(convertToTdObject(json['notification_settings_chat_id'])),
    isSilent = convertToTdObject(json['is_silent']),
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    addedNotifications = convertToTdObject(castList<Notification>(json['added_notifications'])),
    removedNotificationIds = convertToTdObject(castList<int>(json['removed_notification_ids']));
}

class UpdateActiveNotifications extends Update {
  @override
  String get tdType => 'updateActiveNotifications';

  List<NotificationGroup> groups;

  @override
  Map<String, dynamic> get params => {
    'groups': groups,
  };

  UpdateActiveNotifications(
    this.groups,
  );

  UpdateActiveNotifications.fromJson(Map<String, dynamic> json):
    groups = convertToTdObject(castList<NotificationGroup>(json['groups']));
}

class UpdateHavePendingNotifications extends Update {
  @override
  String get tdType => 'updateHavePendingNotifications';

  bool haveDelayedNotifications;
  bool haveUnreceivedNotifications;

  @override
  Map<String, dynamic> get params => {
    'have_delayed_notifications': haveDelayedNotifications,
    'have_unreceived_notifications': haveUnreceivedNotifications,
  };

  UpdateHavePendingNotifications(
    this.haveDelayedNotifications,
    this.haveUnreceivedNotifications,
  );

  UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json):
    haveDelayedNotifications = convertToTdObject(json['have_delayed_notifications']),
    haveUnreceivedNotifications = convertToTdObject(json['have_unreceived_notifications']);
}

class UpdateDeleteMessages extends Update {
  @override
  String get tdType => 'updateDeleteMessages';

  int chatId;
  List<int> messageIds;
  bool isPermanent;
  bool fromCache;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
    'is_permanent': isPermanent,
    'from_cache': fromCache,
  };

  UpdateDeleteMessages(
    this.chatId,
    this.messageIds,
    this.isPermanent,
    this.fromCache,
  );

  UpdateDeleteMessages.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageIds = convertToTdObject(castList<int>(json['message_ids'])),
    isPermanent = convertToTdObject(json['is_permanent']),
    fromCache = convertToTdObject(json['from_cache']);
}

class UpdateUserChatAction extends Update {
  @override
  String get tdType => 'updateUserChatAction';

  int chatId;
  int messageThreadId;
  int userId;
  ChatAction action;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'user_id': userId,
    'action': action,
  };

  UpdateUserChatAction(
    this.chatId,
    this.messageThreadId,
    this.userId,
    this.action,
  );

  UpdateUserChatAction.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageThreadId = json['message_thread_id'] is int 
      ? convertToTdObject(json['message_thread_id']) 
      : int.parse(convertToTdObject(json['message_thread_id'])),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    action = convertToTdObject(json['action']);
}

class UpdateUserStatus extends Update {
  @override
  String get tdType => 'updateUserStatus';

  int userId;
  UserStatus status;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'status': status,
  };

  UpdateUserStatus(
    this.userId,
    this.status,
  );

  UpdateUserStatus.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    status = convertToTdObject(json['status']);
}

class UpdateUser extends Update {
  @override
  String get tdType => 'updateUser';

  User user;

  @override
  Map<String, dynamic> get params => {
    'user': user,
  };

  UpdateUser(
    this.user,
  );

  UpdateUser.fromJson(Map<String, dynamic> json):
    user = convertToTdObject(json['user']);
}

class UpdateBasicGroup extends Update {
  @override
  String get tdType => 'updateBasicGroup';

  BasicGroup basicGroup;

  @override
  Map<String, dynamic> get params => {
    'basic_group': basicGroup,
  };

  UpdateBasicGroup(
    this.basicGroup,
  );

  UpdateBasicGroup.fromJson(Map<String, dynamic> json):
    basicGroup = convertToTdObject(json['basic_group']);
}

class UpdateSupergroup extends Update {
  @override
  String get tdType => 'updateSupergroup';

  Supergroup supergroup;

  @override
  Map<String, dynamic> get params => {
    'supergroup': supergroup,
  };

  UpdateSupergroup(
    this.supergroup,
  );

  UpdateSupergroup.fromJson(Map<String, dynamic> json):
    supergroup = convertToTdObject(json['supergroup']);
}

class UpdateSecretChat extends Update {
  @override
  String get tdType => 'updateSecretChat';

  SecretChat secretChat;

  @override
  Map<String, dynamic> get params => {
    'secret_chat': secretChat,
  };

  UpdateSecretChat(
    this.secretChat,
  );

  UpdateSecretChat.fromJson(Map<String, dynamic> json):
    secretChat = convertToTdObject(json['secret_chat']);
}

class UpdateUserFullInfo extends Update {
  @override
  String get tdType => 'updateUserFullInfo';

  int userId;
  UserFullInfo userFullInfo;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'user_full_info': userFullInfo,
  };

  UpdateUserFullInfo(
    this.userId,
    this.userFullInfo,
  );

  UpdateUserFullInfo.fromJson(Map<String, dynamic> json):
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    userFullInfo = convertToTdObject(json['user_full_info']);
}

class UpdateBasicGroupFullInfo extends Update {
  @override
  String get tdType => 'updateBasicGroupFullInfo';

  int basicGroupId;
  BasicGroupFullInfo basicGroupFullInfo;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
    'basic_group_full_info': basicGroupFullInfo,
  };

  UpdateBasicGroupFullInfo(
    this.basicGroupId,
    this.basicGroupFullInfo,
  );

  UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json):
    basicGroupId = json['basic_group_id'] is int 
      ? convertToTdObject(json['basic_group_id']) 
      : int.parse(convertToTdObject(json['basic_group_id'])),
    basicGroupFullInfo = convertToTdObject(json['basic_group_full_info']);
}

class UpdateSupergroupFullInfo extends Update {
  @override
  String get tdType => 'updateSupergroupFullInfo';

  int supergroupId;
  SupergroupFullInfo supergroupFullInfo;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'supergroup_full_info': supergroupFullInfo,
  };

  UpdateSupergroupFullInfo(
    this.supergroupId,
    this.supergroupFullInfo,
  );

  UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json):
    supergroupId = json['supergroup_id'] is int 
      ? convertToTdObject(json['supergroup_id']) 
      : int.parse(convertToTdObject(json['supergroup_id'])),
    supergroupFullInfo = convertToTdObject(json['supergroup_full_info']);
}

class UpdateServiceNotification extends Update {
  @override
  String get tdType => 'updateServiceNotification';

  String type;
  MessageContent content;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'content': content,
  };

  UpdateServiceNotification(
    this.type,
    this.content,
  );

  UpdateServiceNotification.fromJson(Map<String, dynamic> json):
    type = convertToTdObject(json['type']),
    content = convertToTdObject(json['content']);
}

class UpdateFile extends Update {
  @override
  String get tdType => 'updateFile';

  File file;

  @override
  Map<String, dynamic> get params => {
    'file': file,
  };

  UpdateFile(
    this.file,
  );

  UpdateFile.fromJson(Map<String, dynamic> json):
    file = convertToTdObject(json['file']);
}

class UpdateFileGenerationStart extends Update {
  @override
  String get tdType => 'updateFileGenerationStart';

  int generationId;
  String originalPath;
  String destinationPath;
  String conversion;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'original_path': originalPath,
    'destination_path': destinationPath,
    'conversion': conversion,
  };

  UpdateFileGenerationStart(
    this.generationId,
    this.originalPath,
    this.destinationPath,
    this.conversion,
  );

  UpdateFileGenerationStart.fromJson(Map<String, dynamic> json):
    generationId = json['generation_id'] is int 
      ? convertToTdObject(json['generation_id']) 
      : int.parse(convertToTdObject(json['generation_id'])),
    originalPath = convertToTdObject(json['original_path']),
    destinationPath = convertToTdObject(json['destination_path']),
    conversion = convertToTdObject(json['conversion']);
}

class UpdateFileGenerationStop extends Update {
  @override
  String get tdType => 'updateFileGenerationStop';

  int generationId;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
  };

  UpdateFileGenerationStop(
    this.generationId,
  );

  UpdateFileGenerationStop.fromJson(Map<String, dynamic> json):
    generationId = json['generation_id'] is int 
      ? convertToTdObject(json['generation_id']) 
      : int.parse(convertToTdObject(json['generation_id']));
}

class UpdateCall extends Update {
  @override
  String get tdType => 'updateCall';

  Call call;

  @override
  Map<String, dynamic> get params => {
    'call': call,
  };

  UpdateCall(
    this.call,
  );

  UpdateCall.fromJson(Map<String, dynamic> json):
    call = convertToTdObject(json['call']);
}

class UpdateGroupCall extends Update {
  @override
  String get tdType => 'updateGroupCall';

  GroupCall groupCall;

  @override
  Map<String, dynamic> get params => {
    'group_call': groupCall,
  };

  UpdateGroupCall(
    this.groupCall,
  );

  UpdateGroupCall.fromJson(Map<String, dynamic> json):
    groupCall = convertToTdObject(json['group_call']);
}

class UpdateGroupCallParticipant extends Update {
  @override
  String get tdType => 'updateGroupCallParticipant';

  int groupCallId;
  GroupCallParticipant participant;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant': participant,
  };

  UpdateGroupCallParticipant(
    this.groupCallId,
    this.participant,
  );

  UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json):
    groupCallId = json['group_call_id'] is int 
      ? convertToTdObject(json['group_call_id']) 
      : int.parse(convertToTdObject(json['group_call_id'])),
    participant = convertToTdObject(json['participant']);
}

class UpdateNewCallSignalingData extends Update {
  @override
  String get tdType => 'updateNewCallSignalingData';

  int callId;
  String data;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'data': data,
  };

  UpdateNewCallSignalingData(
    this.callId,
    this.data,
  );

  UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json):
    callId = json['call_id'] is int 
      ? convertToTdObject(json['call_id']) 
      : int.parse(convertToTdObject(json['call_id'])),
    data = convertToTdObject(json['data']);
}

class UpdateUserPrivacySettingRules extends Update {
  @override
  String get tdType => 'updateUserPrivacySettingRules';

  UserPrivacySetting setting;
  UserPrivacySettingRules rules;

  @override
  Map<String, dynamic> get params => {
    'setting': setting,
    'rules': rules,
  };

  UpdateUserPrivacySettingRules(
    this.setting,
    this.rules,
  );

  UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json):
    setting = convertToTdObject(json['setting']),
    rules = convertToTdObject(json['rules']);
}

class UpdateUnreadMessageCount extends Update {
  @override
  String get tdType => 'updateUnreadMessageCount';

  ChatList chatList;
  int unreadCount;
  int unreadUnmutedCount;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
  };

  UpdateUnreadMessageCount(
    this.chatList,
    this.unreadCount,
    this.unreadUnmutedCount,
  );

  UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json):
    chatList = convertToTdObject(json['chat_list']),
    unreadCount = json['unread_count'] is int 
      ? convertToTdObject(json['unread_count']) 
      : int.parse(convertToTdObject(json['unread_count'])),
    unreadUnmutedCount = json['unread_unmuted_count'] is int 
      ? convertToTdObject(json['unread_unmuted_count']) 
      : int.parse(convertToTdObject(json['unread_unmuted_count']));
}

class UpdateUnreadChatCount extends Update {
  @override
  String get tdType => 'updateUnreadChatCount';

  ChatList chatList;
  int totalCount;
  int unreadCount;
  int unreadUnmutedCount;
  int markedAsUnreadCount;
  int markedAsUnreadUnmutedCount;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'total_count': totalCount,
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
    'marked_as_unread_count': markedAsUnreadCount,
    'marked_as_unread_unmuted_count': markedAsUnreadUnmutedCount,
  };

  UpdateUnreadChatCount(
    this.chatList,
    this.totalCount,
    this.unreadCount,
    this.unreadUnmutedCount,
    this.markedAsUnreadCount,
    this.markedAsUnreadUnmutedCount,
  );

  UpdateUnreadChatCount.fromJson(Map<String, dynamic> json):
    chatList = convertToTdObject(json['chat_list']),
    totalCount = json['total_count'] is int 
      ? convertToTdObject(json['total_count']) 
      : int.parse(convertToTdObject(json['total_count'])),
    unreadCount = json['unread_count'] is int 
      ? convertToTdObject(json['unread_count']) 
      : int.parse(convertToTdObject(json['unread_count'])),
    unreadUnmutedCount = json['unread_unmuted_count'] is int 
      ? convertToTdObject(json['unread_unmuted_count']) 
      : int.parse(convertToTdObject(json['unread_unmuted_count'])),
    markedAsUnreadCount = json['marked_as_unread_count'] is int 
      ? convertToTdObject(json['marked_as_unread_count']) 
      : int.parse(convertToTdObject(json['marked_as_unread_count'])),
    markedAsUnreadUnmutedCount = json['marked_as_unread_unmuted_count'] is int 
      ? convertToTdObject(json['marked_as_unread_unmuted_count']) 
      : int.parse(convertToTdObject(json['marked_as_unread_unmuted_count']));
}

class UpdateOption extends Update {
  @override
  String get tdType => 'updateOption';

  String name;
  OptionValue value;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'value': value,
  };

  UpdateOption(
    this.name,
    this.value,
  );

  UpdateOption.fromJson(Map<String, dynamic> json):
    name = convertToTdObject(json['name']),
    value = convertToTdObject(json['value']);
}

class UpdateStickerSet extends Update {
  @override
  String get tdType => 'updateStickerSet';

  StickerSet stickerSet;

  @override
  Map<String, dynamic> get params => {
    'sticker_set': stickerSet,
  };

  UpdateStickerSet(
    this.stickerSet,
  );

  UpdateStickerSet.fromJson(Map<String, dynamic> json):
    stickerSet = convertToTdObject(json['sticker_set']);
}

class UpdateInstalledStickerSets extends Update {
  @override
  String get tdType => 'updateInstalledStickerSets';

  bool isMasks;
  List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'sticker_set_ids': stickerSetIds,
  };

  UpdateInstalledStickerSets(
    this.isMasks,
    this.stickerSetIds,
  );

  UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json):
    isMasks = convertToTdObject(json['is_masks']),
    stickerSetIds = convertToTdObject(castList<int>(json['sticker_set_ids']));
}

class UpdateTrendingStickerSets extends Update {
  @override
  String get tdType => 'updateTrendingStickerSets';

  StickerSets stickerSets;

  @override
  Map<String, dynamic> get params => {
    'sticker_sets': stickerSets,
  };

  UpdateTrendingStickerSets(
    this.stickerSets,
  );

  UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json):
    stickerSets = convertToTdObject(json['sticker_sets']);
}

class UpdateRecentStickers extends Update {
  @override
  String get tdType => 'updateRecentStickers';

  bool isAttached;
  List<int> stickerIds;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
    'sticker_ids': stickerIds,
  };

  UpdateRecentStickers(
    this.isAttached,
    this.stickerIds,
  );

  UpdateRecentStickers.fromJson(Map<String, dynamic> json):
    isAttached = convertToTdObject(json['is_attached']),
    stickerIds = convertToTdObject(castList<int>(json['sticker_ids']));
}

class UpdateFavoriteStickers extends Update {
  @override
  String get tdType => 'updateFavoriteStickers';

  List<int> stickerIds;

  @override
  Map<String, dynamic> get params => {
    'sticker_ids': stickerIds,
  };

  UpdateFavoriteStickers(
    this.stickerIds,
  );

  UpdateFavoriteStickers.fromJson(Map<String, dynamic> json):
    stickerIds = convertToTdObject(castList<int>(json['sticker_ids']));
}

class UpdateSavedAnimations extends Update {
  @override
  String get tdType => 'updateSavedAnimations';

  List<int> animationIds;

  @override
  Map<String, dynamic> get params => {
    'animation_ids': animationIds,
  };

  UpdateSavedAnimations(
    this.animationIds,
  );

  UpdateSavedAnimations.fromJson(Map<String, dynamic> json):
    animationIds = convertToTdObject(castList<int>(json['animation_ids']));
}

class UpdateSelectedBackground extends Update {
  @override
  String get tdType => 'updateSelectedBackground';

  bool forDarkTheme;
  Background? background;

  @override
  Map<String, dynamic> get params => {
    'for_dark_theme': forDarkTheme,
    'background': background,
  };

  UpdateSelectedBackground(
    this.forDarkTheme,
    this.background,
  );

  UpdateSelectedBackground.fromJson(Map<String, dynamic> json):
    forDarkTheme = convertToTdObject(json['for_dark_theme']),
    background = convertToTdObject(json['background']);
}

class UpdateLanguagePackStrings extends Update {
  @override
  String get tdType => 'updateLanguagePackStrings';

  String localizationTarget;
  String languagePackId;
  List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    'localization_target': localizationTarget,
    'language_pack_id': languagePackId,
    'strings': strings,
  };

  UpdateLanguagePackStrings(
    this.localizationTarget,
    this.languagePackId,
    this.strings,
  );

  UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json):
    localizationTarget = convertToTdObject(json['localization_target']),
    languagePackId = convertToTdObject(json['language_pack_id']),
    strings = convertToTdObject(castList<LanguagePackString>(json['strings']));
}

class UpdateConnectionState extends Update {
  @override
  String get tdType => 'updateConnectionState';

  ConnectionState state;

  @override
  Map<String, dynamic> get params => {
    'state': state,
  };

  UpdateConnectionState(
    this.state,
  );

  UpdateConnectionState.fromJson(Map<String, dynamic> json):
    state = convertToTdObject(json['state']);
}

class UpdateTermsOfService extends Update {
  @override
  String get tdType => 'updateTermsOfService';

  String termsOfServiceId;
  TermsOfService termsOfService;

  @override
  Map<String, dynamic> get params => {
    'terms_of_service_id': termsOfServiceId,
    'terms_of_service': termsOfService,
  };

  UpdateTermsOfService(
    this.termsOfServiceId,
    this.termsOfService,
  );

  UpdateTermsOfService.fromJson(Map<String, dynamic> json):
    termsOfServiceId = convertToTdObject(json['terms_of_service_id']),
    termsOfService = convertToTdObject(json['terms_of_service']);
}

class UpdateUsersNearby extends Update {
  @override
  String get tdType => 'updateUsersNearby';

  List<ChatNearby> usersNearby;

  @override
  Map<String, dynamic> get params => {
    'users_nearby': usersNearby,
  };

  UpdateUsersNearby(
    this.usersNearby,
  );

  UpdateUsersNearby.fromJson(Map<String, dynamic> json):
    usersNearby = convertToTdObject(castList<ChatNearby>(json['users_nearby']));
}

class UpdateDiceEmojis extends Update {
  @override
  String get tdType => 'updateDiceEmojis';

  List<String> emojis;

  @override
  Map<String, dynamic> get params => {
    'emojis': emojis,
  };

  UpdateDiceEmojis(
    this.emojis,
  );

  UpdateDiceEmojis.fromJson(Map<String, dynamic> json):
    emojis = convertToTdObject(castList<String>(json['emojis']));
}

class UpdateAnimationSearchParameters extends Update {
  @override
  String get tdType => 'updateAnimationSearchParameters';

  String provider;
  List<String> emojis;

  @override
  Map<String, dynamic> get params => {
    'provider': provider,
    'emojis': emojis,
  };

  UpdateAnimationSearchParameters(
    this.provider,
    this.emojis,
  );

  UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json):
    provider = convertToTdObject(json['provider']),
    emojis = convertToTdObject(castList<String>(json['emojis']));
}

class UpdateSuggestedActions extends Update {
  @override
  String get tdType => 'updateSuggestedActions';

  List<SuggestedAction> addedActions;
  List<SuggestedAction> removedActions;

  @override
  Map<String, dynamic> get params => {
    'added_actions': addedActions,
    'removed_actions': removedActions,
  };

  UpdateSuggestedActions(
    this.addedActions,
    this.removedActions,
  );

  UpdateSuggestedActions.fromJson(Map<String, dynamic> json):
    addedActions = convertToTdObject(castList<SuggestedAction>(json['added_actions'])),
    removedActions = convertToTdObject(castList<SuggestedAction>(json['removed_actions']));
}

class UpdateNewInlineQuery extends Update {
  @override
  String get tdType => 'updateNewInlineQuery';

  int id;
  int senderUserId;
  Location userLocation;
  ChatType? chatType;
  String query;
  String offset;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'user_location': userLocation,
    'chat_type': chatType,
    'query': query,
    'offset': offset,
  };

  UpdateNewInlineQuery(
    this.id,
    this.senderUserId,
    this.userLocation,
    this.chatType,
    this.query,
    this.offset,
  );

  UpdateNewInlineQuery.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    senderUserId = json['sender_user_id'] is int 
      ? convertToTdObject(json['sender_user_id']) 
      : int.parse(convertToTdObject(json['sender_user_id'])),
    userLocation = convertToTdObject(json['user_location']),
    chatType = convertToTdObject(json['chat_type']),
    query = convertToTdObject(json['query']),
    offset = convertToTdObject(json['offset']);
}

class UpdateNewChosenInlineResult extends Update {
  @override
  String get tdType => 'updateNewChosenInlineResult';

  int senderUserId;
  Location userLocation;
  String query;
  String resultId;
  String inlineMessageId;

  @override
  Map<String, dynamic> get params => {
    'sender_user_id': senderUserId,
    'user_location': userLocation,
    'query': query,
    'result_id': resultId,
    'inline_message_id': inlineMessageId,
  };

  UpdateNewChosenInlineResult(
    this.senderUserId,
    this.userLocation,
    this.query,
    this.resultId,
    this.inlineMessageId,
  );

  UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json):
    senderUserId = json['sender_user_id'] is int 
      ? convertToTdObject(json['sender_user_id']) 
      : int.parse(convertToTdObject(json['sender_user_id'])),
    userLocation = convertToTdObject(json['user_location']),
    query = convertToTdObject(json['query']),
    resultId = convertToTdObject(json['result_id']),
    inlineMessageId = convertToTdObject(json['inline_message_id']);
}

class UpdateNewCallbackQuery extends Update {
  @override
  String get tdType => 'updateNewCallbackQuery';

  int id;
  int senderUserId;
  int chatId;
  int messageId;
  int chatInstance;
  CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'chat_id': chatId,
    'message_id': messageId,
    'chat_instance': chatInstance,
    'payload': payload,
  };

  UpdateNewCallbackQuery(
    this.id,
    this.senderUserId,
    this.chatId,
    this.messageId,
    this.chatInstance,
    this.payload,
  );

  UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    senderUserId = json['sender_user_id'] is int 
      ? convertToTdObject(json['sender_user_id']) 
      : int.parse(convertToTdObject(json['sender_user_id'])),
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    messageId = json['message_id'] is int 
      ? convertToTdObject(json['message_id']) 
      : int.parse(convertToTdObject(json['message_id'])),
    chatInstance = json['chat_instance'] is int 
      ? convertToTdObject(json['chat_instance']) 
      : int.parse(convertToTdObject(json['chat_instance'])),
    payload = convertToTdObject(json['payload']);
}

class UpdateNewInlineCallbackQuery extends Update {
  @override
  String get tdType => 'updateNewInlineCallbackQuery';

  int id;
  int senderUserId;
  String inlineMessageId;
  int chatInstance;
  CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'inline_message_id': inlineMessageId,
    'chat_instance': chatInstance,
    'payload': payload,
  };

  UpdateNewInlineCallbackQuery(
    this.id,
    this.senderUserId,
    this.inlineMessageId,
    this.chatInstance,
    this.payload,
  );

  UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    senderUserId = json['sender_user_id'] is int 
      ? convertToTdObject(json['sender_user_id']) 
      : int.parse(convertToTdObject(json['sender_user_id'])),
    inlineMessageId = convertToTdObject(json['inline_message_id']),
    chatInstance = json['chat_instance'] is int 
      ? convertToTdObject(json['chat_instance']) 
      : int.parse(convertToTdObject(json['chat_instance'])),
    payload = convertToTdObject(json['payload']);
}

class UpdateNewShippingQuery extends Update {
  @override
  String get tdType => 'updateNewShippingQuery';

  int id;
  int senderUserId;
  String invoicePayload;
  Address shippingAddress;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'invoice_payload': invoicePayload,
    'shipping_address': shippingAddress,
  };

  UpdateNewShippingQuery(
    this.id,
    this.senderUserId,
    this.invoicePayload,
    this.shippingAddress,
  );

  UpdateNewShippingQuery.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    senderUserId = json['sender_user_id'] is int 
      ? convertToTdObject(json['sender_user_id']) 
      : int.parse(convertToTdObject(json['sender_user_id'])),
    invoicePayload = convertToTdObject(json['invoice_payload']),
    shippingAddress = convertToTdObject(json['shipping_address']);
}

class UpdateNewPreCheckoutQuery extends Update {
  @override
  String get tdType => 'updateNewPreCheckoutQuery';

  int id;
  int senderUserId;
  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo? orderInfo;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo,
  };

  UpdateNewPreCheckoutQuery(
    this.id,
    this.senderUserId,
    this.currency,
    this.totalAmount,
    this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
  );

  UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    senderUserId = json['sender_user_id'] is int 
      ? convertToTdObject(json['sender_user_id']) 
      : int.parse(convertToTdObject(json['sender_user_id'])),
    currency = convertToTdObject(json['currency']),
    totalAmount = json['total_amount'] is int 
      ? convertToTdObject(json['total_amount']) 
      : int.parse(convertToTdObject(json['total_amount'])),
    invoicePayload = convertToTdObject(json['invoice_payload']),
    shippingOptionId = convertToTdObject(json['shipping_option_id']),
    orderInfo = convertToTdObject(json['order_info']);
}

class UpdateNewCustomEvent extends Update {
  @override
  String get tdType => 'updateNewCustomEvent';

  String event;

  @override
  Map<String, dynamic> get params => {
    'event': event,
  };

  UpdateNewCustomEvent(
    this.event,
  );

  UpdateNewCustomEvent.fromJson(Map<String, dynamic> json):
    event = convertToTdObject(json['event']);
}

class UpdateNewCustomQuery extends Update {
  @override
  String get tdType => 'updateNewCustomQuery';

  int id;
  String data;
  int timeout;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'data': data,
    'timeout': timeout,
  };

  UpdateNewCustomQuery(
    this.id,
    this.data,
    this.timeout,
  );

  UpdateNewCustomQuery.fromJson(Map<String, dynamic> json):
    id = json['id'] is int 
      ? convertToTdObject(json['id']) 
      : int.parse(convertToTdObject(json['id'])),
    data = convertToTdObject(json['data']),
    timeout = json['timeout'] is int 
      ? convertToTdObject(json['timeout']) 
      : int.parse(convertToTdObject(json['timeout']));
}

class UpdatePoll extends Update {
  @override
  String get tdType => 'updatePoll';

  Poll poll;

  @override
  Map<String, dynamic> get params => {
    'poll': poll,
  };

  UpdatePoll(
    this.poll,
  );

  UpdatePoll.fromJson(Map<String, dynamic> json):
    poll = convertToTdObject(json['poll']);
}

class UpdatePollAnswer extends Update {
  @override
  String get tdType => 'updatePollAnswer';

  int pollId;
  int userId;
  List<int> optionIds;

  @override
  Map<String, dynamic> get params => {
    'poll_id': pollId,
    'user_id': userId,
    'option_ids': optionIds,
  };

  UpdatePollAnswer(
    this.pollId,
    this.userId,
    this.optionIds,
  );

  UpdatePollAnswer.fromJson(Map<String, dynamic> json):
    pollId = json['poll_id'] is int 
      ? convertToTdObject(json['poll_id']) 
      : int.parse(convertToTdObject(json['poll_id'])),
    userId = json['user_id'] is int 
      ? convertToTdObject(json['user_id']) 
      : int.parse(convertToTdObject(json['user_id'])),
    optionIds = convertToTdObject(castList<int>(json['option_ids']));
}

class UpdateChatMember extends Update {
  @override
  String get tdType => 'updateChatMember';

  int chatId;
  int actorUserId;
  int date;
  ChatInviteLink inviteLink;
  ChatMember oldChatMember;
  ChatMember newChatMember;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'actor_user_id': actorUserId,
    'date': date,
    'invite_link': inviteLink,
    'old_chat_member': oldChatMember,
    'new_chat_member': newChatMember,
  };

  UpdateChatMember(
    this.chatId,
    this.actorUserId,
    this.date,
    this.inviteLink,
    this.oldChatMember,
    this.newChatMember,
  );

  UpdateChatMember.fromJson(Map<String, dynamic> json):
    chatId = json['chat_id'] is int 
      ? convertToTdObject(json['chat_id']) 
      : int.parse(convertToTdObject(json['chat_id'])),
    actorUserId = json['actor_user_id'] is int 
      ? convertToTdObject(json['actor_user_id']) 
      : int.parse(convertToTdObject(json['actor_user_id'])),
    date = json['date'] is int 
      ? convertToTdObject(json['date']) 
      : int.parse(convertToTdObject(json['date'])),
    inviteLink = convertToTdObject(json['invite_link']),
    oldChatMember = convertToTdObject(json['old_chat_member']),
    newChatMember = convertToTdObject(json['new_chat_member']);
}

class Updates extends TdObject {
  @override
  String get tdType => 'updates';

  List<Update> updates;

  @override
  Map<String, dynamic> get params => {
    'updates': updates,
  };

  Updates(
    this.updates,
  );

  Updates.fromJson(Map<String, dynamic> json):
    updates = convertToTdObject(castList<Update>(json['updates']));
}

abstract class LogStream extends TdObject {}

class LogStreamDefault extends LogStream {
  @override
  String get tdType => 'logStreamDefault';

  @override
  Map<String, dynamic> get params => {};

  LogStreamDefault();

  LogStreamDefault.fromJson(Map<String, dynamic> json);
}

class LogStreamFile extends LogStream {
  @override
  String get tdType => 'logStreamFile';

  String path;
  int maxFileSize;
  bool redirectStderr;

  @override
  Map<String, dynamic> get params => {
    'path': path,
    'max_file_size': maxFileSize,
    'redirect_stderr': redirectStderr,
  };

  LogStreamFile(
    this.path,
    this.maxFileSize,
    this.redirectStderr,
  );

  LogStreamFile.fromJson(Map<String, dynamic> json):
    path = convertToTdObject(json['path']),
    maxFileSize = json['max_file_size'] is int 
      ? convertToTdObject(json['max_file_size']) 
      : int.parse(convertToTdObject(json['max_file_size'])),
    redirectStderr = convertToTdObject(json['redirect_stderr']);
}

class LogStreamEmpty extends LogStream {
  @override
  String get tdType => 'logStreamEmpty';

  @override
  Map<String, dynamic> get params => {};

  LogStreamEmpty();

  LogStreamEmpty.fromJson(Map<String, dynamic> json);
}

class LogVerbosityLevel extends TdObject {
  @override
  String get tdType => 'logVerbosityLevel';

  int verbosityLevel;

  @override
  Map<String, dynamic> get params => {
    'verbosity_level': verbosityLevel,
  };

  LogVerbosityLevel(
    this.verbosityLevel,
  );

  LogVerbosityLevel.fromJson(Map<String, dynamic> json):
    verbosityLevel = json['verbosity_level'] is int 
      ? convertToTdObject(json['verbosity_level']) 
      : int.parse(convertToTdObject(json['verbosity_level']));
}

class LogTags extends TdObject {
  @override
  String get tdType => 'logTags';

  List<String> tags;

  @override
  Map<String, dynamic> get params => {
    'tags': tags,
  };

  LogTags(
    this.tags,
  );

  LogTags.fromJson(Map<String, dynamic> json):
    tags = convertToTdObject(castList<String>(json['tags']));
}

class TestInt extends TdObject {
  @override
  String get tdType => 'testInt';

  int value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestInt(
    this.value,
  );

  TestInt.fromJson(Map<String, dynamic> json):
    value = json['value'] is int 
      ? convertToTdObject(json['value']) 
      : int.parse(convertToTdObject(json['value']));
}

class TestString extends TdObject {
  @override
  String get tdType => 'testString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestString(
    this.value,
  );

  TestString.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

class TestBytes extends TdObject {
  @override
  String get tdType => 'testBytes';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestBytes(
    this.value,
  );

  TestBytes.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(json['value']);
}

class TestVectorInt extends TdObject {
  @override
  String get tdType => 'testVectorInt';

  List<int> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorInt(
    this.value,
  );

  TestVectorInt.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(castList<int>(json['value']));
}

class TestVectorIntObject extends TdObject {
  @override
  String get tdType => 'testVectorIntObject';

  List<TestInt> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorIntObject(
    this.value,
  );

  TestVectorIntObject.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(castList<TestInt>(json['value']));
}

class TestVectorString extends TdObject {
  @override
  String get tdType => 'testVectorString';

  List<String> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorString(
    this.value,
  );

  TestVectorString.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(castList<String>(json['value']));
}

class TestVectorStringObject extends TdObject {
  @override
  String get tdType => 'testVectorStringObject';

  List<TestString> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorStringObject(
    this.value,
  );

  TestVectorStringObject.fromJson(Map<String, dynamic> json):
    value = convertToTdObject(castList<TestString>(json['value']));
}
