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
          backgroundColor: Colors.orange,
        ),
        body: Container(
          color: Colors.blue.shade50,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  // borderRadius: BorderRadius.circular(21)),
                  // borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 5, color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 11, spreadRadius: 2, color: Colors.grey)
                  ],
                  shape: BoxShape.circle),
            ),
          ),
        ));
  }
}
