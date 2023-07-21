// 39
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyFirstApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print("Single Pressed");
            },
            onLongPress: () {
              print("Long Pressed");
            },
            onDoubleTap: () {
              print("Double Tap");
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amberAccent,
              child: Center(
                  child: InkWell(
                onTap: () {
                  print("Clicked on text");
                },
                child: Text(
                  "Click here",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              )),
            ),
          ),
        ));
  }
}
