import 'package:flutter/material.dart';
import 'package:flutter_application_14/reg.dart';

void main() {
  runApp(loggedon());
}

class loggedon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Logconfig(),
    );
  }
}
