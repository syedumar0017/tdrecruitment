import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'chat_screen.dart';

class Home extends StatelessWidget {
  //const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: Text("WhatsApp"),
            centerTitle: false,
            actions: <Widget>[Icon(Icons.search), Icon(Icons.more_vert)],
            bottom: TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            )),
        body: TabBarView(
          children: <Widget>[
            Container(),
            ChatScreen(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
