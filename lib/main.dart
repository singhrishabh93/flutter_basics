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
    var arrNames = [
      "Ramesh",
      "Suresh",
      "Dinesh",
      "Mahesh",
      "Rakesh",
      "Rajesh",
      "Dinesh",
      "Mahesh",
      "Rakesh",
      "Rajesh"
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.orange,
        ),
        body: ListView.separated(
          // reverse: true,
          itemBuilder: (context, index) {
            return Text(arrNames[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold));
          },
          itemCount: arrNames.length,
          // scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return Divider(
              height: 50,
              thickness: 4,
            );
          },
        ));
  }
}
