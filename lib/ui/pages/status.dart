import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              maxRadius: 25,
              foregroundColor: Colors.deepPurple.shade100,
              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/23518097?s=400&u=91ac76bebfb16bdfffa49216ac336a0d615a1444&v=4"),
            ),
            title: new Text(
              "El chuy",
              style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: new Text(
              "Add new status"
            ),
          ),
          new Container(
            child: Padding(
              padding: EdgeInsets.only(left: 4.0),
              child: new Text(
                "Recents",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Theme.of(context).accentColor
                )

              ),
            ),
            
          ),
          new Divider(),
          new ListTile(
            leading: new CircleAvatar(
              maxRadius: 25,
              foregroundColor: Colors.deepPurple.shade100,
              backgroundImage: NetworkImage(status[2].imageUrl),
            ),
            title: new Text(
              status[2].name,
              style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: new Text(
              "18:18 PM"
            ),
          ),

        ],
      ),
    );
  }
}