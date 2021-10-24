import 'dart:ui';

import 'package:chat_app_ui/Screens/chat_room.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_ui/models/message_model.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatRoom(user: chat.sender),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 5),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color:
                          chat.unread ? const Color(0xFFFFE082) : Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(chat.sender.imageURL),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat.sender.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  chat.text,
                                  style: const TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(chat.time),
                              const SizedBox(height: 5),
                              chat.unread
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          'NEW',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
