import 'basics.dart';
import 'objects.dart';
import 'utils.dart';
import 'converter.dart';

class GetAuthorizationState extends TdFunction {
  @override
  Type get returnType => AuthorizationState;

  @override
  String get tdType => 'getAuthorizationState';

  @override
  Map<String, dynamic> get params => {};

  GetAuthorizationState();

  GetAuthorizationState.fromJson(Map<String, dynamic> json);
}

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

  SetTdlibParameters.fromJson(Map<String, dynamic> json) :
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

  CheckDatabaseEncryptionKey(
    this.encryptionKey,
  );

  CheckDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) :
    encryptionKey = convertToTdObject(json['encryption_key']);
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
    'settings': settings,
  };

  SetAuthenticationPhoneNumber(
    this.phoneNumber,
    this.settings,
  );

  SetAuthenticationPhoneNumber.fromJson(Map<String, dynamic> json) :
    phoneNumber = convertToTdObject(json['phone_number']),
    settings = convertToTdObject(json['settings']);
}

class ResendAuthenticationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'resendAuthenticationCode';

  @override
  Map<String, dynamic> get params => {};

  ResendAuthenticationCode();

  ResendAuthenticationCode.fromJson(Map<String, dynamic> json);
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

  CheckAuthenticationCode(
    this.code,
  );

  CheckAuthenticationCode.fromJson(Map<String, dynamic> json) :
    code = convertToTdObject(json['code']);
}

class RequestQrCodeAuthentication extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'requestQrCodeAuthentication';

  List<int> otherUserIds;

  @override
  Map<String, dynamic> get params => {
    'other_user_ids': otherUserIds,
  };

  RequestQrCodeAuthentication(
    this.otherUserIds,
  );

  RequestQrCodeAuthentication.fromJson(Map<String, dynamic> json) :
    otherUserIds = convertToTdObject(json['other_user_ids']);
}

class RegisterUser extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'registerUser';

  String firstName;
  String lastName;

  @override
  Map<String, dynamic> get params => {
    'first_name': firstName,
    'last_name': lastName,
  };

  RegisterUser(
    this.firstName,
    this.lastName,
  );

  RegisterUser.fromJson(Map<String, dynamic> json) :
    firstName = convertToTdObject(json['first_name']),
    lastName = convertToTdObject(json['last_name']);
}

class CheckAuthenticationPassword extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkAuthenticationPassword';

  String password;

  @override
  Map<String, dynamic> get params => {
    'password': password,
  };

  CheckAuthenticationPassword(
    this.password,
  );

  CheckAuthenticationPassword.fromJson(Map<String, dynamic> json) :
    password = convertToTdObject(json['password']);
}

class RequestAuthenticationPasswordRecovery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'requestAuthenticationPasswordRecovery';

  @override
  Map<String, dynamic> get params => {};

  RequestAuthenticationPasswordRecovery();

  RequestAuthenticationPasswordRecovery.fromJson(Map<String, dynamic> json);
}

class RecoverAuthenticationPassword extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'recoverAuthenticationPassword';

  String recoveryCode;

  @override
  Map<String, dynamic> get params => {
    'recovery_code': recoveryCode,
  };

  RecoverAuthenticationPassword(
    this.recoveryCode,
  );

  RecoverAuthenticationPassword.fromJson(Map<String, dynamic> json) :
    recoveryCode = convertToTdObject(json['recovery_code']);
}

class CheckAuthenticationBotToken extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkAuthenticationBotToken';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  CheckAuthenticationBotToken(
    this.token,
  );

  CheckAuthenticationBotToken.fromJson(Map<String, dynamic> json) :
    token = convertToTdObject(json['token']);
}

class LogOut extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'logOut';

  @override
  Map<String, dynamic> get params => {};

  LogOut();

  LogOut.fromJson(Map<String, dynamic> json);
}

class Close extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'close';

  @override
  Map<String, dynamic> get params => {};

  Close();

  Close.fromJson(Map<String, dynamic> json);
}

class Destroy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'destroy';

  @override
  Map<String, dynamic> get params => {};

  Destroy();

  Destroy.fromJson(Map<String, dynamic> json);
}

class SetDatabaseEncryptionKey extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setDatabaseEncryptionKey';

  String newEncryptionKey;

  @override
  Map<String, dynamic> get params => {
    'new_encryption_key': newEncryptionKey,
  };

  SetDatabaseEncryptionKey(
    this.newEncryptionKey,
  );

  SetDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) :
    newEncryptionKey = convertToTdObject(json['new_encryption_key']);
}

class RemoveTopChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeTopChat';

  TopChatCategory category;
  int chatId;

  @override
  Map<String, dynamic> get params => {
    'category': category,
    'chat_id': chatId,
  };

  RemoveTopChat(
    this.category,
    this.chatId,
  );

  RemoveTopChat.fromJson(Map<String, dynamic> json) :
    category = convertToTdObject(json['category']),
    chatId = convertToTdObject(json['chat_id']);
}

class AddRecentlyFoundChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addRecentlyFoundChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  AddRecentlyFoundChat(
    this.chatId,
  );

  AddRecentlyFoundChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class RemoveRecentlyFoundChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeRecentlyFoundChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  RemoveRecentlyFoundChat(
    this.chatId,
  );

  RemoveRecentlyFoundChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class ClearRecentlyFoundChats extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'clearRecentlyFoundChats';

  @override
  Map<String, dynamic> get params => {};

  ClearRecentlyFoundChats();

  ClearRecentlyFoundChats.fromJson(Map<String, dynamic> json);
}

class CheckCreatedPublicChatsLimit extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkCreatedPublicChatsLimit';

  PublicChatType type;

  @override
  Map<String, dynamic> get params => {
    'type': type,
  };

  CheckCreatedPublicChatsLimit(
    this.type,
  );

  CheckCreatedPublicChatsLimit.fromJson(Map<String, dynamic> json) :
    type = convertToTdObject(json['type']);
}

class DeleteChatHistory extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChatHistory';

  int chatId;
  bool removeFromChatList;
  bool revoke;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'remove_from_chat_list': removeFromChatList,
    'revoke': revoke,
  };

  DeleteChatHistory(
    this.chatId,
    this.removeFromChatList,
    this.revoke,
  );

  DeleteChatHistory.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    removeFromChatList = convertToTdObject(json['remove_from_chat_list']),
    revoke = convertToTdObject(json['revoke']);
}

class DeleteChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  DeleteChat(
    this.chatId,
  );

  DeleteChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class DeleteAllCallMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteAllCallMessages';

  bool revoke;

  @override
  Map<String, dynamic> get params => {
    'revoke': revoke,
  };

  DeleteAllCallMessages(
    this.revoke,
  );

  DeleteAllCallMessages.fromJson(Map<String, dynamic> json) :
    revoke = convertToTdObject(json['revoke']);
}

class RemoveNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeNotification';

  int notificationGroupId;
  int notificationId;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'notification_id': notificationId,
  };

  RemoveNotification(
    this.notificationGroupId,
    this.notificationId,
  );

  RemoveNotification.fromJson(Map<String, dynamic> json) :
    notificationGroupId = convertToTdObject(json['notification_group_id']),
    notificationId = convertToTdObject(json['notification_id']);
}

class RemoveNotificationGroup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeNotificationGroup';

  int notificationGroupId;
  int maxNotificationId;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'max_notification_id': maxNotificationId,
  };

  RemoveNotificationGroup(
    this.notificationGroupId,
    this.maxNotificationId,
  );

  RemoveNotificationGroup.fromJson(Map<String, dynamic> json) :
    notificationGroupId = convertToTdObject(json['notification_group_id']),
    maxNotificationId = convertToTdObject(json['max_notification_id']);
}

class SendChatScreenshotTakenNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendChatScreenshotTakenNotification';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  SendChatScreenshotTakenNotification(
    this.chatId,
  );

  SendChatScreenshotTakenNotification.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class DeleteMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteMessages';

  int chatId;
  List<int> messageIds;
  bool revoke;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
    'revoke': revoke,
  };

  DeleteMessages(
    this.chatId,
    this.messageIds,
    this.revoke,
  );

  DeleteMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageIds = convertToTdObject(json['message_ids']),
    revoke = convertToTdObject(json['revoke']);
}

class DeleteChatMessagesFromUser extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChatMessagesFromUser';

  int chatId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
  };

  DeleteChatMessagesFromUser(
    this.chatId,
    this.userId,
  );

  DeleteChatMessagesFromUser.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    userId = convertToTdObject(json['user_id']);
}

class EditInlineMessageText extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageText';

  String inlineMessageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  EditInlineMessageText(
    this.inlineMessageId,
    this.replyMarkup,
    this.inputMessageContent,
  );

  EditInlineMessageText.fromJson(Map<String, dynamic> json) :
    inlineMessageId = convertToTdObject(json['inline_message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class EditInlineMessageLiveLocation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageLiveLocation';

  String inlineMessageId;
  ReplyMarkup replyMarkup;
  Location location;
  int heading;
  int proximityAlertRadius;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
    'location': location,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  EditInlineMessageLiveLocation(
    this.inlineMessageId,
    this.replyMarkup,
    this.location,
    this.heading,
    this.proximityAlertRadius,
  );

  EditInlineMessageLiveLocation.fromJson(Map<String, dynamic> json) :
    inlineMessageId = convertToTdObject(json['inline_message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    location = convertToTdObject(json['location']),
    heading = convertToTdObject(json['heading']),
    proximityAlertRadius = convertToTdObject(json['proximity_alert_radius']);
}

class EditInlineMessageMedia extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageMedia';

  String inlineMessageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  EditInlineMessageMedia(
    this.inlineMessageId,
    this.replyMarkup,
    this.inputMessageContent,
  );

  EditInlineMessageMedia.fromJson(Map<String, dynamic> json) :
    inlineMessageId = convertToTdObject(json['inline_message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class EditInlineMessageCaption extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageCaption';

  String inlineMessageId;
  ReplyMarkup replyMarkup;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
    'caption': caption,
  };

  EditInlineMessageCaption(
    this.inlineMessageId,
    this.replyMarkup,
    this.caption,
  );

  EditInlineMessageCaption.fromJson(Map<String, dynamic> json) :
    inlineMessageId = convertToTdObject(json['inline_message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    caption = convertToTdObject(json['caption']);
}

class EditInlineMessageReplyMarkup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageReplyMarkup';

  String inlineMessageId;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
  };

  EditInlineMessageReplyMarkup(
    this.inlineMessageId,
    this.replyMarkup,
  );

  EditInlineMessageReplyMarkup.fromJson(Map<String, dynamic> json) :
    inlineMessageId = convertToTdObject(json['inline_message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']);
}

class EditMessageSchedulingState extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editMessageSchedulingState';

  int chatId;
  int messageId;
  MessageSchedulingState schedulingState;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'scheduling_state': schedulingState,
  };

  EditMessageSchedulingState(
    this.chatId,
    this.messageId,
    this.schedulingState,
  );

  EditMessageSchedulingState.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    schedulingState = convertToTdObject(json['scheduling_state']);
}

class SetPollAnswer extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setPollAnswer';

  int chatId;
  int messageId;
  List<int> optionIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'option_ids': optionIds,
  };

  SetPollAnswer(
    this.chatId,
    this.messageId,
    this.optionIds,
  );

  SetPollAnswer.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    optionIds = convertToTdObject(json['option_ids']);
}

class StopPoll extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'stopPoll';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
  };

  StopPoll(
    this.chatId,
    this.messageId,
    this.replyMarkup,
  );

  StopPoll.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']);
}

class HideSuggestedAction extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'hideSuggestedAction';

  SuggestedAction action;

  @override
  Map<String, dynamic> get params => {
    'action': action,
  };

  HideSuggestedAction(
    this.action,
  );

  HideSuggestedAction.fromJson(Map<String, dynamic> json) :
    action = convertToTdObject(json['action']);
}

class AnswerInlineQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerInlineQuery';

  int inlineQueryId;
  bool isPersonal;
  List<InputInlineQueryResult> results;
  int cacheTime;
  String nextOffset;
  String switchPmText;
  String switchPmParameter;

  @override
  Map<String, dynamic> get params => {
    'inline_query_id': inlineQueryId,
    'is_personal': isPersonal,
    'results': results,
    'cache_time': cacheTime,
    'next_offset': nextOffset,
    'switch_pm_text': switchPmText,
    'switch_pm_parameter': switchPmParameter,
  };

  AnswerInlineQuery(
    this.inlineQueryId,
    this.isPersonal,
    this.results,
    this.cacheTime,
    this.nextOffset,
    this.switchPmText,
    this.switchPmParameter,
  );

  AnswerInlineQuery.fromJson(Map<String, dynamic> json) :
    inlineQueryId = convertToTdObject(json['inline_query_id']),
    isPersonal = convertToTdObject(json['is_personal']),
    results = convertToTdObject(json['results']),
    cacheTime = convertToTdObject(json['cache_time']),
    nextOffset = convertToTdObject(json['next_offset']),
    switchPmText = convertToTdObject(json['switch_pm_text']),
    switchPmParameter = convertToTdObject(json['switch_pm_parameter']);
}

class AnswerCallbackQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerCallbackQuery';

  int callbackQueryId;
  String text;
  bool showAlert;
  String url;
  int cacheTime;

  @override
  Map<String, dynamic> get params => {
    'callback_query_id': callbackQueryId,
    'text': text,
    'show_alert': showAlert,
    'url': url,
    'cache_time': cacheTime,
  };

  AnswerCallbackQuery(
    this.callbackQueryId,
    this.text,
    this.showAlert,
    this.url,
    this.cacheTime,
  );

  AnswerCallbackQuery.fromJson(Map<String, dynamic> json) :
    callbackQueryId = convertToTdObject(json['callback_query_id']),
    text = convertToTdObject(json['text']),
    showAlert = convertToTdObject(json['show_alert']),
    url = convertToTdObject(json['url']),
    cacheTime = convertToTdObject(json['cache_time']);
}

class AnswerShippingQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerShippingQuery';

  int shippingQueryId;
  List<ShippingOption> shippingOptions;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'shipping_query_id': shippingQueryId,
    'shipping_options': shippingOptions,
    'error_message': errorMessage,
  };

  AnswerShippingQuery(
    this.shippingQueryId,
    this.shippingOptions,
    this.errorMessage,
  );

  AnswerShippingQuery.fromJson(Map<String, dynamic> json) :
    shippingQueryId = convertToTdObject(json['shipping_query_id']),
    shippingOptions = convertToTdObject(json['shipping_options']),
    errorMessage = convertToTdObject(json['error_message']);
}

class AnswerPreCheckoutQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerPreCheckoutQuery';

  int preCheckoutQueryId;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'pre_checkout_query_id': preCheckoutQueryId,
    'error_message': errorMessage,
  };

  AnswerPreCheckoutQuery(
    this.preCheckoutQueryId,
    this.errorMessage,
  );

  AnswerPreCheckoutQuery.fromJson(Map<String, dynamic> json) :
    preCheckoutQueryId = convertToTdObject(json['pre_checkout_query_id']),
    errorMessage = convertToTdObject(json['error_message']);
}

class SetInlineGameScore extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setInlineGameScore';

  String inlineMessageId;
  bool editMessage;
  int userId;
  int score;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'edit_message': editMessage,
    'user_id': userId,
    'score': score,
    'force': force,
  };

  SetInlineGameScore(
    this.inlineMessageId,
    this.editMessage,
    this.userId,
    this.score,
    this.force,
  );

  SetInlineGameScore.fromJson(Map<String, dynamic> json) :
    inlineMessageId = convertToTdObject(json['inline_message_id']),
    editMessage = convertToTdObject(json['edit_message']),
    userId = convertToTdObject(json['user_id']),
    score = convertToTdObject(json['score']),
    force = convertToTdObject(json['force']);
}

class DeleteChatReplyMarkup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChatReplyMarkup';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  DeleteChatReplyMarkup(
    this.chatId,
    this.messageId,
  );

  DeleteChatReplyMarkup.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']);
}

class SendChatAction extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendChatAction';

  int chatId;
  int messageThreadId;
  ChatAction action;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'action': action,
  };

  SendChatAction(
    this.chatId,
    this.messageThreadId,
    this.action,
  );

  SendChatAction.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageThreadId = convertToTdObject(json['message_thread_id']),
    action = convertToTdObject(json['action']);
}

class OpenChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'openChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  OpenChat(
    this.chatId,
  );

  OpenChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class CloseChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'closeChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  CloseChat(
    this.chatId,
  );

  CloseChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class ViewMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'viewMessages';

  int chatId;
  int messageThreadId;
  List<int> messageIds;
  bool forceRead;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'message_ids': messageIds,
    'force_read': forceRead,
  };

  ViewMessages(
    this.chatId,
    this.messageThreadId,
    this.messageIds,
    this.forceRead,
  );

  ViewMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageThreadId = convertToTdObject(json['message_thread_id']),
    messageIds = convertToTdObject(json['message_ids']),
    forceRead = convertToTdObject(json['force_read']);
}

class OpenMessageContent extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'openMessageContent';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  OpenMessageContent(
    this.chatId,
    this.messageId,
  );

  OpenMessageContent.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']);
}

class ReadAllChatMentions extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'readAllChatMentions';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  ReadAllChatMentions(
    this.chatId,
  );

  ReadAllChatMentions.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class AddChatToList extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addChatToList';

  int chatId;
  ChatList chatList;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'chat_list': chatList,
  };

  AddChatToList(
    this.chatId,
    this.chatList,
  );

  AddChatToList.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    chatList = convertToTdObject(json['chat_list']);
}

class DeleteChatFilter extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChatFilter';

  int chatFilterId;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_id': chatFilterId,
  };

  DeleteChatFilter(
    this.chatFilterId,
  );

  DeleteChatFilter.fromJson(Map<String, dynamic> json) :
    chatFilterId = convertToTdObject(json['chat_filter_id']);
}

class ReorderChatFilters extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reorderChatFilters';

  List<int> chatFilterIds;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_ids': chatFilterIds,
  };

  ReorderChatFilters(
    this.chatFilterIds,
  );

  ReorderChatFilters.fromJson(Map<String, dynamic> json) :
    chatFilterIds = convertToTdObject(json['chat_filter_ids']);
}

class SetChatTitle extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatTitle';

  int chatId;
  String title;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'title': title,
  };

  SetChatTitle(
    this.chatId,
    this.title,
  );

  SetChatTitle.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    title = convertToTdObject(json['title']);
}

class SetChatPhoto extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatPhoto';

  int chatId;
  InputChatPhoto photo;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'photo': photo,
  };

  SetChatPhoto(
    this.chatId,
    this.photo,
  );

  SetChatPhoto.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    photo = convertToTdObject(json['photo']);
}

class SetChatMessageTtlSetting extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatMessageTtlSetting';

  int chatId;
  int ttl;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'ttl': ttl,
  };

  SetChatMessageTtlSetting(
    this.chatId,
    this.ttl,
  );

  SetChatMessageTtlSetting.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    ttl = convertToTdObject(json['ttl']);
}

class SetChatPermissions extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatPermissions';

  int chatId;
  ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'permissions': permissions,
  };

  SetChatPermissions(
    this.chatId,
    this.permissions,
  );

  SetChatPermissions.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    permissions = convertToTdObject(json['permissions']);
}

class SetChatDraftMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatDraftMessage';

  int chatId;
  int messageThreadId;
  DraftMessage? draftMessage;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'draft_message': draftMessage,
  };

  SetChatDraftMessage(
    this.chatId,
    this.messageThreadId,
    this.draftMessage,
  );

  SetChatDraftMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageThreadId = convertToTdObject(json['message_thread_id']),
    draftMessage = convertToTdObject(json['draft_message']);
}

class SetChatNotificationSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatNotificationSettings';

  int chatId;
  ChatNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'notification_settings': notificationSettings,
  };

  SetChatNotificationSettings(
    this.chatId,
    this.notificationSettings,
  );

  SetChatNotificationSettings.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    notificationSettings = convertToTdObject(json['notification_settings']);
}

class ToggleChatIsMarkedAsUnread extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleChatIsMarkedAsUnread';

  int chatId;
  bool isMarkedAsUnread;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_marked_as_unread': isMarkedAsUnread,
  };

  ToggleChatIsMarkedAsUnread(
    this.chatId,
    this.isMarkedAsUnread,
  );

  ToggleChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    isMarkedAsUnread = convertToTdObject(json['is_marked_as_unread']);
}

class ToggleChatDefaultDisableNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleChatDefaultDisableNotification';

  int chatId;
  bool defaultDisableNotification;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'default_disable_notification': defaultDisableNotification,
  };

  ToggleChatDefaultDisableNotification(
    this.chatId,
    this.defaultDisableNotification,
  );

  ToggleChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    defaultDisableNotification = convertToTdObject(json['default_disable_notification']);
}

