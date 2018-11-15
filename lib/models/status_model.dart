import 'package:whatsapp_clone/models/chat_model.dart';
class StatusModel {
  final String imageUrl;
  final String name;
  final String time;

  StatusModel({this.imageUrl, this.name, this.time});

}

List<StatusModel> status = [

  new StatusModel(
    name: messageData[0].name,
    time: "Today, 4:20AM",
    imageUrl: messageData[0].imageUrl
  ),
  new StatusModel(
    name: messageData[1].name,
    time: "Today, 4:27AM",
    imageUrl: messageData[1].imageUrl
  ),
  new StatusModel(
    name: messageData[2].name,
    time: "Today, 5:23AM",
    imageUrl: messageData[2].imageUrl
  ),
  new StatusModel(
    name: messageData[3].name,
    time: "Today, 8:45AM",
    imageUrl: messageData[3].imageUrl
  ),
  
];