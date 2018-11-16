import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen({this.name});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  bool isType = false;


  void _handleSubmit(String text) {

    ChatMessage message = new ChatMessage(
      text: text,
      animationController: new AnimationController(
        duration: new Duration(seconds: 1),
        vsync: this
      ),
      name: widget.name,
    );

    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();

  }

  Widget _buildText() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
              controller: _textController,
            )
          ),
          new Container(
            child: new IconButton(
              icon: new Icon(Icons.send),
              onPressed: (){

                _handleSubmit(_textController.text);
                _textController.clear();

              } 
            ),
          )
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
      title: new Text(widget.name, style: Theme.of(context).textTheme.title,),
      backgroundColor: Colors.tealAccent.shade700,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Flexible(
              child: new ListView.builder(
                itemBuilder: (context, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            new Divider(height: 1.0,),
            new Container(
              child: _buildText(),
            )
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String name;
  final AnimationController animationController;
  final String text;
  ChatMessage({ this.name, this.animationController, this.text});

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: new CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
      child: new Row(
        children: <Widget>[
          new Container(
            child: new CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              child: new Text(
                name[0],
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ),
          new Expanded(
            child: Column(
              children: <Widget>[
                new Text(name, style: new TextStyle(color: Colors.black)),
                new Container(
                  child: new Text(text, style: new TextStyle(color: Colors.black))
                )
              ],
            ),
          )
        ],
      ),
      
    );
  }
}