class SetChatClientData extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatClientData';

  int chatId;
  String clientData;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'client_data': clientData,
  };

  SetChatClientData(
    this.chatId,
    this.clientData,
  );

  SetChatClientData.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    clientData = convertToTdObject(json['client_data']);
}

class SetChatDescription extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatDescription';

  int chatId;
  String description;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'description': description,
  };

  SetChatDescription(
    this.chatId,
    this.description,
  );

  SetChatDescription.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    description = convertToTdObject(json['description']);
}

class SetChatDiscussionGroup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatDiscussionGroup';

  int chatId;
  int discussionChatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'discussion_chat_id': discussionChatId,
  };

  SetChatDiscussionGroup(
    this.chatId,
    this.discussionChatId,
  );

  SetChatDiscussionGroup.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    discussionChatId = convertToTdObject(json['discussion_chat_id']);
}

class SetChatLocation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatLocation';

  int chatId;
  ChatLocation location;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'location': location,
  };

  SetChatLocation(
    this.chatId,
    this.location,
  );

  SetChatLocation.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    location = convertToTdObject(json['location']);
}

class SetChatSlowModeDelay extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatSlowModeDelay';

  int chatId;
  int slowModeDelay;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'slow_mode_delay': slowModeDelay,
  };

  SetChatSlowModeDelay(
    this.chatId,
    this.slowModeDelay,
  );

  SetChatSlowModeDelay.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    slowModeDelay = convertToTdObject(json['slow_mode_delay']);
}

class PinChatMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'pinChatMessage';

  int chatId;
  int messageId;
  bool disableNotification;
  bool onlyForSelf;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'disable_notification': disableNotification,
    'only_for_self': onlyForSelf,
  };

  PinChatMessage(
    this.chatId,
    this.messageId,
    this.disableNotification,
    this.onlyForSelf,
  );

  PinChatMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    disableNotification = convertToTdObject(json['disable_notification']),
    onlyForSelf = convertToTdObject(json['only_for_self']);
}

class UnpinChatMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'unpinChatMessage';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UnpinChatMessage(
    this.chatId,
    this.messageId,
  );

  UnpinChatMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']);
}

class UnpinAllChatMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'unpinAllChatMessages';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  UnpinAllChatMessages(
    this.chatId,
  );

  UnpinAllChatMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class JoinChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'joinChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  JoinChat(
    this.chatId,
  );

  JoinChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class LeaveChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'leaveChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  LeaveChat(
    this.chatId,
  );

  LeaveChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class AddChatMember extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addChatMember';

  int chatId;
  int userId;
  int forwardLimit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
    'forward_limit': forwardLimit,
  };

  AddChatMember(
    this.chatId,
    this.userId,
    this.forwardLimit,
  );

  AddChatMember.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    userId = convertToTdObject(json['user_id']),
    forwardLimit = convertToTdObject(json['forward_limit']);
}

class AddChatMembers extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addChatMembers';

  int chatId;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_ids': userIds,
  };

  AddChatMembers(
    this.chatId,
    this.userIds,
  );

  AddChatMembers.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    userIds = convertToTdObject(json['user_ids']);
}

class SetChatMemberStatus extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatMemberStatus';

  int chatId;
  MessageSender memberId;
  ChatMemberStatus status;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'member_id': memberId,
    'status': status,
  };

  SetChatMemberStatus(
    this.chatId,
    this.memberId,
    this.status,
  );

  SetChatMemberStatus.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    memberId = convertToTdObject(json['member_id']),
    status = convertToTdObject(json['status']);
}

class BanChatMember extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'banChatMember';

  int chatId;
  MessageSender memberId;
  int bannedUntilDate;
  bool revokeMessages;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'member_id': memberId,
    'banned_until_date': bannedUntilDate,
    'revoke_messages': revokeMessages,
  };

  BanChatMember(
    this.chatId,
    this.memberId,
    this.bannedUntilDate,
    this.revokeMessages,
  );

  BanChatMember.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    memberId = convertToTdObject(json['member_id']),
    bannedUntilDate = convertToTdObject(json['banned_until_date']),
    revokeMessages = convertToTdObject(json['revoke_messages']);
}

class TransferChatOwnership extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'transferChatOwnership';

  int chatId;
  int userId;
  String password;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
    'password': password,
  };

  TransferChatOwnership(
    this.chatId,
    this.userId,
    this.password,
  );

  TransferChatOwnership.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    userId = convertToTdObject(json['user_id']),
    password = convertToTdObject(json['password']);
}

class ClearAllDraftMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'clearAllDraftMessages';

  bool excludeSecretChats;

  @override
  Map<String, dynamic> get params => {
    'exclude_secret_chats': excludeSecretChats,
  };

  ClearAllDraftMessages(
    this.excludeSecretChats,
  );

  ClearAllDraftMessages.fromJson(Map<String, dynamic> json) :
    excludeSecretChats = convertToTdObject(json['exclude_secret_chats']);
}

class SetScopeNotificationSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setScopeNotificationSettings';

  NotificationSettingsScope scope;
  ScopeNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'notification_settings': notificationSettings,
  };

  SetScopeNotificationSettings(
    this.scope,
    this.notificationSettings,
  );

  SetScopeNotificationSettings.fromJson(Map<String, dynamic> json) :
    scope = convertToTdObject(json['scope']),
    notificationSettings = convertToTdObject(json['notification_settings']);
}

class ResetAllNotificationSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'resetAllNotificationSettings';

  @override
  Map<String, dynamic> get params => {};

  ResetAllNotificationSettings();

  ResetAllNotificationSettings.fromJson(Map<String, dynamic> json);
}

class ToggleChatIsPinned extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleChatIsPinned';

  ChatList chatList;
  int chatId;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'chat_id': chatId,
    'is_pinned': isPinned,
  };

  ToggleChatIsPinned(
    this.chatList,
    this.chatId,
    this.isPinned,
  );

  ToggleChatIsPinned.fromJson(Map<String, dynamic> json) :
    chatList = convertToTdObject(json['chat_list']),
    chatId = convertToTdObject(json['chat_id']),
    isPinned = convertToTdObject(json['is_pinned']);
}

class SetPinnedChats extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setPinnedChats';

  ChatList chatList;
  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'chat_ids': chatIds,
  };

  SetPinnedChats(
    this.chatList,
    this.chatIds,
  );

  SetPinnedChats.fromJson(Map<String, dynamic> json) :
    chatList = convertToTdObject(json['chat_list']),
    chatIds = convertToTdObject(json['chat_ids']);
}

class CancelDownloadFile extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'cancelDownloadFile';

  int fileId;
  bool onlyIfPending;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'only_if_pending': onlyIfPending,
  };

  CancelDownloadFile(
    this.fileId,
    this.onlyIfPending,
  );

  CancelDownloadFile.fromJson(Map<String, dynamic> json) :
    fileId = convertToTdObject(json['file_id']),
    onlyIfPending = convertToTdObject(json['only_if_pending']);
}

class CancelUploadFile extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'cancelUploadFile';

  int fileId;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
  };

  CancelUploadFile(
    this.fileId,
  );

  CancelUploadFile.fromJson(Map<String, dynamic> json) :
    fileId = convertToTdObject(json['file_id']);
}

class WriteGeneratedFilePart extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'writeGeneratedFilePart';

  int generationId;
  int offset;
  String data;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'offset': offset,
    'data': data,
  };

  WriteGeneratedFilePart(
    this.generationId,
    this.offset,
    this.data,
  );

  WriteGeneratedFilePart.fromJson(Map<String, dynamic> json) :
    generationId = convertToTdObject(json['generation_id']),
    offset = convertToTdObject(json['offset']),
    data = convertToTdObject(json['data']);
}

class SetFileGenerationProgress extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setFileGenerationProgress';

  int generationId;
  int expectedSize;
  int localPrefixSize;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'expected_size': expectedSize,
    'local_prefix_size': localPrefixSize,
  };

  SetFileGenerationProgress(
    this.generationId,
    this.expectedSize,
    this.localPrefixSize,
  );

  SetFileGenerationProgress.fromJson(Map<String, dynamic> json) :
    generationId = convertToTdObject(json['generation_id']),
    expectedSize = convertToTdObject(json['expected_size']),
    localPrefixSize = convertToTdObject(json['local_prefix_size']);
}

class FinishFileGeneration extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'finishFileGeneration';

  int generationId;
  Error error;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'error': error,
  };

  FinishFileGeneration(
    this.generationId,
    this.error,
  );

  FinishFileGeneration.fromJson(Map<String, dynamic> json) :
    generationId = convertToTdObject(json['generation_id']),
    error = convertToTdObject(json['error']);
}

class DeleteFile extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteFile';

  int fileId;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
  };

  DeleteFile(
    this.fileId,
  );

  DeleteFile.fromJson(Map<String, dynamic> json) :
    fileId = convertToTdObject(json['file_id']);
}

class ImportMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'importMessages';

  int chatId;
  InputFile messageFile;
  List<InputFile> attachedFiles;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_file': messageFile,
    'attached_files': attachedFiles,
  };

  ImportMessages(
    this.chatId,
    this.messageFile,
    this.attachedFiles,
  );

  ImportMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageFile = convertToTdObject(json['message_file']),
    attachedFiles = convertToTdObject(json['attached_files']);
}

class DeleteRevokedChatInviteLink extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteRevokedChatInviteLink';

  int chatId;
  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  DeleteRevokedChatInviteLink(
    this.chatId,
    this.inviteLink,
  );

  DeleteRevokedChatInviteLink.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    inviteLink = convertToTdObject(json['invite_link']);
}

class DeleteAllRevokedChatInviteLinks extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteAllRevokedChatInviteLinks';

  int chatId;
  int creatorUserId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'creator_user_id': creatorUserId,
  };

  DeleteAllRevokedChatInviteLinks(
    this.chatId,
    this.creatorUserId,
  );

  DeleteAllRevokedChatInviteLinks.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    creatorUserId = convertToTdObject(json['creator_user_id']);
}

class AcceptCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'acceptCall';

  int callId;
  CallProtocol protocol;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'protocol': protocol,
  };

  AcceptCall(
    this.callId,
    this.protocol,
  );

  AcceptCall.fromJson(Map<String, dynamic> json) :
    callId = convertToTdObject(json['call_id']),
    protocol = convertToTdObject(json['protocol']);
}

class SendCallSignalingData extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendCallSignalingData';

  int callId;
  String data;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'data': data,
  };

  SendCallSignalingData(
    this.callId,
    this.data,
  );

  SendCallSignalingData.fromJson(Map<String, dynamic> json) :
    callId = convertToTdObject(json['call_id']),
    data = convertToTdObject(json['data']);
}

class DiscardCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'discardCall';

  int callId;
  bool isDisconnected;
  int duration;
  bool isVideo;
  int connectionId;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'is_disconnected': isDisconnected,
    'duration': duration,
    'is_video': isVideo,
    'connection_id': connectionId,
  };

  DiscardCall(
    this.callId,
    this.isDisconnected,
    this.duration,
    this.isVideo,
    this.connectionId,
  );

  DiscardCall.fromJson(Map<String, dynamic> json) :
    callId = convertToTdObject(json['call_id']),
    isDisconnected = convertToTdObject(json['is_disconnected']),
    duration = convertToTdObject(json['duration']),
    isVideo = convertToTdObject(json['is_video']),
    connectionId = convertToTdObject(json['connection_id']);
}

class SendCallRating extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendCallRating';

  int callId;
  int rating;
  String comment;
  List<CallProblem> problems;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'rating': rating,
    'comment': comment,
    'problems': problems,
  };

  SendCallRating(
    this.callId,
    this.rating,
    this.comment,
    this.problems,
  );

  SendCallRating.fromJson(Map<String, dynamic> json) :
    callId = convertToTdObject(json['call_id']),
    rating = convertToTdObject(json['rating']),
    comment = convertToTdObject(json['comment']),
    problems = convertToTdObject(json['problems']);
}

class SendCallDebugInformation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendCallDebugInformation';

  int callId;
  String debugInformation;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'debug_information': debugInformation,
  };

  SendCallDebugInformation(
    this.callId,
    this.debugInformation,
  );

  SendCallDebugInformation.fromJson(Map<String, dynamic> json) :
    callId = convertToTdObject(json['call_id']),
    debugInformation = convertToTdObject(json['debug_information']);
}

class SetVoiceChatDefaultParticipant extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setVoiceChatDefaultParticipant';

  int chatId;
  MessageSender defaultParticipantId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'default_participant_id': defaultParticipantId,
  };

  SetVoiceChatDefaultParticipant(
    this.chatId,
    this.defaultParticipantId,
  );

  SetVoiceChatDefaultParticipant.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    defaultParticipantId = convertToTdObject(json['default_participant_id']);
}

class StartScheduledGroupCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'startScheduledGroupCall';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  StartScheduledGroupCall(
    this.groupCallId,
  );

  StartScheduledGroupCall.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']);
}

class ToggleGroupCallEnabledStartNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallEnabledStartNotification';

  int groupCallId;
  bool enabledStartNotification;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'enabled_start_notification': enabledStartNotification,
  };

  ToggleGroupCallEnabledStartNotification(
    this.groupCallId,
    this.enabledStartNotification,
  );

  ToggleGroupCallEnabledStartNotification.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    enabledStartNotification = convertToTdObject(json['enabled_start_notification']);
}

class ToggleGroupCallScreenSharingIsPaused extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallScreenSharingIsPaused';

  int groupCallId;
  bool isPaused;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'is_paused': isPaused,
  };

  ToggleGroupCallScreenSharingIsPaused(
    this.groupCallId,
    this.isPaused,
  );

  ToggleGroupCallScreenSharingIsPaused.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    isPaused = convertToTdObject(json['is_paused']);
}

class EndGroupCallScreenSharing extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'endGroupCallScreenSharing';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  EndGroupCallScreenSharing(
    this.groupCallId,
  );

  EndGroupCallScreenSharing.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']);
}

class SetGroupCallTitle extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setGroupCallTitle';

  int groupCallId;
  String title;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'title': title,
  };

  SetGroupCallTitle(
    this.groupCallId,
    this.title,
  );

  SetGroupCallTitle.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    title = convertToTdObject(json['title']);
}

class ToggleGroupCallMuteNewParticipants extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallMuteNewParticipants';

  int groupCallId;
  bool muteNewParticipants;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'mute_new_participants': muteNewParticipants,
  };

  ToggleGroupCallMuteNewParticipants(
    this.groupCallId,
    this.muteNewParticipants,
  );

  ToggleGroupCallMuteNewParticipants.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    muteNewParticipants = convertToTdObject(json['mute_new_participants']);
}

class RevokeGroupCallInviteLink extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'revokeGroupCallInviteLink';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  RevokeGroupCallInviteLink(
    this.groupCallId,
  );

  RevokeGroupCallInviteLink.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']);
}

class InviteGroupCallParticipants extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'inviteGroupCallParticipants';

  int groupCallId;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'user_ids': userIds,
  };

  InviteGroupCallParticipants(
    this.groupCallId,
    this.userIds,
  );

  InviteGroupCallParticipants.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    userIds = convertToTdObject(json['user_ids']);
}

class StartGroupCallRecording extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'startGroupCallRecording';

  int groupCallId;
  String title;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'title': title,
  };

  StartGroupCallRecording(
    this.groupCallId,
    this.title,
  );

  StartGroupCallRecording.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    title = convertToTdObject(json['title']);
}

class EndGroupCallRecording extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'endGroupCallRecording';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  EndGroupCallRecording(
    this.groupCallId,
  );

  EndGroupCallRecording.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']);
}

class ToggleGroupCallIsMyVideoPaused extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallIsMyVideoPaused';

  int groupCallId;
  bool isMyVideoPaused;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'is_my_video_paused': isMyVideoPaused,
  };

  ToggleGroupCallIsMyVideoPaused(
    this.groupCallId,
    this.isMyVideoPaused,
  );

  ToggleGroupCallIsMyVideoPaused.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    isMyVideoPaused = convertToTdObject(json['is_my_video_paused']);
}

class ToggleGroupCallIsMyVideoEnabled extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallIsMyVideoEnabled';

  int groupCallId;
  bool isMyVideoEnabled;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'is_my_video_enabled': isMyVideoEnabled,
  };

  ToggleGroupCallIsMyVideoEnabled(
    this.groupCallId,
    this.isMyVideoEnabled,
  );

  ToggleGroupCallIsMyVideoEnabled.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    isMyVideoEnabled = convertToTdObject(json['is_my_video_enabled']);
}

class SetGroupCallParticipantIsSpeaking extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setGroupCallParticipantIsSpeaking';

  int groupCallId;
  int audioSource;
  bool isSpeaking;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'audio_source': audioSource,
    'is_speaking': isSpeaking,
  };

  SetGroupCallParticipantIsSpeaking(
    this.groupCallId,
    this.audioSource,
    this.isSpeaking,
  );

  SetGroupCallParticipantIsSpeaking.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    audioSource = convertToTdObject(json['audio_source']),
    isSpeaking = convertToTdObject(json['is_speaking']);
}

class ToggleGroupCallParticipantIsMuted extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallParticipantIsMuted';

  int groupCallId;
  MessageSender participantId;
  bool isMuted;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant_id': participantId,
    'is_muted': isMuted,
  };

  ToggleGroupCallParticipantIsMuted(
    this.groupCallId,
    this.participantId,
    this.isMuted,
  );

  ToggleGroupCallParticipantIsMuted.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    participantId = convertToTdObject(json['participant_id']),
    isMuted = convertToTdObject(json['is_muted']);
}

class SetGroupCallParticipantVolumeLevel extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setGroupCallParticipantVolumeLevel';

  int groupCallId;
  MessageSender participantId;
  int volumeLevel;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant_id': participantId,
    'volume_level': volumeLevel,
  };

  SetGroupCallParticipantVolumeLevel(
    this.groupCallId,
    this.participantId,
    this.volumeLevel,
  );

  SetGroupCallParticipantVolumeLevel.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    participantId = convertToTdObject(json['participant_id']),
    volumeLevel = convertToTdObject(json['volume_level']);
}

class ToggleGroupCallParticipantIsHandRaised extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallParticipantIsHandRaised';

  int groupCallId;
  MessageSender participantId;
  bool isHandRaised;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant_id': participantId,
    'is_hand_raised': isHandRaised,
  };

  ToggleGroupCallParticipantIsHandRaised(
    this.groupCallId,
    this.participantId,
    this.isHandRaised,
  );

  ToggleGroupCallParticipantIsHandRaised.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    participantId = convertToTdObject(json['participant_id']),
    isHandRaised = convertToTdObject(json['is_hand_raised']);
}

class LoadGroupCallParticipants extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'loadGroupCallParticipants';

  int groupCallId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'limit': limit,
  };

  LoadGroupCallParticipants(
    this.groupCallId,
    this.limit,
  );

  LoadGroupCallParticipants.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    limit = convertToTdObject(json['limit']);
}

class LeaveGroupCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'leaveGroupCall';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  LeaveGroupCall(
    this.groupCallId,
  );

  LeaveGroupCall.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']);
}

class DiscardGroupCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'discardGroupCall';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  DiscardGroupCall(
    this.groupCallId,
  );

  DiscardGroupCall.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']);
}

class ToggleMessageSenderIsBlocked extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleMessageSenderIsBlocked';

  MessageSender sender;
  bool isBlocked;

  @override
  Map<String, dynamic> get params => {
    'sender': sender,
    'is_blocked': isBlocked,
  };

  ToggleMessageSenderIsBlocked(
    this.sender,
    this.isBlocked,
  );

  ToggleMessageSenderIsBlocked.fromJson(Map<String, dynamic> json) :
    sender = convertToTdObject(json['sender']),
    isBlocked = convertToTdObject(json['is_blocked']);
}

class BlockMessageSenderFromReplies extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'blockMessageSenderFromReplies';

  int messageId;
  bool deleteMessage;
  bool deleteAllMessages;
  bool reportSpam;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
    'delete_message': deleteMessage,
    'delete_all_messages': deleteAllMessages,
    'report_spam': reportSpam,
  };

  BlockMessageSenderFromReplies(
    this.messageId,
    this.deleteMessage,
    this.deleteAllMessages,
    this.reportSpam,
  );

  BlockMessageSenderFromReplies.fromJson(Map<String, dynamic> json) :
    messageId = convertToTdObject(json['message_id']),
    deleteMessage = convertToTdObject(json['delete_message']),
    deleteAllMessages = convertToTdObject(json['delete_all_messages']),
    reportSpam = convertToTdObject(json['report_spam']);
}

