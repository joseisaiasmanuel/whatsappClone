import 'package:flutter/material.dart';
import 'package:whatsaaclone_widget/models/contactos_model.dart';

class ContactoScreen extends StatefulWidget {
  final String nome;

  ContactoScreen({this.nome});
  @override
  _ContactoScreenState createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen>
    with TickerProviderStateMixin {
  final TextEditingController _textControler = new TextEditingController();
  final List<ChatMessage> _message = <ChatMessage>[];
  bool _isTypes = false;
  // metodo para imprimir o texto
  void _handleSubmit(String text) {
    _textControler.clear();
    setState(() {
      _isTypes = false;
    });
    ChatMessage message = new ChatMessage(
      text: text,
      animetionController: new AnimationController(
          duration: new Duration(milliseconds: 700), vsync: this),
      nome: widget.nome,
    );
    setState(() {
      _message.insert(0, message);
      var data = contastosData.firstWhere((t) => t.nome == widget.nome);
      data.mensagem = message.text;
    });
    message.animetionController.forward();
  }

  // metodo para configurar a text fild
  Widget _biuldTextCompuser() {
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).accentColor),
        child: new Container(
          child: new Row(children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textControler,
                onChanged: (String text) {
                  setState(() {
                    _isTypes = text.length > 0;
                  });
                },
                decoration:
                    InputDecoration.collapsed(hintText: "Enviar mensagem"),
              ),
            ),
            new Container(
              child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _isTypes
                      ? () => _handleSubmit(_textControler.text)
                      : null),
            )
          ]),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(widget.nome),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Flexible(
                child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _message[index],
              itemCount: _message.length,
            )),
            new Divider(
              height: 1.0,
            ),
            new Container(
              child: _biuldTextCompuser(),
            )
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.animetionController, this.nome});
  final String text;
  final AnimationController animetionController;
  final String nome;
  @override
  Widget build(BuildContext context) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animetionController, curve: Curves.easeOut),
      child: new Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(
                child: new Text(nome[0]),
              ),
            ),
            new Expanded(
                child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(text),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
