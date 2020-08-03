import 'package:flutter/material.dart';
import 'package:whatsaaclone_widget/models/chat_model.dart';
import 'package:whatsaaclone_widget/pages/chat_screen.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            // metemos a imagem circular
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imagemUrl),
            ),
            title: new Row(
              // comando para dar um espaçamento
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  messageData[i].nome,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                new Text(
                  messageData[i].tempo,
                  style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                messageData[i].mensagem,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
            onTap: () {
              var rout = new MaterialPageRoute(
                  builder: (BuildContext content) => new ChatScreen(
                        nome: messageData[i].nome,
                      ));
              Navigator.of(context).push(rout);
            },
          ),
        ],
      ),
    );
  }
}