class AddContact extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addContact';

  Contact contact;
  bool sharePhoneNumber;

  @override
  Map<String, dynamic> get params => {
    'contact': contact,
    'share_phone_number': sharePhoneNumber,
  };

  AddContact(
    this.contact,
    this.sharePhoneNumber,
  );

  AddContact.fromJson(Map<String, dynamic> json) :
    contact = convertToTdObject(json['contact']),
    sharePhoneNumber = convertToTdObject(json['share_phone_number']);
}

class RemoveContacts extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeContacts';

  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
  };

  RemoveContacts(
    this.userIds,
  );

  RemoveContacts.fromJson(Map<String, dynamic> json) :
    userIds = convertToTdObject(json['user_ids']);
}

class ClearImportedContacts extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'clearImportedContacts';

  @override
  Map<String, dynamic> get params => {};

  ClearImportedContacts();

  ClearImportedContacts.fromJson(Map<String, dynamic> json);
}

class SharePhoneNumber extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sharePhoneNumber';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  SharePhoneNumber(
    this.userId,
  );

  SharePhoneNumber.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']);
}

class ChangeStickerSet extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'changeStickerSet';

  int setId;
  bool isInstalled;
  bool isArchived;

  @override
  Map<String, dynamic> get params => {
    'set_id': setId,
    'is_installed': isInstalled,
    'is_archived': isArchived,
  };

  ChangeStickerSet(
    this.setId,
    this.isInstalled,
    this.isArchived,
  );

  ChangeStickerSet.fromJson(Map<String, dynamic> json) :
    setId = convertToTdObject(json['set_id']),
    isInstalled = convertToTdObject(json['is_installed']),
    isArchived = convertToTdObject(json['is_archived']);
}

class ViewTrendingStickerSets extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'viewTrendingStickerSets';

  List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    'sticker_set_ids': stickerSetIds,
  };

  ViewTrendingStickerSets(
    this.stickerSetIds,
  );

  ViewTrendingStickerSets.fromJson(Map<String, dynamic> json) :
    stickerSetIds = convertToTdObject(json['sticker_set_ids']);
}

class ReorderInstalledStickerSets extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reorderInstalledStickerSets';

  bool isMasks;
  List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'sticker_set_ids': stickerSetIds,
  };

  ReorderInstalledStickerSets(
    this.isMasks,
    this.stickerSetIds,
  );

  ReorderInstalledStickerSets.fromJson(Map<String, dynamic> json) :
    isMasks = convertToTdObject(json['is_masks']),
    stickerSetIds = convertToTdObject(json['sticker_set_ids']);
}

class RemoveRecentSticker extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeRecentSticker';

  bool isAttached;
  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
    'sticker': sticker,
  };

  RemoveRecentSticker(
    this.isAttached,
    this.sticker,
  );

  RemoveRecentSticker.fromJson(Map<String, dynamic> json) :
    isAttached = convertToTdObject(json['is_attached']),
    sticker = convertToTdObject(json['sticker']);
}

class ClearRecentStickers extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'clearRecentStickers';

  bool isAttached;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
  };

  ClearRecentStickers(
    this.isAttached,
  );

  ClearRecentStickers.fromJson(Map<String, dynamic> json) :
    isAttached = convertToTdObject(json['is_attached']);
}

class AddFavoriteSticker extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addFavoriteSticker';

  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  AddFavoriteSticker(
    this.sticker,
  );

  AddFavoriteSticker.fromJson(Map<String, dynamic> json) :
    sticker = convertToTdObject(json['sticker']);
}

class RemoveFavoriteSticker extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeFavoriteSticker';

  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  RemoveFavoriteSticker(
    this.sticker,
  );

  RemoveFavoriteSticker.fromJson(Map<String, dynamic> json) :
    sticker = convertToTdObject(json['sticker']);
}

class AddSavedAnimation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addSavedAnimation';

  InputFile animation;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
  };

  AddSavedAnimation(
    this.animation,
  );

  AddSavedAnimation.fromJson(Map<String, dynamic> json) :
    animation = convertToTdObject(json['animation']);
}

class RemoveSavedAnimation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeSavedAnimation';

  InputFile animation;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
  };

  RemoveSavedAnimation(
    this.animation,
  );

  RemoveSavedAnimation.fromJson(Map<String, dynamic> json) :
    animation = convertToTdObject(json['animation']);
}

class RemoveRecentHashtag extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeRecentHashtag';

  String hashtag;

  @override
  Map<String, dynamic> get params => {
    'hashtag': hashtag,
  };

  RemoveRecentHashtag(
    this.hashtag,
  );

  RemoveRecentHashtag.fromJson(Map<String, dynamic> json) :
    hashtag = convertToTdObject(json['hashtag']);
}

class SetProfilePhoto extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setProfilePhoto';

  InputChatPhoto photo;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
  };

  SetProfilePhoto(
    this.photo,
  );

  SetProfilePhoto.fromJson(Map<String, dynamic> json) :
    photo = convertToTdObject(json['photo']);
}

class DeleteProfilePhoto extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteProfilePhoto';

  int profilePhotoId;

  @override
  Map<String, dynamic> get params => {
    'profile_photo_id': profilePhotoId,
  };

  DeleteProfilePhoto(
    this.profilePhotoId,
  );

  DeleteProfilePhoto.fromJson(Map<String, dynamic> json) :
    profilePhotoId = convertToTdObject(json['profile_photo_id']);
}

class SetName extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setName';

  String firstName;
  String lastName;

  @override
  Map<String, dynamic> get params => {
    'first_name': firstName,
    'last_name': lastName,
  };

  SetName(
    this.firstName,
    this.lastName,
  );

  SetName.fromJson(Map<String, dynamic> json) :
    firstName = convertToTdObject(json['first_name']),
    lastName = convertToTdObject(json['last_name']);
}

class SetBio extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setBio';

  String bio;

  @override
  Map<String, dynamic> get params => {
    'bio': bio,
  };

  SetBio(
    this.bio,
  );

  SetBio.fromJson(Map<String, dynamic> json) :
    bio = convertToTdObject(json['bio']);
}

class SetUsername extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setUsername';

  String username;

  @override
  Map<String, dynamic> get params => {
    'username': username,
  };

  SetUsername(
    this.username,
  );

  SetUsername.fromJson(Map<String, dynamic> json) :
    username = convertToTdObject(json['username']);
}

class SetLocation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setLocation';

  Location location;

  @override
  Map<String, dynamic> get params => {
    'location': location,
  };

  SetLocation(
    this.location,
  );

  SetLocation.fromJson(Map<String, dynamic> json) :
    location = convertToTdObject(json['location']);
}

class CheckChangePhoneNumberCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkChangePhoneNumberCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckChangePhoneNumberCode(
    this.code,
  );

  CheckChangePhoneNumberCode.fromJson(Map<String, dynamic> json) :
    code = convertToTdObject(json['code']);
}

class SetCommands extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setCommands';

  BotCommandScope scope;
  String languageCode;
  List<BotCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'language_code': languageCode,
    'commands': commands,
  };

  SetCommands(
    this.scope,
    this.languageCode,
    this.commands,
  );

  SetCommands.fromJson(Map<String, dynamic> json) :
    scope = convertToTdObject(json['scope']),
    languageCode = convertToTdObject(json['language_code']),
    commands = convertToTdObject(json['commands']);
}

class DeleteCommands extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteCommands';

  BotCommandScope scope;
  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'language_code': languageCode,
  };

  DeleteCommands(
    this.scope,
    this.languageCode,
  );

  DeleteCommands.fromJson(Map<String, dynamic> json) :
    scope = convertToTdObject(json['scope']),
    languageCode = convertToTdObject(json['language_code']);
}

class TerminateSession extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'terminateSession';

  int sessionId;

  @override
  Map<String, dynamic> get params => {
    'session_id': sessionId,
  };

  TerminateSession(
    this.sessionId,
  );

  TerminateSession.fromJson(Map<String, dynamic> json) :
    sessionId = convertToTdObject(json['session_id']);
}

class TerminateAllOtherSessions extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'terminateAllOtherSessions';

  @override
  Map<String, dynamic> get params => {};

  TerminateAllOtherSessions();

  TerminateAllOtherSessions.fromJson(Map<String, dynamic> json);
}

class DisconnectWebsite extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'disconnectWebsite';

  int websiteId;

  @override
  Map<String, dynamic> get params => {
    'website_id': websiteId,
  };

  DisconnectWebsite(
    this.websiteId,
  );

  DisconnectWebsite.fromJson(Map<String, dynamic> json) :
    websiteId = convertToTdObject(json['website_id']);
}

class DisconnectAllWebsites extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'disconnectAllWebsites';

  @override
  Map<String, dynamic> get params => {};

  DisconnectAllWebsites();

  DisconnectAllWebsites.fromJson(Map<String, dynamic> json);
}

class SetSupergroupUsername extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setSupergroupUsername';

  int supergroupId;
  String username;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'username': username,
  };

  SetSupergroupUsername(
    this.supergroupId,
    this.username,
  );

  SetSupergroupUsername.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']),
    username = convertToTdObject(json['username']);
}

class SetSupergroupStickerSet extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setSupergroupStickerSet';

  int supergroupId;
  int stickerSetId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'sticker_set_id': stickerSetId,
  };

  SetSupergroupStickerSet(
    this.supergroupId,
    this.stickerSetId,
  );

  SetSupergroupStickerSet.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']),
    stickerSetId = convertToTdObject(json['sticker_set_id']);
}

class ToggleSupergroupSignMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleSupergroupSignMessages';

  int supergroupId;
  bool signMessages;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'sign_messages': signMessages,
  };

  ToggleSupergroupSignMessages(
    this.supergroupId,
    this.signMessages,
  );

  ToggleSupergroupSignMessages.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']),
    signMessages = convertToTdObject(json['sign_messages']);
}

class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleSupergroupIsAllHistoryAvailable';

  int supergroupId;
  bool isAllHistoryAvailable;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'is_all_history_available': isAllHistoryAvailable,
  };

  ToggleSupergroupIsAllHistoryAvailable(
    this.supergroupId,
    this.isAllHistoryAvailable,
  );

  ToggleSupergroupIsAllHistoryAvailable.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']),
    isAllHistoryAvailable = convertToTdObject(json['is_all_history_available']);
}

class ToggleSupergroupIsBroadcastGroup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleSupergroupIsBroadcastGroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  ToggleSupergroupIsBroadcastGroup(
    this.supergroupId,
  );

  ToggleSupergroupIsBroadcastGroup.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']);
}

class ReportSupergroupSpam extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reportSupergroupSpam';

  int supergroupId;
  int userId;
  List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'user_id': userId,
    'message_ids': messageIds,
  };

  ReportSupergroupSpam(
    this.supergroupId,
    this.userId,
    this.messageIds,
  );

  ReportSupergroupSpam.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']),
    userId = convertToTdObject(json['user_id']),
    messageIds = convertToTdObject(json['message_ids']);
}

class CloseSecretChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'closeSecretChat';

  int secretChatId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
  };

  CloseSecretChat(
    this.secretChatId,
  );

  CloseSecretChat.fromJson(Map<String, dynamic> json) :
    secretChatId = convertToTdObject(json['secret_chat_id']);
}

class DeleteSavedOrderInfo extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteSavedOrderInfo';

  @override
  Map<String, dynamic> get params => {};

  DeleteSavedOrderInfo();

  DeleteSavedOrderInfo.fromJson(Map<String, dynamic> json);
}

class DeleteSavedCredentials extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteSavedCredentials';

  @override
  Map<String, dynamic> get params => {};

  DeleteSavedCredentials();

  DeleteSavedCredentials.fromJson(Map<String, dynamic> json);
}

class RemoveBackground extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeBackground';

  int backgroundId;

  @override
  Map<String, dynamic> get params => {
    'background_id': backgroundId,
  };

  RemoveBackground(
    this.backgroundId,
  );

  RemoveBackground.fromJson(Map<String, dynamic> json) :
    backgroundId = convertToTdObject(json['background_id']);
}

class ResetBackgrounds extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'resetBackgrounds';

  @override
  Map<String, dynamic> get params => {};

  ResetBackgrounds();

  ResetBackgrounds.fromJson(Map<String, dynamic> json);
}

class SynchronizeLanguagePack extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'synchronizeLanguagePack';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  SynchronizeLanguagePack(
    this.languagePackId,
  );

  SynchronizeLanguagePack.fromJson(Map<String, dynamic> json) :
    languagePackId = convertToTdObject(json['language_pack_id']);
}

class AddCustomServerLanguagePack extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addCustomServerLanguagePack';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  AddCustomServerLanguagePack(
    this.languagePackId,
  );

  AddCustomServerLanguagePack.fromJson(Map<String, dynamic> json) :
    languagePackId = convertToTdObject(json['language_pack_id']);
}

class SetCustomLanguagePack extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setCustomLanguagePack';

  LanguagePackInfo info;
  List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    'info': info,
    'strings': strings,
  };

  SetCustomLanguagePack(
    this.info,
    this.strings,
  );

  SetCustomLanguagePack.fromJson(Map<String, dynamic> json) :
    info = convertToTdObject(json['info']),
    strings = convertToTdObject(json['strings']);
}

class EditCustomLanguagePackInfo extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editCustomLanguagePackInfo';

  LanguagePackInfo info;

  @override
  Map<String, dynamic> get params => {
    'info': info,
  };

  EditCustomLanguagePackInfo(
    this.info,
  );

  EditCustomLanguagePackInfo.fromJson(Map<String, dynamic> json) :
    info = convertToTdObject(json['info']);
}

class SetCustomLanguagePackString extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setCustomLanguagePackString';

  String languagePackId;
  LanguagePackString newString;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
    'new_string': newString,
  };

  SetCustomLanguagePackString(
    this.languagePackId,
    this.newString,
  );

  SetCustomLanguagePackString.fromJson(Map<String, dynamic> json) :
    languagePackId = convertToTdObject(json['language_pack_id']),
    newString = convertToTdObject(json['new_string']);
}

class DeleteLanguagePack extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteLanguagePack';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  DeleteLanguagePack(
    this.languagePackId,
  );

  DeleteLanguagePack.fromJson(Map<String, dynamic> json) :
    languagePackId = convertToTdObject(json['language_pack_id']);
}

class ProcessPushNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'processPushNotification';

  String payload;

  @override
  Map<String, dynamic> get params => {
    'payload': payload,
  };

  ProcessPushNotification(
    this.payload,
  );

  ProcessPushNotification.fromJson(Map<String, dynamic> json) :
    payload = convertToTdObject(json['payload']);
}

class SetUserPrivacySettingRules extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setUserPrivacySettingRules';

  UserPrivacySetting setting;
  UserPrivacySettingRules rules;

  @override
  Map<String, dynamic> get params => {
    'setting': setting,
    'rules': rules,
  };

  SetUserPrivacySettingRules(
    this.setting,
    this.rules,
  );

  SetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) :
    setting = convertToTdObject(json['setting']),
    rules = convertToTdObject(json['rules']);
}

class SetOption extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setOption';

  String name;
  OptionValue value;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'value': value,
  };

  SetOption(
    this.name,
    this.value,
  );

  SetOption.fromJson(Map<String, dynamic> json) :
    name = convertToTdObject(json['name']),
    value = convertToTdObject(json['value']);
}

class SetAccountTtl extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setAccountTtl';

  AccountTtl ttl;

  @override
  Map<String, dynamic> get params => {
    'ttl': ttl,
  };

  SetAccountTtl(
    this.ttl,
  );

  SetAccountTtl.fromJson(Map<String, dynamic> json) :
    ttl = convertToTdObject(json['ttl']);
}

class DeleteAccount extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteAccount';

  String reason;

  @override
  Map<String, dynamic> get params => {
    'reason': reason,
  };

  DeleteAccount(
    this.reason,
  );

  DeleteAccount.fromJson(Map<String, dynamic> json) :
    reason = convertToTdObject(json['reason']);
}

class RemoveChatActionBar extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeChatActionBar';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  RemoveChatActionBar(
    this.chatId,
  );

  RemoveChatActionBar.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class ReportChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reportChat';

  int chatId;
  List<int> messageIds;
  ChatReportReason reason;
  String text;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
    'reason': reason,
    'text': text,
  };

  ReportChat(
    this.chatId,
    this.messageIds,
    this.reason,
    this.text,
  );

  ReportChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageIds = convertToTdObject(json['message_ids']),
    reason = convertToTdObject(json['reason']),
    text = convertToTdObject(json['text']);
}

class ReportChatPhoto extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reportChatPhoto';

  int chatId;
  int fileId;
  ChatReportReason reason;
  String text;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'file_id': fileId,
    'reason': reason,
    'text': text,
  };

  ReportChatPhoto(
    this.chatId,
    this.fileId,
    this.reason,
    this.text,
  );

  ReportChatPhoto.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    fileId = convertToTdObject(json['file_id']),
    reason = convertToTdObject(json['reason']),
    text = convertToTdObject(json['text']);
}

class SetNetworkType extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setNetworkType';

  NetworkType type;

  @override
  Map<String, dynamic> get params => {
    'type': type,
  };

  SetNetworkType(
    this.type,
  );

  SetNetworkType.fromJson(Map<String, dynamic> json) :
    type = convertToTdObject(json['type']);
}

class AddNetworkStatistics extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addNetworkStatistics';

  NetworkStatisticsEntry entry;

  @override
  Map<String, dynamic> get params => {
    'entry': entry,
  };

  AddNetworkStatistics(
    this.entry,
  );

  AddNetworkStatistics.fromJson(Map<String, dynamic> json) :
    entry = convertToTdObject(json['entry']);
}

class ResetNetworkStatistics extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'resetNetworkStatistics';

  @override
  Map<String, dynamic> get params => {};

  ResetNetworkStatistics();

  ResetNetworkStatistics.fromJson(Map<String, dynamic> json);
}

class SetAutoDownloadSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setAutoDownloadSettings';

  AutoDownloadSettings settings;
  NetworkType type;

  @override
  Map<String, dynamic> get params => {
    'settings': settings,
    'type': type,
  };

  SetAutoDownloadSettings(
    this.settings,
    this.type,
  );

  SetAutoDownloadSettings.fromJson(Map<String, dynamic> json) :
    settings = convertToTdObject(json['settings']),
    type = convertToTdObject(json['type']);
}

class DeletePassportElement extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deletePassportElement';

  PassportElementType type;

  @override
  Map<String, dynamic> get params => {
    'type': type,
  };

  DeletePassportElement(
    this.type,
  );

  DeletePassportElement.fromJson(Map<String, dynamic> json) :
    type = convertToTdObject(json['type']);
}

class SetPassportElementErrors extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setPassportElementErrors';

  int userId;
  List<InputPassportElementError> errors;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'errors': errors,
  };

  SetPassportElementErrors(
    this.userId,
    this.errors,
  );

  SetPassportElementErrors.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    errors = convertToTdObject(json['errors']);
}

class CheckPhoneNumberVerificationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkPhoneNumberVerificationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckPhoneNumberVerificationCode(
    this.code,
  );

  CheckPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) :
    code = convertToTdObject(json['code']);
}

class CheckEmailAddressVerificationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkEmailAddressVerificationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckEmailAddressVerificationCode(
    this.code,
  );

  CheckEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) :
    code = convertToTdObject(json['code']);
}

class SendPassportAuthorizationForm extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendPassportAuthorizationForm';

  int autorizationFormId;
  List<PassportElementType> types;

  @override
  Map<String, dynamic> get params => {
    'autorization_form_id': autorizationFormId,
    'types': types,
  };

  SendPassportAuthorizationForm(
    this.autorizationFormId,
    this.types,
  );

  SendPassportAuthorizationForm.fromJson(Map<String, dynamic> json) :
    autorizationFormId = convertToTdObject(json['autorization_form_id']),
    types = convertToTdObject(json['types']);
}

class CheckPhoneNumberConfirmationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkPhoneNumberConfirmationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckPhoneNumberConfirmationCode(
    this.code,
  );

  CheckPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json) :
    code = convertToTdObject(json['code']);
}

class SetBotUpdatesStatus extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setBotUpdatesStatus';

  int pendingUpdateCount;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'pending_update_count': pendingUpdateCount,
    'error_message': errorMessage,
  };

  SetBotUpdatesStatus(
    this.pendingUpdateCount,
    this.errorMessage,
  );

  SetBotUpdatesStatus.fromJson(Map<String, dynamic> json) :
    pendingUpdateCount = convertToTdObject(json['pending_update_count']),
    errorMessage = convertToTdObject(json['error_message']);
}

