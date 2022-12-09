import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_14/Groups.dart';
import 'package:flutter_application_14/homepage.dart';
import 'package:flutter_application_14/main.dart';

class userSettings extends StatefulWidget {
  const userSettings({super.key});

  @override
  State<userSettings> createState() => _userSettingsState();
}

class _userSettingsState extends State<userSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 40,
          ),
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 70,
            ),
          ),
          SizedBox(height: 15,),
          Container(
            child: Text("Username: İnanç Recep Arslan",style: TextStyle(fontSize: 20),),
          ),
          SizedBox(height: 15,),
          Container(
            child: Text("email : arslaninancrecep08@gmail.com",style: TextStyle(fontSize: 20),),
          ),
          SizedBox(height: 15,),
          Container(
                        
            child: Text("State : A++",style: TextStyle(fontSize: 20),),
          ),
          
          SizedBox(height: 15,),
          GestureDetector(
            onTap: (() {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => loggedon()), (route) => false);
            }),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.logout,size: 40,), Text(" Çıkış Yap",style: TextStyle(fontSize: 20),)]),
          )
        ]),
      ),
      appBar: AppBar(
        title: Text(
          "Chat location",
          style: TextStyle(fontSize: 26),
        ),
        actions: [
          GestureDetector(child: Icon(Icons.home,size: 40,),onTap: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => HomePage()), (route) => false);
          },),
          SizedBox(width: 15,),
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
      ),
    );
  }
}
