import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Business extends StatefulWidget {
  const Business({super.key});

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            """Made by İnanç Recep Arslan 
              No backend its only frontend
              for Backend Developers""",
            style: TextStyle(fontSize: 20),
          )
          ,
          Text("""Dependencies:
            flutter_test:
              sdk: flutter""",style: TextStyle(fontSize: 20),)
        ],
      )),
      appBar: AppBar(
          title: Text(
        "Chat Location",
        style: TextStyle(fontSize: 26),
      )),
    );
  }
}
