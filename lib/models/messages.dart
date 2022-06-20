import 'package:equatable/equatable.dart';

class Message extends Equatable {
  final String userName;
  final String message;
  final String dateSend;
  final bool isSender;

  const Message({
    required this.userName,
    required this.message,
    required this.dateSend,
    required this.isSender,
  });

  @override
  List<Object?> get props {
    return [message, dateSend, isSender];
  }

  static List<Message> messages = [
    const Message(userName: 'userName', message: 'message', dateSend: 'dateSend', isSender: true)
  ];
}
