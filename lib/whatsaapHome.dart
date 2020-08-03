import 'package:flutter/material.dart';
import 'package:whatsaaclone_widget/pages/camera_all.dart';
import 'package:whatsaaclone_widget/pages/chamadas.dart';
import 'package:whatsaaclone_widget/pages/chatsList.dart';
import 'package:whatsaaclone_widget/pages/estados.dart';
import 'package:whatsaaclone_widget/pages/contactos.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHome createState() => _WhatsAppHome();
}

class _WhatsAppHome extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Flutterchat"),
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.camera_alt),
            ),
            new Tab(text: "Chats"),
            new Tab(text: "estados"),
            new Tab(
              text: "chamadas",
            )
          ],
          controller: _tabController,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new Camera(),
          new ChatList(),
          new Estados(),
          new Chamadas(),
        ],
        controller: _tabController,
      ),
      // colocando float bar
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {
            var rout = new MaterialPageRoute(
                builder: (BuildContext content) => new Contactos());
            Navigator.of(context).push(rout);
          }),
    );
  }
}
