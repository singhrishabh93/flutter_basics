import 'package:flutter/material.dart';
import 'package:flutter_basics_1/Intropage.dart';
import 'package:flutter_basics_1/SplashPage.dart';
import 'package:flutter_basics_1/Thirdpage.dart';
import 'package:flutter_basics_1/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFirstApp',
      theme: ThemeData(),
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  static const String KEYLOGIN = "login";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text("AH")),
            label: const Text("Number 1")),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text("AH")),
            label: const Text("Number 1")),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text("AH")),
            label: const Text("Number 1")),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text("AH")),
            label: const Text("Number 1"))
        ],
      )
    );
  }
  
  }