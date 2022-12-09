import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatArea extends StatefulWidget {
  const ChatArea({super.key});

  @override
  State<ChatArea> createState() => _ChatAreaState();
}

class _ChatAreaState extends State<ChatArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          color: Colors.grey[900],
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              Text(
                ' User  HAHAAH',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
        SizedBox(
          height: 500,
        ),
        Form(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Bir Mesaj girin...", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 40,
                child: ElevatedButton(onPressed: (() {
                  
                }), child: Row(children: [Text("Send   "),Icon(Icons.send)],)),
              ),
            )
          ],
        ))
      ]),
      appBar: AppBar(
          title: Text(
        "Chat location",
        style: TextStyle(fontSize: 26),
      )),
    );
  }
}
