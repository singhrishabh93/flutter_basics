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
        body: Center(
          child: CircleAvatar(
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 25),
            ),
            backgroundImage: AssetImage('assets/images/boy.png'),
            backgroundColor: Colors.amber,
            //radius: 100,
            minRadius: 50,
            maxRadius: 100,
          ),
        ));
  }
}
