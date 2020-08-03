import 'package:whatsaaclone_widget/models/chat_model.dart';

class EstadoModel {
  final String imagemUrl;
  final String nome;
  final String tempo;

  EstadoModel({this.imagemUrl, this.nome, this.tempo});
}

List<EstadoModel> status = [
  new EstadoModel(
      nome: messageData[0].nome,
      tempo: "Hoje 3:00AM",
      imagemUrl: messageData[0].imagemUrl),
  new EstadoModel(
      nome: messageData[1].nome,
      tempo: "Hoje 2:33AM",
      imagemUrl: messageData[1].imagemUrl),
  new EstadoModel(
      nome: messageData[2].nome,
      tempo: "adicione ao meu status",
      imagemUrl: messageData[2].imagemUrl),
  new EstadoModel(
      nome: messageData[3].nome,
      tempo: "Hoje 4:23AM",
      imagemUrl: messageData[3].imagemUrl),
];
