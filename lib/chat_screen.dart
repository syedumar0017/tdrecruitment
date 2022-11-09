import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'chat_list.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ChatList(),
      ),
    );
  }
}
