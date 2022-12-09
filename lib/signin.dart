import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_14/main.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "username"),
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
                    border: OutlineInputBorder(), labelText: "sifre"),
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
                      children: [
                        Text(
                          'Giriş Yap',
                          style: TextStyle(fontSize: 26),
                        ),
                        Icon(Icons.login)
                      ],
                    )),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(onTap: (() {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => loggedon()), (route) => false);
            }),child: Text("Hesabınız yokmu?"),)
          ],
        ))
      ]),
      appBar: AppBar(
          title: Text(
        "Chat Location",
        style: TextStyle(fontSize: 26),
      )),
    );
  }
}
