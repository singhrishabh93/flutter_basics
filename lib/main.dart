import 'package:flutter/material.dart';
import 'package:flutter_basics_1/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  callBack() {
    print("Callback Function");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 21, color: Colors.grey),
                  children: [
                TextSpan(
                  text: "Hello",
                ),
                TextSpan(
                    text: "World!",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                TextSpan(
                  text: " Welcome to ",
                ),
                TextSpan(
                    text: "Flutter",
                    style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'FontMain')),
              ])),
        ));
  }
}
