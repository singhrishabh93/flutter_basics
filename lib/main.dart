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
    var time = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              children: [
                Text(
                  "Current Time {$time.year}",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ));
  }
}
