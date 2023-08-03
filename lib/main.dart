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
        body: Wrap(
          // direction: Axis.vertical,
          children: [
            Container(
              height: 100,
              width: 70,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.pink,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.grey,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.brown,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.lightGreen,
            ),
            Container(
              height: 100,
              width: 70,
              color: Colors.red,
            ),
          ],
        ));
  }
}
