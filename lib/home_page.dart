import 'package:flutter/material.dart';

import 'chat_screen.dart';

class HomePage extends StatelessWidget {
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
                  text: "CHAT",
                ),
                Tab(
                  text: "CALLS",
                ),
                Tab(
                  text: "STATUS",
                ),
              ],
            )),
        body: TabBarView(
          children: <Widget>[
            ChatScreen(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
