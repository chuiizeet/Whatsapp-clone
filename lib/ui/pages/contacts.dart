import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Contacts", style: new TextStyle(color: Colors.white)),
      ),
       
    );
  }
}