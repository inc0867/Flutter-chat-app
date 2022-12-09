import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_14/homepage.dart';
import 'package:flutter_application_14/signin.dart';

class Logconfig extends StatefulWidget {
  const Logconfig({super.key});

  @override
  State<Logconfig> createState() => _LogconfigState();
}

class _LogconfigState extends State<Logconfig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Form(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Username", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "sifre", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: Container(
                height: 40,
                child: ElevatedButton(
                    onPressed: (() {}),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kayıt Ol',
                          style: TextStyle(fontSize: 26),
                        ),
                        Icon(Icons.app_registration)
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Text("Giriş yap"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => Signin()),
                    (route) => false);
              },
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Text("atla"),
              onTap: (() {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                    (route) => false);
              }),
            )
          ],
        ))
      ]),
      appBar: AppBar(
          
          title: Text(
            "Chat Location ",
            style: TextStyle(fontSize: 26),
          )),
    );
  }
}