class SetStickerPositionInSet extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setStickerPositionInSet';

  InputFile sticker;
  int position;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'position': position,
  };

  SetStickerPositionInSet(
    this.sticker,
    this.position,
  );

  SetStickerPositionInSet.fromJson(Map<String, dynamic> json) :
    sticker = convertToTdObject(json['sticker']),
    position = convertToTdObject(json['position']);
}

class RemoveStickerFromSet extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeStickerFromSet';

  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  RemoveStickerFromSet(
    this.sticker,
  );

  RemoveStickerFromSet.fromJson(Map<String, dynamic> json) :
    sticker = convertToTdObject(json['sticker']);
}

class AcceptTermsOfService extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'acceptTermsOfService';

  String termsOfServiceId;

  @override
  Map<String, dynamic> get params => {
    'terms_of_service_id': termsOfServiceId,
  };

  AcceptTermsOfService(
    this.termsOfServiceId,
  );

  AcceptTermsOfService.fromJson(Map<String, dynamic> json) :
    termsOfServiceId = convertToTdObject(json['terms_of_service_id']);
}

class AnswerCustomQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerCustomQuery';

  int customQueryId;
  String data;

  @override
  Map<String, dynamic> get params => {
    'custom_query_id': customQueryId,
    'data': data,
  };

  AnswerCustomQuery(
    this.customQueryId,
    this.data,
  );

  AnswerCustomQuery.fromJson(Map<String, dynamic> json) :
    customQueryId = convertToTdObject(json['custom_query_id']),
    data = convertToTdObject(json['data']);
}

class SetAlarm extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setAlarm';

  double seconds;

  @override
  Map<String, dynamic> get params => {
    'seconds': seconds,
  };

  SetAlarm(
    this.seconds,
  );

  SetAlarm.fromJson(Map<String, dynamic> json) :
    seconds = convertToTdObject(json['seconds']);
}

class SaveApplicationLogEvent extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'saveApplicationLogEvent';

  String type;
  int chatId;
  JsonValue data;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'chat_id': chatId,
    'data': data,
  };

  SaveApplicationLogEvent(
    this.type,
    this.chatId,
    this.data,
  );

  SaveApplicationLogEvent.fromJson(Map<String, dynamic> json) :
    type = convertToTdObject(json['type']),
    chatId = convertToTdObject(json['chat_id']),
    data = convertToTdObject(json['data']);
}

class EnableProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'enableProxy';

  int proxyId;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
  };

  EnableProxy(
    this.proxyId,
  );

  EnableProxy.fromJson(Map<String, dynamic> json) :
    proxyId = convertToTdObject(json['proxy_id']);
}

class DisableProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'disableProxy';

  @override
  Map<String, dynamic> get params => {};

  DisableProxy();

  DisableProxy.fromJson(Map<String, dynamic> json);
}

class RemoveProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeProxy';

  int proxyId;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
  };

  RemoveProxy(
    this.proxyId,
  );

  RemoveProxy.fromJson(Map<String, dynamic> json) :
    proxyId = convertToTdObject(json['proxy_id']);
}

class SetLogStream extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setLogStream';

  LogStream logStream;

  @override
  Map<String, dynamic> get params => {
    'log_stream': logStream,
  };

  SetLogStream(
    this.logStream,
  );

  SetLogStream.fromJson(Map<String, dynamic> json) :
    logStream = convertToTdObject(json['log_stream']);
}

class SetLogVerbosityLevel extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setLogVerbosityLevel';

  int newVerbosityLevel;

  @override
  Map<String, dynamic> get params => {
    'new_verbosity_level': newVerbosityLevel,
  };

  SetLogVerbosityLevel(
    this.newVerbosityLevel,
  );

  SetLogVerbosityLevel.fromJson(Map<String, dynamic> json) :
    newVerbosityLevel = convertToTdObject(json['new_verbosity_level']);
}

class SetLogTagVerbosityLevel extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setLogTagVerbosityLevel';

  String tag;
  int newVerbosityLevel;

  @override
  Map<String, dynamic> get params => {
    'tag': tag,
    'new_verbosity_level': newVerbosityLevel,
  };

  SetLogTagVerbosityLevel(
    this.tag,
    this.newVerbosityLevel,
  );

  SetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json) :
    tag = convertToTdObject(json['tag']),
    newVerbosityLevel = convertToTdObject(json['new_verbosity_level']);
}

class AddLogMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addLogMessage';

  int verbosityLevel;
  String text;

  @override
  Map<String, dynamic> get params => {
    'verbosity_level': verbosityLevel,
    'text': text,
  };

  AddLogMessage(
    this.verbosityLevel,
    this.text,
  );

  AddLogMessage.fromJson(Map<String, dynamic> json) :
    verbosityLevel = convertToTdObject(json['verbosity_level']),
    text = convertToTdObject(json['text']);
}

class TestCallEmpty extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'testCallEmpty';

  @override
  Map<String, dynamic> get params => {};

  TestCallEmpty();

  TestCallEmpty.fromJson(Map<String, dynamic> json);
}

class TestNetwork extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'testNetwork';

  @override
  Map<String, dynamic> get params => {};

  TestNetwork();

  TestNetwork.fromJson(Map<String, dynamic> json);
}

class TestProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'testProxy';

  String server;
  int port;
  ProxyType type;
  int dcId;
  double timeout;

  @override
  Map<String, dynamic> get params => {
    'server': server,
    'port': port,
    'type': type,
    'dc_id': dcId,
    'timeout': timeout,
  };

  TestProxy(
    this.server,
    this.port,
    this.type,
    this.dcId,
    this.timeout,
  );

  TestProxy.fromJson(Map<String, dynamic> json) :
    server = convertToTdObject(json['server']),
    port = convertToTdObject(json['port']),
    type = convertToTdObject(json['type']),
    dcId = convertToTdObject(json['dc_id']),
    timeout = convertToTdObject(json['timeout']);
}

class TestGetDifference extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'testGetDifference';

  @override
  Map<String, dynamic> get params => {};

  TestGetDifference();

  TestGetDifference.fromJson(Map<String, dynamic> json);
}

class ConfirmQrCodeAuthentication extends TdFunction {
  @override
  Type get returnType => Session;

  @override
  String get tdType => 'confirmQrCodeAuthentication';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  ConfirmQrCodeAuthentication(
    this.link,
  );

  ConfirmQrCodeAuthentication.fromJson(Map<String, dynamic> json) :
    link = convertToTdObject(json['link']);
}

class GetCurrentState extends TdFunction {
  @override
  Type get returnType => Updates;

  @override
  String get tdType => 'getCurrentState';

  @override
  Map<String, dynamic> get params => {};

  GetCurrentState();

  GetCurrentState.fromJson(Map<String, dynamic> json);
}

class GetPasswordState extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'getPasswordState';

  @override
  Map<String, dynamic> get params => {};

  GetPasswordState();

  GetPasswordState.fromJson(Map<String, dynamic> json);
}

class SetPassword extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'setPassword';

  String oldPassword;
  String newPassword;
  String newHint;
  bool setRecoveryEmailAddress;
  String newRecoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    'old_password': oldPassword,
    'new_password': newPassword,
    'new_hint': newHint,
    'set_recovery_email_address': setRecoveryEmailAddress,
    'new_recovery_email_address': newRecoveryEmailAddress,
  };

  SetPassword(
    this.oldPassword,
    this.newPassword,
    this.newHint,
    this.setRecoveryEmailAddress,
    this.newRecoveryEmailAddress,
  );

  SetPassword.fromJson(Map<String, dynamic> json) :
    oldPassword = convertToTdObject(json['old_password']),
    newPassword = convertToTdObject(json['new_password']),
    newHint = convertToTdObject(json['new_hint']),
    setRecoveryEmailAddress = convertToTdObject(json['set_recovery_email_address']),
    newRecoveryEmailAddress = convertToTdObject(json['new_recovery_email_address']);
}

class SetRecoveryEmailAddress extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'setRecoveryEmailAddress';

  String password;
  String newRecoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    'password': password,
    'new_recovery_email_address': newRecoveryEmailAddress,
  };

  SetRecoveryEmailAddress(
    this.password,
    this.newRecoveryEmailAddress,
  );

  SetRecoveryEmailAddress.fromJson(Map<String, dynamic> json) :
    password = convertToTdObject(json['password']),
    newRecoveryEmailAddress = convertToTdObject(json['new_recovery_email_address']);
}

class CheckRecoveryEmailAddressCode extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'checkRecoveryEmailAddressCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckRecoveryEmailAddressCode(
    this.code,
  );

  CheckRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json) :
    code = convertToTdObject(json['code']);
}

class ResendRecoveryEmailAddressCode extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'resendRecoveryEmailAddressCode';

  @override
  Map<String, dynamic> get params => {};

  ResendRecoveryEmailAddressCode();

  ResendRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json);
}

class RecoverPassword extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'recoverPassword';

  String recoveryCode;

  @override
  Map<String, dynamic> get params => {
    'recovery_code': recoveryCode,
  };

  RecoverPassword(
    this.recoveryCode,
  );

  RecoverPassword.fromJson(Map<String, dynamic> json) :
    recoveryCode = convertToTdObject(json['recovery_code']);
}

class GetRecoveryEmailAddress extends TdFunction {
  @override
  Type get returnType => RecoveryEmailAddress;

  @override
  String get tdType => 'getRecoveryEmailAddress';

  String password;

  @override
  Map<String, dynamic> get params => {
    'password': password,
  };

  GetRecoveryEmailAddress(
    this.password,
  );

  GetRecoveryEmailAddress.fromJson(Map<String, dynamic> json) :
    password = convertToTdObject(json['password']);
}

class RequestPasswordRecovery extends TdFunction {
  @override
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  @override
  String get tdType => 'requestPasswordRecovery';

  @override
  Map<String, dynamic> get params => {};

  RequestPasswordRecovery();

  RequestPasswordRecovery.fromJson(Map<String, dynamic> json);
}

class SendEmailAddressVerificationCode extends TdFunction {
  @override
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  @override
  String get tdType => 'sendEmailAddressVerificationCode';

  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'email_address': emailAddress,
  };

  SendEmailAddressVerificationCode(
    this.emailAddress,
  );

  SendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) :
    emailAddress = convertToTdObject(json['email_address']);
}

class ResendEmailAddressVerificationCode extends TdFunction {
  @override
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  @override
  String get tdType => 'resendEmailAddressVerificationCode';

  @override
  Map<String, dynamic> get params => {};

  ResendEmailAddressVerificationCode();

  ResendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json);
}

class CreateTemporaryPassword extends TdFunction {
  @override
  Type get returnType => TemporaryPasswordState;

  @override
  String get tdType => 'createTemporaryPassword';

  String password;
  int validFor;

  @override
  Map<String, dynamic> get params => {
    'password': password,
    'valid_for': validFor,
  };

  CreateTemporaryPassword(
    this.password,
    this.validFor,
  );

  CreateTemporaryPassword.fromJson(Map<String, dynamic> json) :
    password = convertToTdObject(json['password']),
    validFor = convertToTdObject(json['valid_for']);
}

class GetTemporaryPasswordState extends TdFunction {
  @override
  Type get returnType => TemporaryPasswordState;

  @override
  String get tdType => 'getTemporaryPasswordState';

  @override
  Map<String, dynamic> get params => {};

  GetTemporaryPasswordState();

  GetTemporaryPasswordState.fromJson(Map<String, dynamic> json);
}

class GetMe extends TdFunction {
  @override
  Type get returnType => User;

  @override
  String get tdType => 'getMe';

  @override
  Map<String, dynamic> get params => {};

  GetMe();

  GetMe.fromJson(Map<String, dynamic> json);
}

class GetUser extends TdFunction {
  @override
  Type get returnType => User;

  @override
  String get tdType => 'getUser';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  GetUser(
    this.userId,
  );

  GetUser.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']);
}

class GetSupportUser extends TdFunction {
  @override
  Type get returnType => User;

  @override
  String get tdType => 'getSupportUser';

  @override
  Map<String, dynamic> get params => {};

  GetSupportUser();

  GetSupportUser.fromJson(Map<String, dynamic> json);
}

class GetUserFullInfo extends TdFunction {
  @override
  Type get returnType => UserFullInfo;

  @override
  String get tdType => 'getUserFullInfo';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  GetUserFullInfo(
    this.userId,
  );

  GetUserFullInfo.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']);
}

class GetBasicGroup extends TdFunction {
  @override
  Type get returnType => BasicGroup;

  @override
  String get tdType => 'getBasicGroup';

  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
  };

  GetBasicGroup(
    this.basicGroupId,
  );

  GetBasicGroup.fromJson(Map<String, dynamic> json) :
    basicGroupId = convertToTdObject(json['basic_group_id']);
}

class GetBasicGroupFullInfo extends TdFunction {
  @override
  Type get returnType => BasicGroupFullInfo;

  @override
  String get tdType => 'getBasicGroupFullInfo';

  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
  };

  GetBasicGroupFullInfo(
    this.basicGroupId,
  );

  GetBasicGroupFullInfo.fromJson(Map<String, dynamic> json) :
    basicGroupId = convertToTdObject(json['basic_group_id']);
}

class GetSupergroup extends TdFunction {
  @override
  Type get returnType => Supergroup;

  @override
  String get tdType => 'getSupergroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  GetSupergroup(
    this.supergroupId,
  );

  GetSupergroup.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']);
}

class GetSupergroupFullInfo extends TdFunction {
  @override
  Type get returnType => SupergroupFullInfo;

  @override
  String get tdType => 'getSupergroupFullInfo';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  GetSupergroupFullInfo(
    this.supergroupId,
  );

  GetSupergroupFullInfo.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']);
}

class GetSecretChat extends TdFunction {
  @override
  Type get returnType => SecretChat;

  @override
  String get tdType => 'getSecretChat';

  int secretChatId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
  };

  GetSecretChat(
    this.secretChatId,
  );

  GetSecretChat.fromJson(Map<String, dynamic> json) :
    secretChatId = convertToTdObject(json['secret_chat_id']);
}

class GetChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'getChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChat(
    this.chatId,
  );

  GetChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class SearchPublicChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'searchPublicChat';

  String username;

  @override
  Map<String, dynamic> get params => {
    'username': username,
  };

  SearchPublicChat(
    this.username,
  );

  SearchPublicChat.fromJson(Map<String, dynamic> json) :
    username = convertToTdObject(json['username']);
}

class CreatePrivateChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createPrivateChat';

  int userId;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'force': force,
  };

  CreatePrivateChat(
    this.userId,
    this.force,
  );

  CreatePrivateChat.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    force = convertToTdObject(json['force']);
}

class CreateBasicGroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createBasicGroupChat';

  int basicGroupId;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
    'force': force,
  };

  CreateBasicGroupChat(
    this.basicGroupId,
    this.force,
  );

  CreateBasicGroupChat.fromJson(Map<String, dynamic> json) :
    basicGroupId = convertToTdObject(json['basic_group_id']),
    force = convertToTdObject(json['force']);
}

class CreateSupergroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createSupergroupChat';

  int supergroupId;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'force': force,
  };

  CreateSupergroupChat(
    this.supergroupId,
    this.force,
  );

  CreateSupergroupChat.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']),
    force = convertToTdObject(json['force']);
}

class CreateSecretChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createSecretChat';

  int secretChatId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
  };

  CreateSecretChat(
    this.secretChatId,
  );

  CreateSecretChat.fromJson(Map<String, dynamic> json) :
    secretChatId = convertToTdObject(json['secret_chat_id']);
}

class CreateNewBasicGroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createNewBasicGroupChat';

  List<int> userIds;
  String title;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
    'title': title,
  };

  CreateNewBasicGroupChat(
    this.userIds,
    this.title,
  );

  CreateNewBasicGroupChat.fromJson(Map<String, dynamic> json) :
    userIds = convertToTdObject(json['user_ids']),
    title = convertToTdObject(json['title']);
}

class CreateNewSupergroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createNewSupergroupChat';

  String title;
  bool isChannel;
  String description;
  ChatLocation location;
  bool forImport;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'is_channel': isChannel,
    'description': description,
    'location': location,
    'for_import': forImport,
  };

  CreateNewSupergroupChat(
    this.title,
    this.isChannel,
    this.description,
    this.location,
    this.forImport,
  );

  CreateNewSupergroupChat.fromJson(Map<String, dynamic> json) :
    title = convertToTdObject(json['title']),
    isChannel = convertToTdObject(json['is_channel']),
    description = convertToTdObject(json['description']),
    location = convertToTdObject(json['location']),
    forImport = convertToTdObject(json['for_import']);
}

class CreateNewSecretChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createNewSecretChat';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  CreateNewSecretChat(
    this.userId,
  );

  CreateNewSecretChat.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']);
}

class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'upgradeBasicGroupChatToSupergroupChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  UpgradeBasicGroupChatToSupergroupChat(
    this.chatId,
  );

  UpgradeBasicGroupChatToSupergroupChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class JoinChatByInviteLink extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'joinChatByInviteLink';

  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  JoinChatByInviteLink(
    this.inviteLink,
  );

  JoinChatByInviteLink.fromJson(Map<String, dynamic> json) :
    inviteLink = convertToTdObject(json['invite_link']);
}

class GetMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getMessage';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetMessage(
    this.chatId,
    this.messageId,
  );

  GetMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']);
}

class GetMessageLocally extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getMessageLocally';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetMessageLocally(
    this.chatId,
    this.messageId,
  );

  GetMessageLocally.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']);
}

class GetRepliedMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getRepliedMessage';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetRepliedMessage(
    this.chatId,
    this.messageId,
  );

  GetRepliedMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']);
}

class GetChatPinnedMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getChatPinnedMessage';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatPinnedMessage(
    this.chatId,
  );

  GetChatPinnedMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class GetCallbackQueryMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getCallbackQueryMessage';

  int chatId;
  int messageId;
  int callbackQueryId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'callback_query_id': callbackQueryId,
  };

  GetCallbackQueryMessage(
    this.chatId,
    this.messageId,
    this.callbackQueryId,
  );

  GetCallbackQueryMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    callbackQueryId = convertToTdObject(json['callback_query_id']);
}

class GetChatMessageByDate extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getChatMessageByDate';

  int chatId;
  int date;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'date': date,
  };

  GetChatMessageByDate(
    this.chatId,
    this.date,
  );

  GetChatMessageByDate.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    date = convertToTdObject(json['date']);
}

class SendMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'sendMessage';

  int chatId;
  int messageThreadId;
  int replyToMessageId;
  MessageSendOptions options;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  SendMessage(
    this.chatId,
    this.messageThreadId,
    this.replyToMessageId,
    this.options,
    this.replyMarkup,
    this.inputMessageContent,
  );

  SendMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageThreadId = convertToTdObject(json['message_thread_id']),
    replyToMessageId = convertToTdObject(json['reply_to_message_id']),
    options = convertToTdObject(json['options']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class SendBotStartMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'sendBotStartMessage';

  int botUserId;
  int chatId;
  String parameter;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'chat_id': chatId,
    'parameter': parameter,
  };

  SendBotStartMessage(
    this.botUserId,
    this.chatId,
    this.parameter,
  );

  SendBotStartMessage.fromJson(Map<String, dynamic> json) :
    botUserId = convertToTdObject(json['bot_user_id']),
    chatId = convertToTdObject(json['chat_id']),
    parameter = convertToTdObject(json['parameter']);
}

class SendInlineQueryResultMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'sendInlineQueryResultMessage';

  int chatId;
  int messageThreadId;
  int replyToMessageId;
  MessageSendOptions options;
  int queryId;
  String resultId;
  bool hideViaBot;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options,
    'query_id': queryId,
    'result_id': resultId,
    'hide_via_bot': hideViaBot,
  };

  SendInlineQueryResultMessage(
    this.chatId,
    this.messageThreadId,
    this.replyToMessageId,
    this.options,
    this.queryId,
    this.resultId,
    this.hideViaBot,
  );

  SendInlineQueryResultMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageThreadId = convertToTdObject(json['message_thread_id']),
    replyToMessageId = convertToTdObject(json['reply_to_message_id']),
    options = convertToTdObject(json['options']),
    queryId = convertToTdObject(json['query_id']),
    resultId = convertToTdObject(json['result_id']),
    hideViaBot = convertToTdObject(json['hide_via_bot']);
}

class AddLocalMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'addLocalMessage';

  int chatId;
  MessageSender sender;
  int replyToMessageId;
  bool disableNotification;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'sender': sender,
    'reply_to_message_id': replyToMessageId,
    'disable_notification': disableNotification,
    'input_message_content': inputMessageContent,
  };

  AddLocalMessage(
    this.chatId,
    this.sender,
    this.replyToMessageId,
    this.disableNotification,
    this.inputMessageContent,
  );

  AddLocalMessage.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    sender = convertToTdObject(json['sender']),
    replyToMessageId = convertToTdObject(json['reply_to_message_id']),
    disableNotification = convertToTdObject(json['disable_notification']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class EditMessageText extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageText';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  EditMessageText(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.inputMessageContent,
  );

  EditMessageText.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class EditMessageLiveLocation extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageLiveLocation';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  Location location;
  int heading;
  int proximityAlertRadius;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
    'location': location,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  EditMessageLiveLocation(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.location,
    this.heading,
    this.proximityAlertRadius,
  );

  EditMessageLiveLocation.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    location = convertToTdObject(json['location']),
    heading = convertToTdObject(json['heading']),
    proximityAlertRadius = convertToTdObject(json['proximity_alert_radius']);
}

