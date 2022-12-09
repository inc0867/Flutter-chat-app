import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_14/Groups.dart';
import 'package:flutter_application_14/business.dart';
import 'package:flutter_application_14/chatHELP.dart';
import 'package:flutter_application_14/userSettings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => ChatArea()));
          },
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              Text(' User  HAHAAH',style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.yellow,
              child: Text("MBİ",style: TextStyle(color: Colors.white),),
            ),
            Text('Made by ira :)',style: TextStyle(fontSize: 20),)
          ],
        ),
         SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
              child: Text("A",style: TextStyle(color: Colors.white),),
            ),
            Text('Annem',style: TextStyle(fontSize: 20),)
          ],
        ),
         SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.purple,
              child: Text("B",style: TextStyle(color: Colors.white),),
            ),
            Text('Babam',style: TextStyle(fontSize: 20),)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                size: 20,
                color: Colors.white,
              ),
            ),
            Text(' AgaBEE',style: TextStyle(fontSize: 20),)
          ],
        ),
         SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.orange,
              child: Text("H",style: TextStyle(color: Colors.white),),
            ),
            Text('Hacker',style: TextStyle(fontSize: 20),)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                size: 20,
                color: Colors.white,
              ),
            ),
            Text(' Tester user',style: TextStyle(fontSize: 20),)
          ],
        ),
         SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Text("PY",style: TextStyle(color: Colors.white),),
            ),
            Text('Python User',style: TextStyle(fontSize: 20),)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                size: 20,
                color: Colors.white,
              ),
            ),
            Text(' DARTTTTTTT',style: TextStyle(fontSize: 20),)
          ],
        ),
         SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Text("YIA",style: TextStyle(color: Colors.white),),
            ),
            Text('Yusuf İslam Arslan',style: TextStyle(fontSize: 20),)
          ],
        ),
         SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
              child: Text("İRA",style: TextStyle(color: Colors.white),),
            ),
            Text(' İnanç Recep Arslan',style: TextStyle(fontSize: 20),)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                size: 20,
                color: Colors.white,
              ),
            ),
            Text(' FireBase',style: TextStyle(fontSize: 20),)
          ],
        ),
         SizedBox(height: 10,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.orange,
              child: Text("SP",style: TextStyle(color: Colors.white),),
            ),
            Text(' Secret Person',style: TextStyle(fontSize: 20),)
          ],
        ),

      ]),
      appBar: AppBar(
          actions: [
            GestureDetector(child: Icon(Icons.business,size: 40,),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Business()));
            },),
            SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => GropupChat()), (route) => false);
              },
              child: Icon(
                Icons.notifications,
                size: 40,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
                onTap: (() {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => userSettings()),
                      (route) => false);
                }),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                  /*Text(
                "ARI",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),*/
                )),
          ],
          title: Text(
            "Chat location",
            style: TextStyle(fontSize: 26),
          )),
    );
  }
}
