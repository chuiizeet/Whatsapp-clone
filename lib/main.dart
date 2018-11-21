import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Clone',
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.deepPurple.shade300
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white     
        ),
        textTheme: TextTheme(
          title: new TextStyle(color: Colors.white, fontSize: 16.0),
          body1: new TextStyle(color: Colors.black),
          button: new TextStyle(color: Colors.white),
        ),
        bottomAppBarColor: Colors.white,
        primaryColor: Colors.tealAccent.shade700,
        accentColor: Colors.deepPurple.shade300,
      ),
      home: Home(),

    );

  }
}