class EditMessageMedia extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageMedia';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  EditMessageMedia(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.inputMessageContent,
  );

  EditMessageMedia.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    inputMessageContent = convertToTdObject(json['input_message_content']);
}

class EditMessageCaption extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageCaption';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
    'caption': caption,
  };

  EditMessageCaption(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.caption,
  );

  EditMessageCaption.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']),
    caption = convertToTdObject(json['caption']);
}

class EditMessageReplyMarkup extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageReplyMarkup';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
  };

  EditMessageReplyMarkup(
    this.chatId,
    this.messageId,
    this.replyMarkup,
  );

  EditMessageReplyMarkup.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    replyMarkup = convertToTdObject(json['reply_markup']);
}

class SetGameScore extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'setGameScore';

  int chatId;
  int messageId;
  bool editMessage;
  int userId;
  int score;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'edit_message': editMessage,
    'user_id': userId,
    'score': score,
    'force': force,
  };

  SetGameScore(
    this.chatId,
    this.messageId,
    this.editMessage,
    this.userId,
    this.score,
    this.force,
  );

  SetGameScore.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    editMessage = convertToTdObject(json['edit_message']),
    userId = convertToTdObject(json['user_id']),
    score = convertToTdObject(json['score']),
    force = convertToTdObject(json['force']);
}

class GetMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getMessages';

  int chatId;
  List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
  };

  GetMessages(
    this.chatId,
    this.messageIds,
  );

  GetMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageIds = convertToTdObject(json['message_ids']);
}

class GetChatHistory extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getChatHistory';

  int chatId;
  int fromMessageId;
  int offset;
  int limit;
  bool onlyLocal;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
    'only_local': onlyLocal,
  };

  GetChatHistory(
    this.chatId,
    this.fromMessageId,
    this.offset,
    this.limit,
    this.onlyLocal,
  );

  GetChatHistory.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    fromMessageId = convertToTdObject(json['from_message_id']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']),
    onlyLocal = convertToTdObject(json['only_local']);
}

class GetMessageThreadHistory extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getMessageThreadHistory';

  int chatId;
  int messageId;
  int fromMessageId;
  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
  };

  GetMessageThreadHistory(
    this.chatId,
    this.messageId,
    this.fromMessageId,
    this.offset,
    this.limit,
  );

  GetMessageThreadHistory.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    fromMessageId = convertToTdObject(json['from_message_id']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']);
}

class SearchChatMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'searchChatMessages';

  int chatId;
  String query;
  MessageSender sender;
  int fromMessageId;
  int offset;
  int limit;
  SearchMessagesFilter filter;
  int messageThreadId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'query': query,
    'sender': sender,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
    'filter': filter,
    'message_thread_id': messageThreadId,
  };

  SearchChatMessages(
    this.chatId,
    this.query,
    this.sender,
    this.fromMessageId,
    this.offset,
    this.limit,
    this.filter,
    this.messageThreadId,
  );

  SearchChatMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    query = convertToTdObject(json['query']),
    sender = convertToTdObject(json['sender']),
    fromMessageId = convertToTdObject(json['from_message_id']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']),
    filter = convertToTdObject(json['filter']),
    messageThreadId = convertToTdObject(json['message_thread_id']);
}

class SearchMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'searchMessages';

  ChatList chatList;
  String query;
  int offsetDate;
  int offsetChatId;
  int offsetMessageId;
  int limit;
  SearchMessagesFilter filter;
  int minDate;
  int maxDate;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'query': query,
    'offset_date': offsetDate,
    'offset_chat_id': offsetChatId,
    'offset_message_id': offsetMessageId,
    'limit': limit,
    'filter': filter,
    'min_date': minDate,
    'max_date': maxDate,
  };

  SearchMessages(
    this.chatList,
    this.query,
    this.offsetDate,
    this.offsetChatId,
    this.offsetMessageId,
    this.limit,
    this.filter,
    this.minDate,
    this.maxDate,
  );

  SearchMessages.fromJson(Map<String, dynamic> json) :
    chatList = convertToTdObject(json['chat_list']),
    query = convertToTdObject(json['query']),
    offsetDate = convertToTdObject(json['offset_date']),
    offsetChatId = convertToTdObject(json['offset_chat_id']),
    offsetMessageId = convertToTdObject(json['offset_message_id']),
    limit = convertToTdObject(json['limit']),
    filter = convertToTdObject(json['filter']),
    minDate = convertToTdObject(json['min_date']),
    maxDate = convertToTdObject(json['max_date']);
}

class SearchCallMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'searchCallMessages';

  int fromMessageId;
  int limit;
  bool onlyMissed;

  @override
  Map<String, dynamic> get params => {
    'from_message_id': fromMessageId,
    'limit': limit,
    'only_missed': onlyMissed,
  };

  SearchCallMessages(
    this.fromMessageId,
    this.limit,
    this.onlyMissed,
  );

  SearchCallMessages.fromJson(Map<String, dynamic> json) :
    fromMessageId = convertToTdObject(json['from_message_id']),
    limit = convertToTdObject(json['limit']),
    onlyMissed = convertToTdObject(json['only_missed']);
}

class SearchChatRecentLocationMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'searchChatRecentLocationMessages';

  int chatId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'limit': limit,
  };

  SearchChatRecentLocationMessages(
    this.chatId,
    this.limit,
  );

  SearchChatRecentLocationMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    limit = convertToTdObject(json['limit']);
}

class GetActiveLiveLocationMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getActiveLiveLocationMessages';

  @override
  Map<String, dynamic> get params => {};

  GetActiveLiveLocationMessages();

  GetActiveLiveLocationMessages.fromJson(Map<String, dynamic> json);
}

class GetChatScheduledMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getChatScheduledMessages';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatScheduledMessages(
    this.chatId,
  );

  GetChatScheduledMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class SendMessageAlbum extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'sendMessageAlbum';

  int chatId;
  int messageThreadId;
  int replyToMessageId;
  MessageSendOptions options;
  List<InputMessageContent> inputMessageContents;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options,
    'input_message_contents': inputMessageContents,
  };

  SendMessageAlbum(
    this.chatId,
    this.messageThreadId,
    this.replyToMessageId,
    this.options,
    this.inputMessageContents,
  );

  SendMessageAlbum.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageThreadId = convertToTdObject(json['message_thread_id']),
    replyToMessageId = convertToTdObject(json['reply_to_message_id']),
    options = convertToTdObject(json['options']),
    inputMessageContents = convertToTdObject(json['input_message_contents']);
}

class ForwardMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'forwardMessages';

  int chatId;
  int fromChatId;
  List<int> messageIds;
  MessageSendOptions options;
  bool sendCopy;
  bool removeCaption;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'from_chat_id': fromChatId,
    'message_ids': messageIds,
    'options': options,
    'send_copy': sendCopy,
    'remove_caption': removeCaption,
  };

  ForwardMessages(
    this.chatId,
    this.fromChatId,
    this.messageIds,
    this.options,
    this.sendCopy,
    this.removeCaption,
  );

  ForwardMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    fromChatId = convertToTdObject(json['from_chat_id']),
    messageIds = convertToTdObject(json['message_ids']),
    options = convertToTdObject(json['options']),
    sendCopy = convertToTdObject(json['send_copy']),
    removeCaption = convertToTdObject(json['remove_caption']);
}

class ResendMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'resendMessages';

  int chatId;
  List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
  };

  ResendMessages(
    this.chatId,
    this.messageIds,
  );

  ResendMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageIds = convertToTdObject(json['message_ids']);
}

class GetMessageThread extends TdFunction {
  @override
  Type get returnType => MessageThreadInfo;

  @override
  String get tdType => 'getMessageThread';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetMessageThread(
    this.chatId,
    this.messageId,
  );

  GetMessageThread.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']);
}

class GetFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'getFile';

  int fileId;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
  };

  GetFile(
    this.fileId,
  );

  GetFile.fromJson(Map<String, dynamic> json) :
    fileId = convertToTdObject(json['file_id']);
}

class GetRemoteFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'getRemoteFile';

  String remoteFileId;
  FileType fileType;

  @override
  Map<String, dynamic> get params => {
    'remote_file_id': remoteFileId,
    'file_type': fileType,
  };

  GetRemoteFile(
    this.remoteFileId,
    this.fileType,
  );

  GetRemoteFile.fromJson(Map<String, dynamic> json) :
    remoteFileId = convertToTdObject(json['remote_file_id']),
    fileType = convertToTdObject(json['file_type']);
}

class DownloadFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'downloadFile';

  int fileId;
  int priority;
  int offset;
  int limit;
  bool synchronous;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'priority': priority,
    'offset': offset,
    'limit': limit,
    'synchronous': synchronous,
  };

  DownloadFile(
    this.fileId,
    this.priority,
    this.offset,
    this.limit,
    this.synchronous,
  );

  DownloadFile.fromJson(Map<String, dynamic> json) :
    fileId = convertToTdObject(json['file_id']),
    priority = convertToTdObject(json['priority']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']),
    synchronous = convertToTdObject(json['synchronous']);
}

class UploadFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'uploadFile';

  InputFile file;
  FileType fileType;
  int priority;

  @override
  Map<String, dynamic> get params => {
    'file': file,
    'file_type': fileType,
    'priority': priority,
  };

  UploadFile(
    this.file,
    this.fileType,
    this.priority,
  );

  UploadFile.fromJson(Map<String, dynamic> json) :
    file = convertToTdObject(json['file']),
    fileType = convertToTdObject(json['file_type']),
    priority = convertToTdObject(json['priority']);
}

class UploadStickerFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'uploadStickerFile';

  int userId;
  InputSticker sticker;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'sticker': sticker,
  };

  UploadStickerFile(
    this.userId,
    this.sticker,
  );

  UploadStickerFile.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    sticker = convertToTdObject(json['sticker']);
}

class GetMapThumbnailFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'getMapThumbnailFile';

  Location location;
  int zoom;
  int width;
  int height;
  int scale;
  int chatId;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'zoom': zoom,
    'width': width,
    'height': height,
    'scale': scale,
    'chat_id': chatId,
  };

  GetMapThumbnailFile(
    this.location,
    this.zoom,
    this.width,
    this.height,
    this.scale,
    this.chatId,
  );

  GetMapThumbnailFile.fromJson(Map<String, dynamic> json) :
    location = convertToTdObject(json['location']),
    zoom = convertToTdObject(json['zoom']),
    width = convertToTdObject(json['width']),
    height = convertToTdObject(json['height']),
    scale = convertToTdObject(json['scale']),
    chatId = convertToTdObject(json['chat_id']);
}

class GetChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getChats';

  ChatList chatList;
  int offsetOrder;
  int offsetChatId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'offset_order': offsetOrder,
    'offset_chat_id': offsetChatId,
    'limit': limit,
  };

  GetChats(
    this.chatList,
    this.offsetOrder,
    this.offsetChatId,
    this.limit,
  );

  GetChats.fromJson(Map<String, dynamic> json) :
    chatList = convertToTdObject(json['chat_list']),
    offsetOrder = convertToTdObject(json['offset_order']),
    offsetChatId = convertToTdObject(json['offset_chat_id']),
    limit = convertToTdObject(json['limit']);
}

class SearchPublicChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'searchPublicChats';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SearchPublicChats(
    this.query,
  );

  SearchPublicChats.fromJson(Map<String, dynamic> json) :
    query = convertToTdObject(json['query']);
}

class SearchChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'searchChats';

  String query;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'limit': limit,
  };

  SearchChats(
    this.query,
    this.limit,
  );

  SearchChats.fromJson(Map<String, dynamic> json) :
    query = convertToTdObject(json['query']),
    limit = convertToTdObject(json['limit']);
}

class SearchChatsOnServer extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'searchChatsOnServer';

  String query;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'limit': limit,
  };

  SearchChatsOnServer(
    this.query,
    this.limit,
  );

  SearchChatsOnServer.fromJson(Map<String, dynamic> json) :
    query = convertToTdObject(json['query']),
    limit = convertToTdObject(json['limit']);
}

class GetTopChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getTopChats';

  TopChatCategory category;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'category': category,
    'limit': limit,
  };

  GetTopChats(
    this.category,
    this.limit,
  );

  GetTopChats.fromJson(Map<String, dynamic> json) :
    category = convertToTdObject(json['category']),
    limit = convertToTdObject(json['limit']);
}

class GetCreatedPublicChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getCreatedPublicChats';

  PublicChatType type;

  @override
  Map<String, dynamic> get params => {
    'type': type,
  };

  GetCreatedPublicChats(
    this.type,
  );

  GetCreatedPublicChats.fromJson(Map<String, dynamic> json) :
    type = convertToTdObject(json['type']);
}

class GetSuitableDiscussionChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getSuitableDiscussionChats';

  @override
  Map<String, dynamic> get params => {};

  GetSuitableDiscussionChats();

  GetSuitableDiscussionChats.fromJson(Map<String, dynamic> json);
}

class GetInactiveSupergroupChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getInactiveSupergroupChats';

  @override
  Map<String, dynamic> get params => {};

  GetInactiveSupergroupChats();

  GetInactiveSupergroupChats.fromJson(Map<String, dynamic> json);
}

class GetGroupsInCommon extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getGroupsInCommon';

  int userId;
  int offsetChatId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'offset_chat_id': offsetChatId,
    'limit': limit,
  };

  GetGroupsInCommon(
    this.userId,
    this.offsetChatId,
    this.limit,
  );

  GetGroupsInCommon.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    offsetChatId = convertToTdObject(json['offset_chat_id']),
    limit = convertToTdObject(json['limit']);
}

class GetChatNotificationSettingsExceptions extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getChatNotificationSettingsExceptions';

  NotificationSettingsScope scope;
  bool compareSound;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'compare_sound': compareSound,
  };

  GetChatNotificationSettingsExceptions(
    this.scope,
    this.compareSound,
  );

  GetChatNotificationSettingsExceptions.fromJson(Map<String, dynamic> json) :
    scope = convertToTdObject(json['scope']),
    compareSound = convertToTdObject(json['compare_sound']);
}

class SearchChatsNearby extends TdFunction {
  @override
  Type get returnType => ChatsNearby;

  @override
  String get tdType => 'searchChatsNearby';

  Location location;

  @override
  Map<String, dynamic> get params => {
    'location': location,
  };

  SearchChatsNearby(
    this.location,
  );

  SearchChatsNearby.fromJson(Map<String, dynamic> json) :
    location = convertToTdObject(json['location']);
}

class CheckChatUsername extends TdFunction {
  @override
  Type get returnType => CheckChatUsernameResult;

  @override
  String get tdType => 'checkChatUsername';

  int chatId;
  String username;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'username': username,
  };

  CheckChatUsername(
    this.chatId,
    this.username,
  );

  CheckChatUsername.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    username = convertToTdObject(json['username']);
}

class SearchSecretMessages extends TdFunction {
  @override
  Type get returnType => FoundMessages;

  @override
  String get tdType => 'searchSecretMessages';

  int chatId;
  String query;
  String offset;
  int limit;
  SearchMessagesFilter filter;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'query': query,
    'offset': offset,
    'limit': limit,
    'filter': filter,
  };

  SearchSecretMessages(
    this.chatId,
    this.query,
    this.offset,
    this.limit,
    this.filter,
  );

  SearchSecretMessages.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    query = convertToTdObject(json['query']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']),
    filter = convertToTdObject(json['filter']);
}

class GetMessagePublicForwards extends TdFunction {
  @override
  Type get returnType => FoundMessages;

  @override
  String get tdType => 'getMessagePublicForwards';

  int chatId;
  int messageId;
  String offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'offset': offset,
    'limit': limit,
  };

  GetMessagePublicForwards(
    this.chatId,
    this.messageId,
    this.offset,
    this.limit,
  );

  GetMessagePublicForwards.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']);
}

class GetChatMessageCount extends TdFunction {
  @override
  Type get returnType => Count;

  @override
  String get tdType => 'getChatMessageCount';

  int chatId;
  SearchMessagesFilter filter;
  bool returnLocal;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'filter': filter,
    'return_local': returnLocal,
  };

  GetChatMessageCount(
    this.chatId,
    this.filter,
    this.returnLocal,
  );

  GetChatMessageCount.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    filter = convertToTdObject(json['filter']),
    returnLocal = convertToTdObject(json['return_local']);
}

class GetFileDownloadedPrefixSize extends TdFunction {
  @override
  Type get returnType => Count;

  @override
  String get tdType => 'getFileDownloadedPrefixSize';

  int fileId;
  int offset;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'offset': offset,
  };

  GetFileDownloadedPrefixSize(
    this.fileId,
    this.offset,
  );

  GetFileDownloadedPrefixSize.fromJson(Map<String, dynamic> json) :
    fileId = convertToTdObject(json['file_id']),
    offset = convertToTdObject(json['offset']);
}

class GetImportedContactCount extends TdFunction {
  @override
  Type get returnType => Count;

  @override
  String get tdType => 'getImportedContactCount';

  @override
  Map<String, dynamic> get params => {};

  GetImportedContactCount();

  GetImportedContactCount.fromJson(Map<String, dynamic> json);
}

class GetMessageLink extends TdFunction {
  @override
  Type get returnType => MessageLink;

  @override
  String get tdType => 'getMessageLink';

  int chatId;
  int messageId;
  bool forAlbum;
  bool forComment;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'for_album': forAlbum,
    'for_comment': forComment,
  };

  GetMessageLink(
    this.chatId,
    this.messageId,
    this.forAlbum,
    this.forComment,
  );

  GetMessageLink.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    forAlbum = convertToTdObject(json['for_album']),
    forComment = convertToTdObject(json['for_comment']);
}

class GetMessageEmbeddingCode extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getMessageEmbeddingCode';

  int chatId;
  int messageId;
  bool forAlbum;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'for_album': forAlbum,
  };

  GetMessageEmbeddingCode(
    this.chatId,
    this.messageId,
    this.forAlbum,
  );

  GetMessageEmbeddingCode.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    forAlbum = convertToTdObject(json['for_album']);
}

class GetFileMimeType extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getFileMimeType';

  String fileName;

  @override
  Map<String, dynamic> get params => {
    'file_name': fileName,
  };

  GetFileMimeType(
    this.fileName,
  );

  GetFileMimeType.fromJson(Map<String, dynamic> json) :
    fileName = convertToTdObject(json['file_name']);
}

class GetFileExtension extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getFileExtension';

  String mimeType;

  @override
  Map<String, dynamic> get params => {
    'mime_type': mimeType,
  };

  GetFileExtension(
    this.mimeType,
  );

  GetFileExtension.fromJson(Map<String, dynamic> json) :
    mimeType = convertToTdObject(json['mime_type']);
}

class CleanFileName extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'cleanFileName';

  String fileName;

  @override
  Map<String, dynamic> get params => {
    'file_name': fileName,
  };

  CleanFileName(
    this.fileName,
  );

  CleanFileName.fromJson(Map<String, dynamic> json) :
    fileName = convertToTdObject(json['file_name']);
}

class GetJsonString extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getJsonString';

  JsonValue jsonValue;

  @override
  Map<String, dynamic> get params => {
    'json_value': jsonValue,
  };

  GetJsonString(
    this.jsonValue,
  );

  GetJsonString.fromJson(Map<String, dynamic> json) :
    jsonValue = convertToTdObject(json['json_value']);
}

class GetChatFilterDefaultIconName extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getChatFilterDefaultIconName';

  ChatFilter filter;

  @override
  Map<String, dynamic> get params => {
    'filter': filter,
  };

  GetChatFilterDefaultIconName(
    this.filter,
  );

  GetChatFilterDefaultIconName.fromJson(Map<String, dynamic> json) :
    filter = convertToTdObject(json['filter']);
}

