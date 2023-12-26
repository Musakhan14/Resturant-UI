import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
final   String id ;
  const MessageScreen({super.key, required this.id});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
   double w=MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title:  Text('Chat ${widget.id}'),
      ),
      body: Column(
        children: [
          Container(
            width: w/2,
          )
        ],
      ),
    ));
  }
}
