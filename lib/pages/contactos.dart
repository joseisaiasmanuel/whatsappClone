import 'package:flutter/material.dart';
import 'package:whatsaaclone_widget/models/contactos_model.dart';
import 'package:whatsaaclone_widget/pages/contactos_scree.dart';

class Contactos extends StatefulWidget {
  Contactos({Key key}) : super(key: key);

  @override
  _ContactosState createState() => _ContactosState();
}

class _ContactosState extends State<Contactos> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text("Selecionar Contactos")),
      body: new ListView.builder(
        itemCount: contastosData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              // metemos a imagem circular
              leading: new CircleAvatar(
                backgroundImage: NetworkImage(contastosData[i].imagemUrl),
              ),
              title: new Row(
                // comando para dar um espaçamento
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    contastosData[i].nome,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  new Text(
                    contastosData[i].tipo,
                    style: new TextStyle(color: Colors.green, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  contastosData[i].mensagem,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
              onTap: () {
                var rout = new MaterialPageRoute(
                    builder: (BuildContext content) => new ContactoScreen(
                          nome: contastosData[i].nome,
                        ));
                Navigator.of(context).push(rout);
              },
            ),
          ],
        ),
      ),
    );
  }
}
