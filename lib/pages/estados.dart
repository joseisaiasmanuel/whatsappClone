import 'package:flutter/material.dart';
import 'package:whatsaaclone_widget/models/estado.model.dart';

class Estados extends StatefulWidget {
  @override
  _EstadosState createState() => _EstadosState();
}

class _EstadosState extends State<Estados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            // propriedade para mostrar foto de perfil
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[0].imagemUrl),
            ),
            title: new Text(
              status[0].nome,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(status[2].tempo),
          ),
          new Text(
            "Recentes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
                fontSize: 15.0),
          ),
          new ListTile(
            // propriedade para mostrar foto de perfil
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[1].imagemUrl),
            ),
            title: new Text(
              status[1].nome,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(status[3].tempo),
          ),
          new Divider(),
          new ListTile(
            // propriedade para mostrar foto de perfil
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[3].imagemUrl),
            ),
            title: new Text(
              status[3].nome,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(status[2].tempo),
          ),
        ],
      ),
    );
  }
}
