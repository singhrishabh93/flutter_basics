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
    // var names = ["Ramesh", "Suresh", "Dinesh","Mahesh","Rakesh","Rajesh"];

    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text("One",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold));
          },
          itemCount: 5,
        ));
  }
}
