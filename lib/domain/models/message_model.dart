import 'dart:convert';

ChatMessageModel chatMessageModelFromJson(String str) =>
    ChatMessageModel.fromJson(json.decode(str));

String chatMessageModelToJson(ChatMessageModel data) =>
    json.encode(data.toJson());

class ChatMessageModel {
  int chatId;
  String to;
  String from;
  String message;
  String chatType;
  bool toUserOnlineStatus;
  String toTokenNotification;

  ChatMessageModel(
      {required this.chatId,
      required this.to,
      required this.from,
      required this.message,
      required this.chatType,
      required this.toUserOnlineStatus,
      required this.toTokenNotification});

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      ChatMessageModel(
          chatId: json["chat_id"],
          to: json["to"],
          from: json["from"],
          message: json["message"],
          chatType: json["chat_type"],
          toUserOnlineStatus: json['to_user_online_status'],
          toTokenNotification: json['toTokenNotification']);

  Map<String, dynamic> toJson() => {
        "chat_id": chatId,
        "to": to,
        "from": from,
        "message": message,
        "chat_type": chatType,
        "toTokenNotification": toTokenNotification
      };
}
