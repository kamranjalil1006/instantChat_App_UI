import 'package:chat_app_ui/models/favourite_list.dart';
import 'package:chat_app_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

String message = 'hello! how are you doing today, sir?';

List<Message> chats = [
  Message(
      sender: favourites[0],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: false),
  Message(
      sender: favourites[1],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: false),
  Message(
      sender: favourites[2],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: true),
  Message(
      sender: favourites[3],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: false),
  Message(
      sender: favourites[4],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: false),
  Message(
      sender: favourites[5],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: true),
  Message(
      sender: favourites[6],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: false),
  Message(
      sender: favourites[7],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: false),
  Message(
      sender: favourites[8],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: true),
  Message(
      sender: favourites[9],
      time: '2:05 PM',
      text: message,
      isLiked: false,
      unread: false)
];