class GetMessageImportConfirmationText extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getMessageImportConfirmationText';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetMessageImportConfirmationText(
    this.chatId,
  );

  GetMessageImportConfirmationText.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class JoinGroupCall extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'joinGroupCall';

  int groupCallId;
  MessageSender participantId;
  int audioSourceId;
  String payload;
  bool isMuted;
  bool isMyVideoEnabled;
  String inviteHash;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant_id': participantId,
    'audio_source_id': audioSourceId,
    'payload': payload,
    'is_muted': isMuted,
    'is_my_video_enabled': isMyVideoEnabled,
    'invite_hash': inviteHash,
  };

  JoinGroupCall(
    this.groupCallId,
    this.participantId,
    this.audioSourceId,
    this.payload,
    this.isMuted,
    this.isMyVideoEnabled,
    this.inviteHash,
  );

  JoinGroupCall.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    participantId = convertToTdObject(json['participant_id']),
    audioSourceId = convertToTdObject(json['audio_source_id']),
    payload = convertToTdObject(json['payload']),
    isMuted = convertToTdObject(json['is_muted']),
    isMyVideoEnabled = convertToTdObject(json['is_my_video_enabled']),
    inviteHash = convertToTdObject(json['invite_hash']);
}

class StartGroupCallScreenSharing extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'startGroupCallScreenSharing';

  int groupCallId;
  String payload;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'payload': payload,
  };

  StartGroupCallScreenSharing(
    this.groupCallId,
    this.payload,
  );

  StartGroupCallScreenSharing.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    payload = convertToTdObject(json['payload']);
}

class GetPreferredCountryLanguage extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getPreferredCountryLanguage';

  String countryCode;

  @override
  Map<String, dynamic> get params => {
    'country_code': countryCode,
  };

  GetPreferredCountryLanguage(
    this.countryCode,
  );

  GetPreferredCountryLanguage.fromJson(Map<String, dynamic> json) :
    countryCode = convertToTdObject(json['country_code']);
}

class GetSuggestedStickerSetName extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getSuggestedStickerSetName';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  GetSuggestedStickerSetName(
    this.title,
  );

  GetSuggestedStickerSetName.fromJson(Map<String, dynamic> json) :
    title = convertToTdObject(json['title']);
}

class GetCountryCode extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getCountryCode';

  @override
  Map<String, dynamic> get params => {};

  GetCountryCode();

  GetCountryCode.fromJson(Map<String, dynamic> json);
}

class GetMessageLinkInfo extends TdFunction {
  @override
  Type get returnType => MessageLinkInfo;

  @override
  String get tdType => 'getMessageLinkInfo';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  GetMessageLinkInfo(
    this.url,
  );

  GetMessageLinkInfo.fromJson(Map<String, dynamic> json) :
    url = convertToTdObject(json['url']);
}

class GetTextEntities extends TdFunction {
  @override
  Type get returnType => TextEntities;

  @override
  String get tdType => 'getTextEntities';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  GetTextEntities(
    this.text,
  );

  GetTextEntities.fromJson(Map<String, dynamic> json) :
    text = convertToTdObject(json['text']);
}

class ParseTextEntities extends TdFunction {
  @override
  Type get returnType => FormattedText;

  @override
  String get tdType => 'parseTextEntities';

  String text;
  TextParseMode parseMode;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'parse_mode': parseMode,
  };

  ParseTextEntities(
    this.text,
    this.parseMode,
  );

  ParseTextEntities.fromJson(Map<String, dynamic> json) :
    text = convertToTdObject(json['text']),
    parseMode = convertToTdObject(json['parse_mode']);
}

class ParseMarkdown extends TdFunction {
  @override
  Type get returnType => FormattedText;

  @override
  String get tdType => 'parseMarkdown';

  FormattedText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  ParseMarkdown(
    this.text,
  );

  ParseMarkdown.fromJson(Map<String, dynamic> json) :
    text = convertToTdObject(json['text']);
}

class GetMarkdownText extends TdFunction {
  @override
  Type get returnType => FormattedText;

  @override
  String get tdType => 'getMarkdownText';

  FormattedText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  GetMarkdownText(
    this.text,
  );

  GetMarkdownText.fromJson(Map<String, dynamic> json) :
    text = convertToTdObject(json['text']);
}

class GetLanguagePackString extends TdFunction {
  @override
  Type get returnType => LanguagePackStringValue;

  @override
  String get tdType => 'getLanguagePackString';

  String languagePackDatabasePath;
  String localizationTarget;
  String languagePackId;
  String key;

  @override
  Map<String, dynamic> get params => {
    'language_pack_database_path': languagePackDatabasePath,
    'localization_target': localizationTarget,
    'language_pack_id': languagePackId,
    'key': key,
  };

  GetLanguagePackString(
    this.languagePackDatabasePath,
    this.localizationTarget,
    this.languagePackId,
    this.key,
  );

  GetLanguagePackString.fromJson(Map<String, dynamic> json) :
    languagePackDatabasePath = convertToTdObject(json['language_pack_database_path']),
    localizationTarget = convertToTdObject(json['localization_target']),
    languagePackId = convertToTdObject(json['language_pack_id']),
    key = convertToTdObject(json['key']);
}

class GetJsonValue extends TdFunction {
  @override
  Type get returnType => JsonValue;

  @override
  String get tdType => 'getJsonValue';

  String json;

  @override
  Map<String, dynamic> get params => {
    'json': json,
  };

  GetJsonValue(
    this.json,
  );

  GetJsonValue.fromJson(Map<String, dynamic> json) :
    json = convertToTdObject(json['json']);
}

class GetApplicationConfig extends TdFunction {
  @override
  Type get returnType => JsonValue;

  @override
  String get tdType => 'getApplicationConfig';

  @override
  Map<String, dynamic> get params => {};

  GetApplicationConfig();

  GetApplicationConfig.fromJson(Map<String, dynamic> json);
}

class GetPollVoters extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'getPollVoters';

  int chatId;
  int messageId;
  int optionId;
  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'option_id': optionId,
    'offset': offset,
    'limit': limit,
  };

  GetPollVoters(
    this.chatId,
    this.messageId,
    this.optionId,
    this.offset,
    this.limit,
  );

  GetPollVoters.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    optionId = convertToTdObject(json['option_id']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']);
}

class GetContacts extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'getContacts';

  @override
  Map<String, dynamic> get params => {};

  GetContacts();

  GetContacts.fromJson(Map<String, dynamic> json);
}

class SearchContacts extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'searchContacts';

  String query;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'limit': limit,
  };

  SearchContacts(
    this.query,
    this.limit,
  );

  SearchContacts.fromJson(Map<String, dynamic> json) :
    query = convertToTdObject(json['query']),
    limit = convertToTdObject(json['limit']);
}

class GetRecentInlineBots extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'getRecentInlineBots';

  @override
  Map<String, dynamic> get params => {};

  GetRecentInlineBots();

  GetRecentInlineBots.fromJson(Map<String, dynamic> json);
}

class GetLoginUrlInfo extends TdFunction {
  @override
  Type get returnType => LoginUrlInfo;

  @override
  String get tdType => 'getLoginUrlInfo';

  int chatId;
  int messageId;
  int buttonId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'button_id': buttonId,
  };

  GetLoginUrlInfo(
    this.chatId,
    this.messageId,
    this.buttonId,
  );

  GetLoginUrlInfo.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    buttonId = convertToTdObject(json['button_id']);
}

class GetExternalLinkInfo extends TdFunction {
  @override
  Type get returnType => LoginUrlInfo;

  @override
  String get tdType => 'getExternalLinkInfo';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  GetExternalLinkInfo(
    this.link,
  );

  GetExternalLinkInfo.fromJson(Map<String, dynamic> json) :
    link = convertToTdObject(json['link']);
}

class GetLoginUrl extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getLoginUrl';

  int chatId;
  int messageId;
  int buttonId;
  bool allowWriteAccess;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'button_id': buttonId,
    'allow_write_access': allowWriteAccess,
  };

  GetLoginUrl(
    this.chatId,
    this.messageId,
    this.buttonId,
    this.allowWriteAccess,
  );

  GetLoginUrl.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    buttonId = convertToTdObject(json['button_id']),
    allowWriteAccess = convertToTdObject(json['allow_write_access']);
}

class GetExternalLink extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getExternalLink';

  String link;
  bool allowWriteAccess;

  @override
  Map<String, dynamic> get params => {
    'link': link,
    'allow_write_access': allowWriteAccess,
  };

  GetExternalLink(
    this.link,
    this.allowWriteAccess,
  );

  GetExternalLink.fromJson(Map<String, dynamic> json) :
    link = convertToTdObject(json['link']),
    allowWriteAccess = convertToTdObject(json['allow_write_access']);
}

class GetGroupCallInviteLink extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getGroupCallInviteLink';

  int groupCallId;
  bool canSelfUnmute;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'can_self_unmute': canSelfUnmute,
  };

  GetGroupCallInviteLink(
    this.groupCallId,
    this.canSelfUnmute,
  );

  GetGroupCallInviteLink.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    canSelfUnmute = convertToTdObject(json['can_self_unmute']);
}

class GetEmojiSuggestionsUrl extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getEmojiSuggestionsUrl';

  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'language_code': languageCode,
  };

  GetEmojiSuggestionsUrl(
    this.languageCode,
  );

  GetEmojiSuggestionsUrl.fromJson(Map<String, dynamic> json) :
    languageCode = convertToTdObject(json['language_code']);
}

class GetBackgroundUrl extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getBackgroundUrl';

  String name;
  BackgroundType type;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'type': type,
  };

  GetBackgroundUrl(
    this.name,
    this.type,
  );

  GetBackgroundUrl.fromJson(Map<String, dynamic> json) :
    name = convertToTdObject(json['name']),
    type = convertToTdObject(json['type']);
}

class GetChatStatisticsUrl extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getChatStatisticsUrl';

  int chatId;
  String parameters;
  bool isDark;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'parameters': parameters,
    'is_dark': isDark,
  };

  GetChatStatisticsUrl(
    this.chatId,
    this.parameters,
    this.isDark,
  );

  GetChatStatisticsUrl.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    parameters = convertToTdObject(json['parameters']),
    isDark = convertToTdObject(json['is_dark']);
}

class GetApplicationDownloadLink extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getApplicationDownloadLink';

  @override
  Map<String, dynamic> get params => {};

  GetApplicationDownloadLink();

  GetApplicationDownloadLink.fromJson(Map<String, dynamic> json);
}

class GetProxyLink extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getProxyLink';

  int proxyId;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
  };

  GetProxyLink(
    this.proxyId,
  );

  GetProxyLink.fromJson(Map<String, dynamic> json) :
    proxyId = convertToTdObject(json['proxy_id']);
}

class GetInlineQueryResults extends TdFunction {
  @override
  Type get returnType => InlineQueryResults;

  @override
  String get tdType => 'getInlineQueryResults';

  int botUserId;
  int chatId;
  Location userLocation;
  String query;
  String offset;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'chat_id': chatId,
    'user_location': userLocation,
    'query': query,
    'offset': offset,
  };

  GetInlineQueryResults(
    this.botUserId,
    this.chatId,
    this.userLocation,
    this.query,
    this.offset,
  );

  GetInlineQueryResults.fromJson(Map<String, dynamic> json) :
    botUserId = convertToTdObject(json['bot_user_id']),
    chatId = convertToTdObject(json['chat_id']),
    userLocation = convertToTdObject(json['user_location']),
    query = convertToTdObject(json['query']),
    offset = convertToTdObject(json['offset']);
}

class GetCallbackQueryAnswer extends TdFunction {
  @override
  Type get returnType => CallbackQueryAnswer;

  @override
  String get tdType => 'getCallbackQueryAnswer';

  int chatId;
  int messageId;
  CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'payload': payload,
  };

  GetCallbackQueryAnswer(
    this.chatId,
    this.messageId,
    this.payload,
  );

  GetCallbackQueryAnswer.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    payload = convertToTdObject(json['payload']);
}

class GetGameHighScores extends TdFunction {
  @override
  Type get returnType => GameHighScores;

  @override
  String get tdType => 'getGameHighScores';

  int chatId;
  int messageId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'user_id': userId,
  };

  GetGameHighScores(
    this.chatId,
    this.messageId,
    this.userId,
  );

  GetGameHighScores.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    userId = convertToTdObject(json['user_id']);
}

class GetInlineGameHighScores extends TdFunction {
  @override
  Type get returnType => GameHighScores;

  @override
  String get tdType => 'getInlineGameHighScores';

  String inlineMessageId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'user_id': userId,
  };

  GetInlineGameHighScores(
    this.inlineMessageId,
    this.userId,
  );

  GetInlineGameHighScores.fromJson(Map<String, dynamic> json) :
    inlineMessageId = convertToTdObject(json['inline_message_id']),
    userId = convertToTdObject(json['user_id']);
}

class GetInternalLinkType extends TdFunction {
  @override
  Type get returnType => InternalLinkType;

  @override
  String get tdType => 'getInternalLinkType';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  GetInternalLinkType(
    this.link,
  );

  GetInternalLinkType.fromJson(Map<String, dynamic> json) :
    link = convertToTdObject(json['link']);
}

class GetChatListsToAddChat extends TdFunction {
  @override
  Type get returnType => ChatLists;

  @override
  String get tdType => 'getChatListsToAddChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatListsToAddChat(
    this.chatId,
  );

  GetChatListsToAddChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class GetChatFilter extends TdFunction {
  @override
  Type get returnType => ChatFilter;

  @override
  String get tdType => 'getChatFilter';

  int chatFilterId;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_id': chatFilterId,
  };

  GetChatFilter(
    this.chatFilterId,
  );

  GetChatFilter.fromJson(Map<String, dynamic> json) :
    chatFilterId = convertToTdObject(json['chat_filter_id']);
}

class CreateChatFilter extends TdFunction {
  @override
  Type get returnType => ChatFilterInfo;

  @override
  String get tdType => 'createChatFilter';

  ChatFilter filter;

  @override
  Map<String, dynamic> get params => {
    'filter': filter,
  };

  CreateChatFilter(
    this.filter,
  );

  CreateChatFilter.fromJson(Map<String, dynamic> json) :
    filter = convertToTdObject(json['filter']);
}

class EditChatFilter extends TdFunction {
  @override
  Type get returnType => ChatFilterInfo;

  @override
  String get tdType => 'editChatFilter';

  int chatFilterId;
  ChatFilter filter;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_id': chatFilterId,
    'filter': filter,
  };

  EditChatFilter(
    this.chatFilterId,
    this.filter,
  );

  EditChatFilter.fromJson(Map<String, dynamic> json) :
    chatFilterId = convertToTdObject(json['chat_filter_id']),
    filter = convertToTdObject(json['filter']);
}

class GetRecommendedChatFilters extends TdFunction {
  @override
  Type get returnType => RecommendedChatFilters;

  @override
  String get tdType => 'getRecommendedChatFilters';

  @override
  Map<String, dynamic> get params => {};

  GetRecommendedChatFilters();

  GetRecommendedChatFilters.fromJson(Map<String, dynamic> json);
}

class CanTransferOwnership extends TdFunction {
  @override
  Type get returnType => CanTransferOwnershipResult;

  @override
  String get tdType => 'canTransferOwnership';

  @override
  Map<String, dynamic> get params => {};

  CanTransferOwnership();

  CanTransferOwnership.fromJson(Map<String, dynamic> json);
}

class GetChatMember extends TdFunction {
  @override
  Type get returnType => ChatMember;

  @override
  String get tdType => 'getChatMember';

  int chatId;
  MessageSender memberId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'member_id': memberId,
  };

  GetChatMember(
    this.chatId,
    this.memberId,
  );

  GetChatMember.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    memberId = convertToTdObject(json['member_id']);
}

class SearchChatMembers extends TdFunction {
  @override
  Type get returnType => ChatMembers;

  @override
  String get tdType => 'searchChatMembers';

  int chatId;
  String query;
  int limit;
  ChatMembersFilter filter;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'query': query,
    'limit': limit,
    'filter': filter,
  };

  SearchChatMembers(
    this.chatId,
    this.query,
    this.limit,
    this.filter,
  );

  SearchChatMembers.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    query = convertToTdObject(json['query']),
    limit = convertToTdObject(json['limit']),
    filter = convertToTdObject(json['filter']);
}

class GetSupergroupMembers extends TdFunction {
  @override
  Type get returnType => ChatMembers;

  @override
  String get tdType => 'getSupergroupMembers';

  int supergroupId;
  SupergroupMembersFilter filter;
  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'filter': filter,
    'offset': offset,
    'limit': limit,
  };

  GetSupergroupMembers(
    this.supergroupId,
    this.filter,
    this.offset,
    this.limit,
  );

  GetSupergroupMembers.fromJson(Map<String, dynamic> json) :
    supergroupId = convertToTdObject(json['supergroup_id']),
    filter = convertToTdObject(json['filter']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']);
}

class GetChatAdministrators extends TdFunction {
  @override
  Type get returnType => ChatAdministrators;

  @override
  String get tdType => 'getChatAdministrators';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatAdministrators(
    this.chatId,
  );

  GetChatAdministrators.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class GetScopeNotificationSettings extends TdFunction {
  @override
  Type get returnType => ScopeNotificationSettings;

  @override
  String get tdType => 'getScopeNotificationSettings';

  NotificationSettingsScope scope;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
  };

  GetScopeNotificationSettings(
    this.scope,
  );

  GetScopeNotificationSettings.fromJson(Map<String, dynamic> json) :
    scope = convertToTdObject(json['scope']);
}

class ReadFilePart extends TdFunction {
  @override
  Type get returnType => FilePart;

  @override
  String get tdType => 'readFilePart';

  int fileId;
  int offset;
  int count;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'offset': offset,
    'count': count,
  };

  ReadFilePart(
    this.fileId,
    this.offset,
    this.count,
  );

  ReadFilePart.fromJson(Map<String, dynamic> json) :
    fileId = convertToTdObject(json['file_id']),
    offset = convertToTdObject(json['offset']),
    count = convertToTdObject(json['count']);
}

class GetGroupCallStreamSegment extends TdFunction {
  @override
  Type get returnType => FilePart;

  @override
  String get tdType => 'getGroupCallStreamSegment';

  int groupCallId;
  int timeOffset;
  int scale;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'time_offset': timeOffset,
    'scale': scale,
  };

  GetGroupCallStreamSegment(
    this.groupCallId,
    this.timeOffset,
    this.scale,
  );

  GetGroupCallStreamSegment.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']),
    timeOffset = convertToTdObject(json['time_offset']),
    scale = convertToTdObject(json['scale']);
}

class GetMessageFileType extends TdFunction {
  @override
  Type get returnType => MessageFileType;

  @override
  String get tdType => 'getMessageFileType';

  String messageFileHead;

  @override
  Map<String, dynamic> get params => {
    'message_file_head': messageFileHead,
  };

  GetMessageFileType(
    this.messageFileHead,
  );

  GetMessageFileType.fromJson(Map<String, dynamic> json) :
    messageFileHead = convertToTdObject(json['message_file_head']);
}

class ReplacePrimaryChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLink;

  @override
  String get tdType => 'replacePrimaryChatInviteLink';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  ReplacePrimaryChatInviteLink(
    this.chatId,
  );

  ReplacePrimaryChatInviteLink.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class CreateChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLink;

  @override
  String get tdType => 'createChatInviteLink';

  int chatId;
  int expireDate;
  int memberLimit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'expire_date': expireDate,
    'member_limit': memberLimit,
  };

  CreateChatInviteLink(
    this.chatId,
    this.expireDate,
    this.memberLimit,
  );

  CreateChatInviteLink.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    expireDate = convertToTdObject(json['expire_date']),
    memberLimit = convertToTdObject(json['member_limit']);
}

class EditChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLink;

  @override
  String get tdType => 'editChatInviteLink';

  int chatId;
  String inviteLink;
  int expireDate;
  int memberLimit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
    'expire_date': expireDate,
    'member_limit': memberLimit,
  };

  EditChatInviteLink(
    this.chatId,
    this.inviteLink,
    this.expireDate,
    this.memberLimit,
  );

  EditChatInviteLink.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    inviteLink = convertToTdObject(json['invite_link']),
    expireDate = convertToTdObject(json['expire_date']),
    memberLimit = convertToTdObject(json['member_limit']);
}

class GetChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLink;

  @override
  String get tdType => 'getChatInviteLink';

  int chatId;
  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  GetChatInviteLink(
    this.chatId,
    this.inviteLink,
  );

  GetChatInviteLink.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    inviteLink = convertToTdObject(json['invite_link']);
}

class GetChatInviteLinkCounts extends TdFunction {
  @override
  Type get returnType => ChatInviteLinkCounts;

  @override
  String get tdType => 'getChatInviteLinkCounts';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatInviteLinkCounts(
    this.chatId,
  );

  GetChatInviteLinkCounts.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class GetChatInviteLinks extends TdFunction {
  @override
  Type get returnType => ChatInviteLinks;

  @override
  String get tdType => 'getChatInviteLinks';

  int chatId;
  int creatorUserId;
  bool isRevoked;
  int offsetDate;
  String offsetInviteLink;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'creator_user_id': creatorUserId,
    'is_revoked': isRevoked,
    'offset_date': offsetDate,
    'offset_invite_link': offsetInviteLink,
    'limit': limit,
  };

