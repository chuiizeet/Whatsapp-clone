class ChatModel{
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.message, this.time, this.imageUrl});
}

List<ChatModel> messageData = [

  new ChatModel(
    name: "Frodo Baggins",
    message: "I am glad you are here with me. Here at the end of all things, Chuy.",
    time: "12:12",
    imageUrl: "https://i0.wp.com/www.jovenescatolicos.es/wp-content/uploads/2014/01/0005-FrodoBaggins.jpg"
    
  ),
  new ChatModel(
    name: "Bilbo Baggins",
    message: "Never laugh at live dragons, Bilbo you fool!” “Farewell, King under the Mountain!",
    time: "02:16",
    imageUrl: "https://vignette.wikia.nocookie.net/thehobbitfilm/images/f/f0/Bilbo_empire_magizine_photo.png"
    
  ),
  new ChatModel(
    name: "Saruman",
    message: "I gave you the chance of aiding me willingly, but you have elected the way of pain.",
    time: "11:11",
    imageUrl: "https://vignette.wikia.nocookie.net/lotr/images/c/c1/1oshuart_-_Saruman.jpg"
    
  ),
  new ChatModel(
    name: "Celebrimbor",
    message: "Nan iChir Gelair Mordor",
    time: "20:21",
    imageUrl: "http://www.thelandofshadow.com/wp-content/uploads/2014/09/Celebrimbor10a-200x200.jpg"
    
  ),
  new ChatModel(
    name: "Gandalf",
    message: "The dark fire will not avail you! Flame of Udûn!",
    time: "1:12",
    imageUrl: "https://vignette.wikia.nocookie.net/eldragonverde/images/5/5a/Gandalf-el-gris.jpg/revision/latest?cb=20110323154536&path-prefix=es"
    
  )
];