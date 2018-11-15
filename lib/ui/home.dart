import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/pages/calls.dart';
import 'package:whatsapp_clone/ui/pages/camera.dart';
import 'package:whatsapp_clone/ui/pages/status.dart';
import 'package:whatsapp_clone/ui/pages/chats.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(initialIndex: 1, vsync: this, length: 4);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        title: new Text('WhatsApp Clone'),
        backgroundColor: Colors.tealAccent.shade700,
        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'CHATS'),
            new Tab(text: 'STATUS'),
            new Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camera(),
          new Chats(),
          new Status(),
          new Calls()
        ],
      ),
    );

  }
}