class ChatModel {
  final String nome;
  String mensagem;
  final String tempo;
  final String imagemUrl;

  ChatModel({this.nome, this.mensagem, this.tempo, this.imagemUrl});
}

List<ChatModel> messageData = [
  new ChatModel(
      nome: "Ey-d Isaias BN",
      mensagem: "ola como estas?",
      tempo: "12:39",
      imagemUrl:
          "https://scontent.flad5-1.fna.fbcdn.net/v/t1.0-9/40475514_2069694933247159_965003160554831872_o.jpg?_nc_cat=105&_nc_sid=174925&_nc_eui2=AeFeXHAOmESeSTjQ0eYLjh1YHOAyq5-yhtoc4DKrn7KG2lgRgrbN2y5nKKCbSgc-wLlPDaI0LtoZXkHIzdaxgEuG&_nc_ohc=s-He6lIlu5sAX9zi-4h&_nc_ht=scontent.flad5-1.fna&oh=e92f01406881d147cd4c92765fcdc666&oe=5F4C7DD7"),
  new ChatModel(
      nome: "Eliezer António",
      mensagem: "sapo qual é a ideia?",
      tempo: "8:00",
      imagemUrl:
          "https://scontent.flad5-1.fna.fbcdn.net/v/t1.0-9/83137567_2197398370406497_3174354646322930567_n.jpg?_nc_cat=109&_nc_sid=174925&_nc_eui2=AeGbFHECI_N0yTzC4uGYXacNexPSXlz-hDV7E9JeXP6ENWes5K2LsarHndi_-KPmXkdAxli9ojaiqo7NWX8Ubc9u&_nc_ohc=1xN-Ffe4U6kAX_EZtCn&_nc_ht=scontent.flad5-1.fna&oh=ad2080fef05d4be26451b989f3f3bc49&oe=5F4B8EF6"),
  new ChatModel(
      nome: "Simão Kinanga",
      mensagem: "estas bem mano?",
      tempo: "10:00",
      imagemUrl:
          "https://scontent.flad5-1.fna.fbcdn.net/v/t1.0-9/105568290_889758928188494_6583432798673040548_n.jpg?_nc_cat=104&_nc_sid=09cbfe&_nc_eui2=AeHZjHfgcoaB2VShEV2y6bgXpTB-tjO2frmlMH62M7Z-uQmEPdyPKJF4PvN-mYRqOR-rblgpyIo8zKCNzHWFK7bS&_nc_ohc=NuZ813lpIfUAX8VKhcK&_nc_ht=scontent.flad5-1.fna&oh=daeed5afa37fbd2a7ad3871a2528baeb&oe=5F4C9F6F"),
  new ChatModel(
      nome: "Vasco Nicolau",
      mensagem: "wi vamos programar hoje?",
      tempo: "8:00",
      imagemUrl:
          "https://scontent.flad5-1.fna.fbcdn.net/v/t1.0-9/83377907_2679051872208593_402567817230024704_o.jpg?_nc_cat=104&_nc_sid=09cbfe&_nc_eui2=AeH1vFatbuCX4miPciKt1VnkcoG-w8OoGgVygb7Dw6gaBbpJJd0WgDDRjVr3iyIBMhFqJAbrqzD89SLgqRi9NyhN&_nc_ohc=yYHUqQfaw5MAX_W-sls&_nc_ht=scontent.flad5-1.fna&oh=e0807c01367934ccb357ed495feb19c9&oe=5F4D7901"),
  new ChatModel(
      nome: "Gocalves Higino",
      mensagem: "amigão?",
      tempo: "12:39",
      imagemUrl:
          "https://scontent.flad5-1.fna.fbcdn.net/v/t1.0-9/67797592_1692877297523811_2910243550274781184_o.jpg?_nc_cat=102&_nc_sid=09cbfe&_nc_eui2=AeGsE6C4i9RM8fVUSfDby1WxS6CAeePGDRFLoIB548YNEW_BrV2YX_7LhWNY8x47DneRpsupDecCuP8g30MRhVqx&_nc_ohc=XqhipMjkY_kAX_c6lM6&_nc_ht=scontent.flad5-1.fna&oh=6f84847ad1846c202407a5e6f9d11487&oe=5F4B42D5"),
  new ChatModel(
      nome: "Socrates Diquito",
      mensagem: "Ey-d dos Bn qualé?",
      tempo: "16:39",
      imagemUrl:
          "https://scontent.flad5-1.fna.fbcdn.net/v/t1.0-9/15622768_1032835666862251_6753407624698553362_n.jpg?_nc_cat=102&_nc_sid=174925&_nc_eui2=AeHyGyUOO59CFvTCVfV6VXwpAfu0sk-kbOAB-7SyT6Rs4GFrhNoEPuJNUP-hWlibbd9BEfshEhf6N-Wsu5rx-hdS&_nc_ohc=8HmWDoTqtZEAX-yAJbp&_nc_ht=scontent.flad5-1.fna&oh=150744038d8a985a3f53dfc288b254b2&oe=5F4B4B0B"),
];