  GetChatInviteLinks(
    this.chatId,
    this.creatorUserId,
    this.isRevoked,
    this.offsetDate,
    this.offsetInviteLink,
    this.limit,
  );

  GetChatInviteLinks.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    creatorUserId = convertToTdObject(json['creator_user_id']),
    isRevoked = convertToTdObject(json['is_revoked']),
    offsetDate = convertToTdObject(json['offset_date']),
    offsetInviteLink = convertToTdObject(json['offset_invite_link']),
    limit = convertToTdObject(json['limit']);
}

class RevokeChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLinks;

  @override
  String get tdType => 'revokeChatInviteLink';

  int chatId;
  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  RevokeChatInviteLink(
    this.chatId,
    this.inviteLink,
  );

  RevokeChatInviteLink.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    inviteLink = convertToTdObject(json['invite_link']);
}

class GetChatInviteLinkMembers extends TdFunction {
  @override
  Type get returnType => ChatInviteLinkMembers;

  @override
  String get tdType => 'getChatInviteLinkMembers';

  int chatId;
  String inviteLink;
  ChatInviteLinkMember offsetMember;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
    'offset_member': offsetMember,
    'limit': limit,
  };

  GetChatInviteLinkMembers(
    this.chatId,
    this.inviteLink,
    this.offsetMember,
    this.limit,
  );

  GetChatInviteLinkMembers.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    inviteLink = convertToTdObject(json['invite_link']),
    offsetMember = convertToTdObject(json['offset_member']),
    limit = convertToTdObject(json['limit']);
}

class CheckChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLinkInfo;

  @override
  String get tdType => 'checkChatInviteLink';

  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  CheckChatInviteLink(
    this.inviteLink,
  );

  CheckChatInviteLink.fromJson(Map<String, dynamic> json) :
    inviteLink = convertToTdObject(json['invite_link']);
}

class CreateCall extends TdFunction {
  @override
  Type get returnType => CallId;

  @override
  String get tdType => 'createCall';

  int userId;
  CallProtocol protocol;
  bool isVideo;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'protocol': protocol,
    'is_video': isVideo,
  };

  CreateCall(
    this.userId,
    this.protocol,
    this.isVideo,
  );

  CreateCall.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    protocol = convertToTdObject(json['protocol']),
    isVideo = convertToTdObject(json['is_video']);
}

class GetVoiceChatAvailableParticipants extends TdFunction {
  @override
  Type get returnType => MessageSenders;

  @override
  String get tdType => 'getVoiceChatAvailableParticipants';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetVoiceChatAvailableParticipants(
    this.chatId,
  );

  GetVoiceChatAvailableParticipants.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']);
}

class GetBlockedMessageSenders extends TdFunction {
  @override
  Type get returnType => MessageSenders;

  @override
  String get tdType => 'getBlockedMessageSenders';

  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'offset': offset,
    'limit': limit,
  };

  GetBlockedMessageSenders(
    this.offset,
    this.limit,
  );

  GetBlockedMessageSenders.fromJson(Map<String, dynamic> json) :
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']);
}

class CreateVoiceChat extends TdFunction {
  @override
  Type get returnType => GroupCallId;

  @override
  String get tdType => 'createVoiceChat';

  int chatId;
  String title;
  int startDate;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'title': title,
    'start_date': startDate,
  };

  CreateVoiceChat(
    this.chatId,
    this.title,
    this.startDate,
  );

  CreateVoiceChat.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    title = convertToTdObject(json['title']),
    startDate = convertToTdObject(json['start_date']);
}

class GetGroupCall extends TdFunction {
  @override
  Type get returnType => GroupCall;

  @override
  String get tdType => 'getGroupCall';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  GetGroupCall(
    this.groupCallId,
  );

  GetGroupCall.fromJson(Map<String, dynamic> json) :
    groupCallId = convertToTdObject(json['group_call_id']);
}

class ImportContacts extends TdFunction {
  @override
  Type get returnType => ImportedContacts;

  @override
  String get tdType => 'importContacts';

  List<Contact> contacts;

  @override
  Map<String, dynamic> get params => {
    'contacts': contacts,
  };

  ImportContacts(
    this.contacts,
  );

  ImportContacts.fromJson(Map<String, dynamic> json) :
    contacts = convertToTdObject(json['contacts']);
}

class ChangeImportedContacts extends TdFunction {
  @override
  Type get returnType => ImportedContacts;

  @override
  String get tdType => 'changeImportedContacts';

  List<Contact> contacts;

  @override
  Map<String, dynamic> get params => {
    'contacts': contacts,
  };

  ChangeImportedContacts(
    this.contacts,
  );

  ChangeImportedContacts.fromJson(Map<String, dynamic> json) :
    contacts = convertToTdObject(json['contacts']);
}

class GetUserProfilePhotos extends TdFunction {
  @override
  Type get returnType => ChatPhotos;

  @override
  String get tdType => 'getUserProfilePhotos';

  int userId;
  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'offset': offset,
    'limit': limit,
  };

  GetUserProfilePhotos(
    this.userId,
    this.offset,
    this.limit,
  );

  GetUserProfilePhotos.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']);
}

class GetStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'getStickers';

  String emoji;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'emoji': emoji,
    'limit': limit,
  };

  GetStickers(
    this.emoji,
    this.limit,
  );

  GetStickers.fromJson(Map<String, dynamic> json) :
    emoji = convertToTdObject(json['emoji']),
    limit = convertToTdObject(json['limit']);
}

class SearchStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'searchStickers';

  String emoji;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'emoji': emoji,
    'limit': limit,
  };

  SearchStickers(
    this.emoji,
    this.limit,
  );

  SearchStickers.fromJson(Map<String, dynamic> json) :
    emoji = convertToTdObject(json['emoji']),
    limit = convertToTdObject(json['limit']);
}

class GetRecentStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'getRecentStickers';

  bool isAttached;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
  };

  GetRecentStickers(
    this.isAttached,
  );

  GetRecentStickers.fromJson(Map<String, dynamic> json) :
    isAttached = convertToTdObject(json['is_attached']);
}

class AddRecentSticker extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'addRecentSticker';

  bool isAttached;
  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
    'sticker': sticker,
  };

  AddRecentSticker(
    this.isAttached,
    this.sticker,
  );

  AddRecentSticker.fromJson(Map<String, dynamic> json) :
    isAttached = convertToTdObject(json['is_attached']),
    sticker = convertToTdObject(json['sticker']);
}

class GetFavoriteStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'getFavoriteStickers';

  @override
  Map<String, dynamic> get params => {};

  GetFavoriteStickers();

  GetFavoriteStickers.fromJson(Map<String, dynamic> json);
}

class GetInstalledStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'getInstalledStickerSets';

  bool isMasks;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
  };

  GetInstalledStickerSets(
    this.isMasks,
  );

  GetInstalledStickerSets.fromJson(Map<String, dynamic> json) :
    isMasks = convertToTdObject(json['is_masks']);
}

class GetArchivedStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'getArchivedStickerSets';

  bool isMasks;
  int offsetStickerSetId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'offset_sticker_set_id': offsetStickerSetId,
    'limit': limit,
  };

  GetArchivedStickerSets(
    this.isMasks,
    this.offsetStickerSetId,
    this.limit,
  );

  GetArchivedStickerSets.fromJson(Map<String, dynamic> json) :
    isMasks = convertToTdObject(json['is_masks']),
    offsetStickerSetId = convertToTdObject(json['offset_sticker_set_id']),
    limit = convertToTdObject(json['limit']);
}

class GetTrendingStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'getTrendingStickerSets';

  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'offset': offset,
    'limit': limit,
  };

  GetTrendingStickerSets(
    this.offset,
    this.limit,
  );

  GetTrendingStickerSets.fromJson(Map<String, dynamic> json) :
    offset = convertToTdObject(json['offset']),
    limit = convertToTdObject(json['limit']);
}

class GetAttachedStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'getAttachedStickerSets';

  int fileId;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
  };

  GetAttachedStickerSets(
    this.fileId,
  );

  GetAttachedStickerSets.fromJson(Map<String, dynamic> json) :
    fileId = convertToTdObject(json['file_id']);
}

class SearchInstalledStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'searchInstalledStickerSets';

  bool isMasks;
  String query;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'query': query,
    'limit': limit,
  };

  SearchInstalledStickerSets(
    this.isMasks,
    this.query,
    this.limit,
  );

  SearchInstalledStickerSets.fromJson(Map<String, dynamic> json) :
    isMasks = convertToTdObject(json['is_masks']),
    query = convertToTdObject(json['query']),
    limit = convertToTdObject(json['limit']);
}

class SearchStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'searchStickerSets';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SearchStickerSets(
    this.query,
  );

  SearchStickerSets.fromJson(Map<String, dynamic> json) :
    query = convertToTdObject(json['query']);
}

class GetStickerSet extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'getStickerSet';

  int setId;

  @override
  Map<String, dynamic> get params => {
    'set_id': setId,
  };

  GetStickerSet(
    this.setId,
  );

  GetStickerSet.fromJson(Map<String, dynamic> json) :
    setId = convertToTdObject(json['set_id']);
}

class SearchStickerSet extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'searchStickerSet';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  SearchStickerSet(
    this.name,
  );

  SearchStickerSet.fromJson(Map<String, dynamic> json) :
    name = convertToTdObject(json['name']);
}

class CreateNewStickerSet extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'createNewStickerSet';

  int userId;
  String title;
  String name;
  bool isMasks;
  List<InputSticker> stickers;
  String source;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'title': title,
    'name': name,
    'is_masks': isMasks,
    'stickers': stickers,
    'source': source,
  };

  CreateNewStickerSet(
    this.userId,
    this.title,
    this.name,
    this.isMasks,
    this.stickers,
    this.source,
  );

  CreateNewStickerSet.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    title = convertToTdObject(json['title']),
    name = convertToTdObject(json['name']),
    isMasks = convertToTdObject(json['is_masks']),
    stickers = convertToTdObject(json['stickers']),
    source = convertToTdObject(json['source']);
}

class AddStickerToSet extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'addStickerToSet';

  int userId;
  String name;
  InputSticker sticker;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'name': name,
    'sticker': sticker,
  };

  AddStickerToSet(
    this.userId,
    this.name,
    this.sticker,
  );

  AddStickerToSet.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    name = convertToTdObject(json['name']),
    sticker = convertToTdObject(json['sticker']);
}

class SetStickerSetThumbnail extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'setStickerSetThumbnail';

  int userId;
  String name;
  InputFile thumbnail;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'name': name,
    'thumbnail': thumbnail,
  };

  SetStickerSetThumbnail(
    this.userId,
    this.name,
    this.thumbnail,
  );

  SetStickerSetThumbnail.fromJson(Map<String, dynamic> json) :
    userId = convertToTdObject(json['user_id']),
    name = convertToTdObject(json['name']),
    thumbnail = convertToTdObject(json['thumbnail']);
}

class GetStickerEmojis extends TdFunction {
  @override
  Type get returnType => Emojis;

  @override
  String get tdType => 'getStickerEmojis';

  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  GetStickerEmojis(
    this.sticker,
  );

  GetStickerEmojis.fromJson(Map<String, dynamic> json) :
    sticker = convertToTdObject(json['sticker']);
}

class SearchEmojis extends TdFunction {
  @override
  Type get returnType => Emojis;

  @override
  String get tdType => 'searchEmojis';

  String text;
  bool exactMatch;
  List<String> inputLanguageCodes;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'exact_match': exactMatch,
    'input_language_codes': inputLanguageCodes,
  };

  SearchEmojis(
    this.text,
    this.exactMatch,
    this.inputLanguageCodes,
  );

  SearchEmojis.fromJson(Map<String, dynamic> json) :
    text = convertToTdObject(json['text']),
    exactMatch = convertToTdObject(json['exact_match']),
    inputLanguageCodes = convertToTdObject(json['input_language_codes']);
}

class GetSavedAnimations extends TdFunction {
  @override
  Type get returnType => Animations;

  @override
  String get tdType => 'getSavedAnimations';

  @override
  Map<String, dynamic> get params => {};

  GetSavedAnimations();

  GetSavedAnimations.fromJson(Map<String, dynamic> json);
}

class SearchHashtags extends TdFunction {
  @override
  Type get returnType => Hashtags;

  @override
  String get tdType => 'searchHashtags';

  String prefix;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'prefix': prefix,
    'limit': limit,
  };

  SearchHashtags(
    this.prefix,
    this.limit,
  );

  SearchHashtags.fromJson(Map<String, dynamic> json) :
    prefix = convertToTdObject(json['prefix']),
    limit = convertToTdObject(json['limit']);
}

class GetWebPagePreview extends TdFunction {
  @override
  Type get returnType => WebPage;

  @override
  String get tdType => 'getWebPagePreview';

  FormattedText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  GetWebPagePreview(
    this.text,
  );

  GetWebPagePreview.fromJson(Map<String, dynamic> json) :
    text = convertToTdObject(json['text']);
}

class GetWebPageInstantView extends TdFunction {
  @override
  Type get returnType => WebPageInstantView;

  @override
  String get tdType => 'getWebPageInstantView';

  String url;
  bool forceFull;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'force_full': forceFull,
  };

  GetWebPageInstantView(
    this.url,
    this.forceFull,
  );

  GetWebPageInstantView.fromJson(Map<String, dynamic> json) :
    url = convertToTdObject(json['url']),
    forceFull = convertToTdObject(json['force_full']);
}

class ChangePhoneNumber extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'changePhoneNumber';

  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'settings': settings,
  };

  ChangePhoneNumber(
    this.phoneNumber,
    this.settings,
  );

  ChangePhoneNumber.fromJson(Map<String, dynamic> json) :
    phoneNumber = convertToTdObject(json['phone_number']),
    settings = convertToTdObject(json['settings']);
}

class ResendChangePhoneNumberCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'resendChangePhoneNumberCode';

  @override
  Map<String, dynamic> get params => {};

  ResendChangePhoneNumberCode();

  ResendChangePhoneNumberCode.fromJson(Map<String, dynamic> json);
}

class SendPhoneNumberVerificationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'sendPhoneNumberVerificationCode';

  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'settings': settings,
  };

  SendPhoneNumberVerificationCode(
    this.phoneNumber,
    this.settings,
  );

  SendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) :
    phoneNumber = convertToTdObject(json['phone_number']),
    settings = convertToTdObject(json['settings']);
}

class ResendPhoneNumberVerificationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'resendPhoneNumberVerificationCode';

  @override
  Map<String, dynamic> get params => {};

  ResendPhoneNumberVerificationCode();

  ResendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json);
}

class SendPhoneNumberConfirmationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'sendPhoneNumberConfirmationCode';

  String hash;
  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    'hash': hash,
    'phone_number': phoneNumber,
    'settings': settings,
  };

  SendPhoneNumberConfirmationCode(
    this.hash,
    this.phoneNumber,
    this.settings,
  );

  SendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json) :
    hash = convertToTdObject(json['hash']),
    phoneNumber = convertToTdObject(json['phone_number']),
    settings = convertToTdObject(json['settings']);
}

class ResendPhoneNumberConfirmationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'resendPhoneNumberConfirmationCode';

  @override
  Map<String, dynamic> get params => {};

  ResendPhoneNumberConfirmationCode();

  ResendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);
}

class GetCommands extends TdFunction {
  @override
  Type get returnType => BotCommands;

  @override
  String get tdType => 'getCommands';

  BotCommandScope scope;
  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'language_code': languageCode,
  };

  GetCommands(
    this.scope,
    this.languageCode,
  );

  GetCommands.fromJson(Map<String, dynamic> json) :
    scope = convertToTdObject(json['scope']),
    languageCode = convertToTdObject(json['language_code']);
}

class GetActiveSessions extends TdFunction {
  @override
  Type get returnType => Sessions;

  @override
  String get tdType => 'getActiveSessions';

  @override
  Map<String, dynamic> get params => {};

  GetActiveSessions();

  GetActiveSessions.fromJson(Map<String, dynamic> json);
}

class GetConnectedWebsites extends TdFunction {
  @override
  Type get returnType => ConnectedWebsites;

  @override
  String get tdType => 'getConnectedWebsites';

  @override
  Map<String, dynamic> get params => {};

  GetConnectedWebsites();

  GetConnectedWebsites.fromJson(Map<String, dynamic> json);
}

class GetChatEventLog extends TdFunction {
  @override
  Type get returnType => ChatEvents;

  @override
  String get tdType => 'getChatEventLog';

  int chatId;
  String query;
  int fromEventId;
  int limit;
  ChatEventLogFilters filters;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'query': query,
    'from_event_id': fromEventId,
    'limit': limit,
    'filters': filters,
    'user_ids': userIds,
  };

  GetChatEventLog(
    this.chatId,
    this.query,
    this.fromEventId,
    this.limit,
    this.filters,
    this.userIds,
  );

  GetChatEventLog.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    query = convertToTdObject(json['query']),
    fromEventId = convertToTdObject(json['from_event_id']),
    limit = convertToTdObject(json['limit']),
    filters = convertToTdObject(json['filters']),
    userIds = convertToTdObject(json['user_ids']);
}

class GetPaymentForm extends TdFunction {
  @override
  Type get returnType => PaymentForm;

  @override
  String get tdType => 'getPaymentForm';

  int chatId;
  int messageId;
  PaymentFormTheme theme;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'theme': theme,
  };

  GetPaymentForm(
    this.chatId,
    this.messageId,
    this.theme,
  );

  GetPaymentForm.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    theme = convertToTdObject(json['theme']);
}

class ValidateOrderInfo extends TdFunction {
  @override
  Type get returnType => ValidatedOrderInfo;

  @override
  String get tdType => 'validateOrderInfo';

  int chatId;
  int messageId;
  OrderInfo orderInfo;
  bool allowSave;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'order_info': orderInfo,
    'allow_save': allowSave,
  };

  ValidateOrderInfo(
    this.chatId,
    this.messageId,
    this.orderInfo,
    this.allowSave,
  );

  ValidateOrderInfo.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    orderInfo = convertToTdObject(json['order_info']),
    allowSave = convertToTdObject(json['allow_save']);
}

class SendPaymentForm extends TdFunction {
  @override
  Type get returnType => PaymentResult;

  @override
  String get tdType => 'sendPaymentForm';

  int chatId;
  int messageId;
  int paymentFormId;
  String orderInfoId;
  String shippingOptionId;
  InputCredentials credentials;
  int tipAmount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'payment_form_id': paymentFormId,
    'order_info_id': orderInfoId,
    'shipping_option_id': shippingOptionId,
    'credentials': credentials,
    'tip_amount': tipAmount,
  };

  SendPaymentForm(
    this.chatId,
    this.messageId,
    this.paymentFormId,
    this.orderInfoId,
    this.shippingOptionId,
    this.credentials,
    this.tipAmount,
  );

  SendPaymentForm.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    paymentFormId = convertToTdObject(json['payment_form_id']),
    orderInfoId = convertToTdObject(json['order_info_id']),
    shippingOptionId = convertToTdObject(json['shipping_option_id']),
    credentials = convertToTdObject(json['credentials']),
    tipAmount = convertToTdObject(json['tip_amount']);
}

class GetPaymentReceipt extends TdFunction {
  @override
  Type get returnType => PaymentReceipt;

  @override
  String get tdType => 'getPaymentReceipt';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetPaymentReceipt(
    this.chatId,
    this.messageId,
  );

  GetPaymentReceipt.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']);
}

class GetSavedOrderInfo extends TdFunction {
  @override
  Type get returnType => OrderInfo;

  @override
  String get tdType => 'getSavedOrderInfo';

  @override
  Map<String, dynamic> get params => {};

  GetSavedOrderInfo();

  GetSavedOrderInfo.fromJson(Map<String, dynamic> json);
}

class GetBackgrounds extends TdFunction {
  @override
  Type get returnType => Backgrounds;

  @override
  String get tdType => 'getBackgrounds';

  bool forDarkTheme;

  @override
  Map<String, dynamic> get params => {
    'for_dark_theme': forDarkTheme,
  };

  GetBackgrounds(
    this.forDarkTheme,
  );

  GetBackgrounds.fromJson(Map<String, dynamic> json) :
    forDarkTheme = convertToTdObject(json['for_dark_theme']);
}

class SearchBackground extends TdFunction {
  @override
  Type get returnType => Background;

  @override
  String get tdType => 'searchBackground';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  SearchBackground(
    this.name,
  );

  SearchBackground.fromJson(Map<String, dynamic> json) :
    name = convertToTdObject(json['name']);
}

class SetBackground extends TdFunction {
  @override
  Type get returnType => Background;

  @override
  String get tdType => 'setBackground';

  InputBackground background;
  BackgroundType type;
  bool forDarkTheme;

