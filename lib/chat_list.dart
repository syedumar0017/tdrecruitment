import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:recruitment/User.dart';

class ChatList extends StatelessWidget {
  List<User> list = [
    User("Jane", "Hey There!Are you using Whatsapp", "08:58PM"),
    User("Mark", "What are you doing tomorrow?", "YESTERDAY"),
    User("Kunal", "How is your scholarship going on?", "05/03/2018"),
    User("Rahul", "When are the elections?", "03/03/2018"),
    User("Nikita", "Yo wassup!", "27/02/2018"),
    User("Vacation Trip", "Photo", "26/02/2018"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(list[index].dpURL),
            ),
            title: Text(list[index].userName),
            subtitle: Text(list[index].lastMessage),
            trailing: Text(list[index].time),
          );
        });
  }
}
