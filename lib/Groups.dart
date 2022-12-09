import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_14/userSettings.dart';

class GropupChat extends StatefulWidget {
  const GropupChat({super.key});

  @override
  State<GropupChat> createState() => _GropupChatState();
}

class _GropupChatState extends State<GropupChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Nofications  ',
                    style: TextStyle(fontSize: 26),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          child: Text(
                            "T",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Text(
                          ' Tester           ',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ]), //
                ),
              ]),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person,color: Colors.white,size: 30,)
                        ),
                        Text(
                          ' Bilinmeyen ',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ]), //
                ),
              ]),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            "B",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Text(
                          ' Babam     ',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ]), //
                ),
              ]),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Text(
                            "A",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Text(
                          ' Annem        ',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ]), //
                ),
              ]),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            "HA",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Text(
                          ' HAcker Aga    ',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ]), //
                ),
              ]),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Text(
                            "İA",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Text(
                          'İnanç Arslan',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ]), //
                ),
              ]),
              SizedBox(height: 10,),
              // Groups Area ....
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.group,
                    size: 30,
                  ),
                  Text(
                    ' Groups',
                    style: TextStyle(fontSize: 26),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.group,color: Colors.white,),
                  ),
                  Text(' NewPlay  ',style: TextStyle(fontSize: 20),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.group,color: Colors.white,),
                  ),
                  Text(' Agalar',style: TextStyle(fontSize: 20),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.group,color: Colors.white,),
                  ),
                  Text(' Hackers',style: TextStyle(fontSize: 20),)
                ],
              ),
             
              
            ],
          ),
        )
      ]),
      appBar: AppBar(
        actions: [GestureDetector(
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
                )),],
          title: Text(
        "Chat location",
        style: TextStyle(fontSize: 26),
      )),
    );
  }
}