  @override
  Map<String, dynamic> get params => {
    'background': background,
    'type': type,
    'for_dark_theme': forDarkTheme,
  };

  SetBackground(
    this.background,
    this.type,
    this.forDarkTheme,
  );

  SetBackground.fromJson(Map<String, dynamic> json) :
    background = convertToTdObject(json['background']),
    type = convertToTdObject(json['type']),
    forDarkTheme = convertToTdObject(json['for_dark_theme']);
}

class GetLocalizationTargetInfo extends TdFunction {
  @override
  Type get returnType => LocalizationTargetInfo;

  @override
  String get tdType => 'getLocalizationTargetInfo';

  bool onlyLocal;

  @override
  Map<String, dynamic> get params => {
    'only_local': onlyLocal,
  };

  GetLocalizationTargetInfo(
    this.onlyLocal,
  );

  GetLocalizationTargetInfo.fromJson(Map<String, dynamic> json) :
    onlyLocal = convertToTdObject(json['only_local']);
}

class GetLanguagePackInfo extends TdFunction {
  @override
  Type get returnType => LanguagePackInfo;

  @override
  String get tdType => 'getLanguagePackInfo';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  GetLanguagePackInfo(
    this.languagePackId,
  );

  GetLanguagePackInfo.fromJson(Map<String, dynamic> json) :
    languagePackId = convertToTdObject(json['language_pack_id']);
}

class GetLanguagePackStrings extends TdFunction {
  @override
  Type get returnType => LanguagePackStrings;

  @override
  String get tdType => 'getLanguagePackStrings';

  String languagePackId;
  List<String> keys;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
    'keys': keys,
  };

  GetLanguagePackStrings(
    this.languagePackId,
    this.keys,
  );

  GetLanguagePackStrings.fromJson(Map<String, dynamic> json) :
    languagePackId = convertToTdObject(json['language_pack_id']),
    keys = convertToTdObject(json['keys']);
}

class RegisterDevice extends TdFunction {
  @override
  Type get returnType => PushReceiverId;

  @override
  String get tdType => 'registerDevice';

  DeviceToken deviceToken;
  List<int> otherUserIds;

  @override
  Map<String, dynamic> get params => {
    'device_token': deviceToken,
    'other_user_ids': otherUserIds,
  };

  RegisterDevice(
    this.deviceToken,
    this.otherUserIds,
  );

  RegisterDevice.fromJson(Map<String, dynamic> json) :
    deviceToken = convertToTdObject(json['device_token']),
    otherUserIds = convertToTdObject(json['other_user_ids']);
}

class GetPushReceiverId extends TdFunction {
  @override
  Type get returnType => PushReceiverId;

  @override
  String get tdType => 'getPushReceiverId';

  String payload;

  @override
  Map<String, dynamic> get params => {
    'payload': payload,
  };

  GetPushReceiverId(
    this.payload,
  );

  GetPushReceiverId.fromJson(Map<String, dynamic> json) :
    payload = convertToTdObject(json['payload']);
}

class GetRecentlyVisitedTMeUrls extends TdFunction {
  @override
  Type get returnType => TMeUrls;

  @override
  String get tdType => 'getRecentlyVisitedTMeUrls';

  String referrer;

  @override
  Map<String, dynamic> get params => {
    'referrer': referrer,
  };

  GetRecentlyVisitedTMeUrls(
    this.referrer,
  );

  GetRecentlyVisitedTMeUrls.fromJson(Map<String, dynamic> json) :
    referrer = convertToTdObject(json['referrer']);
}

class GetUserPrivacySettingRules extends TdFunction {
  @override
  Type get returnType => UserPrivacySettingRules;

  @override
  String get tdType => 'getUserPrivacySettingRules';

  UserPrivacySetting setting;

  @override
  Map<String, dynamic> get params => {
    'setting': setting,
  };

  GetUserPrivacySettingRules(
    this.setting,
  );

  GetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) :
    setting = convertToTdObject(json['setting']);
}

class GetOption extends TdFunction {
  @override
  Type get returnType => OptionValue;

  @override
  String get tdType => 'getOption';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  GetOption(
    this.name,
  );

  GetOption.fromJson(Map<String, dynamic> json) :
    name = convertToTdObject(json['name']);
}

class GetAccountTtl extends TdFunction {
  @override
  Type get returnType => AccountTtl;

  @override
  String get tdType => 'getAccountTtl';

  @override
  Map<String, dynamic> get params => {};

  GetAccountTtl();

  GetAccountTtl.fromJson(Map<String, dynamic> json);
}

class GetChatStatistics extends TdFunction {
  @override
  Type get returnType => ChatStatistics;

  @override
  String get tdType => 'getChatStatistics';

  int chatId;
  bool isDark;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_dark': isDark,
  };

  GetChatStatistics(
    this.chatId,
    this.isDark,
  );

  GetChatStatistics.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    isDark = convertToTdObject(json['is_dark']);
}

class GetMessageStatistics extends TdFunction {
  @override
  Type get returnType => MessageStatistics;

  @override
  String get tdType => 'getMessageStatistics';

  int chatId;
  int messageId;
  bool isDark;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'is_dark': isDark,
  };

  GetMessageStatistics(
    this.chatId,
    this.messageId,
    this.isDark,
  );

  GetMessageStatistics.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    messageId = convertToTdObject(json['message_id']),
    isDark = convertToTdObject(json['is_dark']);
}

class GetStatisticalGraph extends TdFunction {
  @override
  Type get returnType => StatisticalGraph;

  @override
  String get tdType => 'getStatisticalGraph';

  int chatId;
  String token;
  int x;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'token': token,
    'x': x,
  };

  GetStatisticalGraph(
    this.chatId,
    this.token,
    this.x,
  );

  GetStatisticalGraph.fromJson(Map<String, dynamic> json) :
    chatId = convertToTdObject(json['chat_id']),
    token = convertToTdObject(json['token']),
    x = convertToTdObject(json['x']);
}

class GetStorageStatistics extends TdFunction {
  @override
  Type get returnType => StorageStatistics;

  @override
  String get tdType => 'getStorageStatistics';

  int chatLimit;

  @override
  Map<String, dynamic> get params => {
    'chat_limit': chatLimit,
  };

  GetStorageStatistics(
    this.chatLimit,
  );

  GetStorageStatistics.fromJson(Map<String, dynamic> json) :
    chatLimit = convertToTdObject(json['chat_limit']);
}

class OptimizeStorage extends TdFunction {
  @override
  Type get returnType => StorageStatistics;

  @override
  String get tdType => 'optimizeStorage';

  int size;
  int ttl;
  int count;
  int immunityDelay;
  List<FileType> fileTypes;
  List<int> chatIds;
  List<int> excludeChatIds;
  bool returnDeletedFileStatistics;
  int chatLimit;

  @override
  Map<String, dynamic> get params => {
    'size': size,
    'ttl': ttl,
    'count': count,
    'immunity_delay': immunityDelay,
    'file_types': fileTypes,
    'chat_ids': chatIds,
    'exclude_chat_ids': excludeChatIds,
    'return_deleted_file_statistics': returnDeletedFileStatistics,
    'chat_limit': chatLimit,
  };

  OptimizeStorage(
    this.size,
    this.ttl,
    this.count,
    this.immunityDelay,
    this.fileTypes,
    this.chatIds,
    this.excludeChatIds,
    this.returnDeletedFileStatistics,
    this.chatLimit,
  );

  OptimizeStorage.fromJson(Map<String, dynamic> json) :
    size = convertToTdObject(json['size']),
    ttl = convertToTdObject(json['ttl']),
    count = convertToTdObject(json['count']),
    immunityDelay = convertToTdObject(json['immunity_delay']),
    fileTypes = convertToTdObject(json['file_types']),
    chatIds = convertToTdObject(json['chat_ids']),
    excludeChatIds = convertToTdObject(json['exclude_chat_ids']),
    returnDeletedFileStatistics = convertToTdObject(json['return_deleted_file_statistics']),
    chatLimit = convertToTdObject(json['chat_limit']);
}

class GetStorageStatisticsFast extends TdFunction {
  @override
  Type get returnType => StorageStatisticsFast;

  @override
  String get tdType => 'getStorageStatisticsFast';

  @override
  Map<String, dynamic> get params => {};

  GetStorageStatisticsFast();

  GetStorageStatisticsFast.fromJson(Map<String, dynamic> json);
}

class GetDatabaseStatistics extends TdFunction {
  @override
  Type get returnType => DatabaseStatistics;

  @override
  String get tdType => 'getDatabaseStatistics';

  @override
  Map<String, dynamic> get params => {};

  GetDatabaseStatistics();

  GetDatabaseStatistics.fromJson(Map<String, dynamic> json);
}

class GetNetworkStatistics extends TdFunction {
  @override
  Type get returnType => NetworkStatistics;

  @override
  String get tdType => 'getNetworkStatistics';

  bool onlyCurrent;

  @override
  Map<String, dynamic> get params => {
    'only_current': onlyCurrent,
  };

  GetNetworkStatistics(
    this.onlyCurrent,
  );

  GetNetworkStatistics.fromJson(Map<String, dynamic> json) :
    onlyCurrent = convertToTdObject(json['only_current']);
}

class GetAutoDownloadSettingsPresets extends TdFunction {
  @override
  Type get returnType => AutoDownloadSettingsPresets;

  @override
  String get tdType => 'getAutoDownloadSettingsPresets';

  @override
  Map<String, dynamic> get params => {};

  GetAutoDownloadSettingsPresets();

  GetAutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json);
}

class GetBankCardInfo extends TdFunction {
  @override
  Type get returnType => BankCardInfo;

  @override
  String get tdType => 'getBankCardInfo';

  String bankCardNumber;

  @override
  Map<String, dynamic> get params => {
    'bank_card_number': bankCardNumber,
  };

  GetBankCardInfo(
    this.bankCardNumber,
  );

  GetBankCardInfo.fromJson(Map<String, dynamic> json) :
    bankCardNumber = convertToTdObject(json['bank_card_number']);
}

class GetPassportElement extends TdFunction {
  @override
  Type get returnType => PassportElement;

  @override
  String get tdType => 'getPassportElement';

  PassportElementType type;
  String password;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'password': password,
  };

  GetPassportElement(
    this.type,
    this.password,
  );

  GetPassportElement.fromJson(Map<String, dynamic> json) :
    type = convertToTdObject(json['type']),
    password = convertToTdObject(json['password']);
}

class SetPassportElement extends TdFunction {
  @override
  Type get returnType => PassportElement;

  @override
  String get tdType => 'setPassportElement';

  InputPassportElement element;
  String password;

  @override
  Map<String, dynamic> get params => {
    'element': element,
    'password': password,
  };

  SetPassportElement(
    this.element,
    this.password,
  );

  SetPassportElement.fromJson(Map<String, dynamic> json) :
    element = convertToTdObject(json['element']),
    password = convertToTdObject(json['password']);
}

class GetAllPassportElements extends TdFunction {
  @override
  Type get returnType => PassportElements;

  @override
  String get tdType => 'getAllPassportElements';

  String password;

  @override
  Map<String, dynamic> get params => {
    'password': password,
  };

  GetAllPassportElements(
    this.password,
  );

  GetAllPassportElements.fromJson(Map<String, dynamic> json) :
    password = convertToTdObject(json['password']);
}

class GetPassportAuthorizationForm extends TdFunction {
  @override
  Type get returnType => PassportAuthorizationForm;

  @override
  String get tdType => 'getPassportAuthorizationForm';

  int botUserId;
  String scope;
  String publicKey;
  String nonce;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'scope': scope,
    'public_key': publicKey,
    'nonce': nonce,
  };

  GetPassportAuthorizationForm(
    this.botUserId,
    this.scope,
    this.publicKey,
    this.nonce,
  );

  GetPassportAuthorizationForm.fromJson(Map<String, dynamic> json) :
    botUserId = convertToTdObject(json['bot_user_id']),
    scope = convertToTdObject(json['scope']),
    publicKey = convertToTdObject(json['public_key']),
    nonce = convertToTdObject(json['nonce']);
}

class GetPassportAuthorizationFormAvailableElements extends TdFunction {
  @override
  Type get returnType => PassportElementsWithErrors;

  @override
  String get tdType => 'getPassportAuthorizationFormAvailableElements';

  int autorizationFormId;
  String password;

  @override
  Map<String, dynamic> get params => {
    'autorization_form_id': autorizationFormId,
    'password': password,
  };

  GetPassportAuthorizationFormAvailableElements(
    this.autorizationFormId,
    this.password,
  );

  GetPassportAuthorizationFormAvailableElements.fromJson(Map<String, dynamic> json) :
    autorizationFormId = convertToTdObject(json['autorization_form_id']),
    password = convertToTdObject(json['password']);
}

class CheckStickerSetName extends TdFunction {
  @override
  Type get returnType => CheckStickerSetNameResult;

  @override
  String get tdType => 'checkStickerSetName';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  CheckStickerSetName(
    this.name,
  );

  CheckStickerSetName.fromJson(Map<String, dynamic> json) :
    name = convertToTdObject(json['name']);
}

class SendCustomRequest extends TdFunction {
  @override
  Type get returnType => CustomRequestResult;

  @override
  String get tdType => 'sendCustomRequest';

  String method;
  String parameters;

  @override
  Map<String, dynamic> get params => {
    'method': method,
    'parameters': parameters,
  };

  SendCustomRequest(
    this.method,
    this.parameters,
  );

  SendCustomRequest.fromJson(Map<String, dynamic> json) :
    method = convertToTdObject(json['method']),
    parameters = convertToTdObject(json['parameters']);
}

class GetCountries extends TdFunction {
  @override
  Type get returnType => Countries;

  @override
  String get tdType => 'getCountries';

  @override
  Map<String, dynamic> get params => {};

  GetCountries();

  GetCountries.fromJson(Map<String, dynamic> json);
}

class GetPhoneNumberInfo extends TdFunction {
  @override
  Type get returnType => PhoneNumberInfo;

  @override
  String get tdType => 'getPhoneNumberInfo';

  String phoneNumberPrefix;

  @override
  Map<String, dynamic> get params => {
    'phone_number_prefix': phoneNumberPrefix,
  };

  GetPhoneNumberInfo(
    this.phoneNumberPrefix,
  );

  GetPhoneNumberInfo.fromJson(Map<String, dynamic> json) :
    phoneNumberPrefix = convertToTdObject(json['phone_number_prefix']);
}

class GetDeepLinkInfo extends TdFunction {
  @override
  Type get returnType => DeepLinkInfo;

  @override
  String get tdType => 'getDeepLinkInfo';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  GetDeepLinkInfo(
    this.link,
  );

  GetDeepLinkInfo.fromJson(Map<String, dynamic> json) :
    link = convertToTdObject(json['link']);
}

class AddProxy extends TdFunction {
  @override
  Type get returnType => Proxy;

  @override
  String get tdType => 'addProxy';

  String server;
  int port;
  bool enable;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'server': server,
    'port': port,
    'enable': enable,
    'type': type,
  };

  AddProxy(
    this.server,
    this.port,
    this.enable,
    this.type,
  );

  AddProxy.fromJson(Map<String, dynamic> json) :
    server = convertToTdObject(json['server']),
    port = convertToTdObject(json['port']),
    enable = convertToTdObject(json['enable']),
    type = convertToTdObject(json['type']);
}

class EditProxy extends TdFunction {
  @override
  Type get returnType => Proxy;

  @override
  String get tdType => 'editProxy';

  int proxyId;
  String server;
  int port;
  bool enable;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
    'server': server,
    'port': port,
    'enable': enable,
    'type': type,
  };

  EditProxy(
    this.proxyId,
    this.server,
    this.port,
    this.enable,
    this.type,
  );

  EditProxy.fromJson(Map<String, dynamic> json) :
    proxyId = convertToTdObject(json['proxy_id']),
    server = convertToTdObject(json['server']),
    port = convertToTdObject(json['port']),
    enable = convertToTdObject(json['enable']),
    type = convertToTdObject(json['type']);
}

class GetProxies extends TdFunction {
  @override
  Type get returnType => Proxies;

  @override
  String get tdType => 'getProxies';

  @override
  Map<String, dynamic> get params => {};

  GetProxies();

  GetProxies.fromJson(Map<String, dynamic> json);
}

class PingProxy extends TdFunction {
  @override
  Type get returnType => Seconds;

  @override
  String get tdType => 'pingProxy';

  int proxyId;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
  };

  PingProxy(
    this.proxyId,
  );

  PingProxy.fromJson(Map<String, dynamic> json) :
    proxyId = convertToTdObject(json['proxy_id']);
}

class GetLogStream extends TdFunction {
  @override
  Type get returnType => LogStream;

  @override
  String get tdType => 'getLogStream';

  @override
  Map<String, dynamic> get params => {};

  GetLogStream();

  GetLogStream.fromJson(Map<String, dynamic> json);
}

class GetLogVerbosityLevel extends TdFunction {
  @override
  Type get returnType => LogVerbosityLevel;

  @override
  String get tdType => 'getLogVerbosityLevel';

  @override
  Map<String, dynamic> get params => {};

  GetLogVerbosityLevel();

  GetLogVerbosityLevel.fromJson(Map<String, dynamic> json);
}

class GetLogTagVerbosityLevel extends TdFunction {
  @override
  Type get returnType => LogVerbosityLevel;

  @override
  String get tdType => 'getLogTagVerbosityLevel';

  String tag;

  @override
  Map<String, dynamic> get params => {
    'tag': tag,
  };

  GetLogTagVerbosityLevel(
    this.tag,
  );

  GetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json) :
    tag = convertToTdObject(json['tag']);
}

class GetLogTags extends TdFunction {
  @override
  Type get returnType => LogTags;

  @override
  String get tdType => 'getLogTags';

  @override
  Map<String, dynamic> get params => {};

  GetLogTags();

  GetLogTags.fromJson(Map<String, dynamic> json);
}

class TestCallString extends TdFunction {
  @override
  Type get returnType => TestString;

  @override
  String get tdType => 'testCallString';

  String x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallString(
    this.x,
  );

  TestCallString.fromJson(Map<String, dynamic> json) :
    x = convertToTdObject(json['x']);
}

class TestCallBytes extends TdFunction {
  @override
  Type get returnType => TestBytes;

  @override
  String get tdType => 'testCallBytes';

  String x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallBytes(
    this.x,
  );

  TestCallBytes.fromJson(Map<String, dynamic> json) :
    x = convertToTdObject(json['x']);
}

class TestCallVectorInt extends TdFunction {
  @override
  Type get returnType => TestVectorInt;

  @override
  String get tdType => 'testCallVectorInt';

  List<int> x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallVectorInt(
    this.x,
  );

  TestCallVectorInt.fromJson(Map<String, dynamic> json) :
    x = convertToTdObject(json['x']);
}

class TestCallVectorIntObject extends TdFunction {
  @override
  Type get returnType => TestVectorIntObject;

  @override
  String get tdType => 'testCallVectorIntObject';

  List<TestInt> x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallVectorIntObject(
    this.x,
  );

  TestCallVectorIntObject.fromJson(Map<String, dynamic> json) :
    x = convertToTdObject(json['x']);
}

class TestCallVectorString extends TdFunction {
  @override
  Type get returnType => TestVectorString;

  @override
  String get tdType => 'testCallVectorString';

  List<String> x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallVectorString(
    this.x,
  );

  TestCallVectorString.fromJson(Map<String, dynamic> json) :
    x = convertToTdObject(json['x']);
}

class TestCallVectorStringObject extends TdFunction {
  @override
  Type get returnType => TestVectorStringObject;

  @override
  String get tdType => 'testCallVectorStringObject';

  List<TestString> x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallVectorStringObject(
    this.x,
  );

  TestCallVectorStringObject.fromJson(Map<String, dynamic> json) :
    x = convertToTdObject(json['x']);
}

class TestSquareInt extends TdFunction {
  @override
  Type get returnType => TestInt;

  @override
  String get tdType => 'testSquareInt';

  int x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestSquareInt(
    this.x,
  );

  TestSquareInt.fromJson(Map<String, dynamic> json) :
    x = convertToTdObject(json['x']);
}

class TestUseUpdate extends TdFunction {
  @override
  Type get returnType => Update;

  @override
  String get tdType => 'testUseUpdate';

  @override
  Map<String, dynamic> get params => {};

  TestUseUpdate();

  TestUseUpdate.fromJson(Map<String, dynamic> json);
}

class TestReturnError extends TdFunction {
  @override
  Type get returnType => Error;

  @override
  String get tdType => 'testReturnError';

  Error error;

  @override
  Map<String, dynamic> get params => {
    'error': error,
  };

  TestReturnError(
    this.error,
  );

  TestReturnError.fromJson(Map<String, dynamic> json) :
    error = convertToTdObject(json['error']);
}
