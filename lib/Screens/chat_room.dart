import 'package:chat_app_ui/Components/constants.dart';
import 'package:chat_app_ui/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  final User user;

  const ChatRoom({Key? key, required this.user}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 30),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.user.imageURL),
            ),
            const SizedBox(width: 5),
            Text(
              widget.user.name,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
      body: GestureDetector(
        onTapDown: (_) => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.translucent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Text Messages will be Displayed\n\n ----- here ----- \n\nAfter integration with a Backend.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: TextField(
                      decoration: kTextFieldStyle.copyWith(
                          prefixIcon: const Icon(Icons.keyboard),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send),
                          )),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
