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
        body: Column(
          children: [
            Text("A", style: TextStyle(fontSize: 25),),
            Text("B", style: TextStyle(fontSize: 25),),
            Text("C", style: TextStyle(fontSize: 25),),
            Text("D", style: TextStyle(fontSize: 25),),
            Text("E", style: TextStyle(fontSize: 25),),
          ],
        )
        
        );
  }
}
