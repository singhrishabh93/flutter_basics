// 39
import 'package:flutter/material.dart';
import 'package:flutter_basics_1/ui_helper/util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyFirstApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
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
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Card(
              shadowColor: Colors.blue,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hello Rishabh",
                  style: TextStyle(fontSize: 25),
                ),
              )),
        ));
  }
}
