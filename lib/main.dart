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
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.amberAccent,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                width: 50,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                width: 50,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                width: 50,
                color: Colors.purple,
              ),
            )
          ],
        ));
  }
}
