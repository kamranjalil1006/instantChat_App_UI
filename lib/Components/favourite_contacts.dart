import 'package:chat_app_ui/Screens/chat_room.dart';
import 'package:chat_app_ui/models/favourite_list.dart';
import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  const FavouriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Favourite Contacts',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.blueGrey,
                  ))
            ],
          ),
        ),
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favourites.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatRoom(user: favourites[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(favourites[index].imageURL),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        favourites[index].name,
                        style: const TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
