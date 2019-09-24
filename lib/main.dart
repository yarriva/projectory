import 'package:flutter/material.dart';
import 'login.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projectory',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: LoginPage(),
      //home: HomePage('yarriva@gmail.com'),
    );
  }
}
