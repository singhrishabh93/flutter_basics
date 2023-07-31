import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.amberAccent,
      Colors.black,
      Colors.green,
      Colors.deepPurple,
      Colors.orange,
      Colors.blue,
      Colors.pinkAccent,
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.green,
        ),
        body: Padding( // Grid View cannot be used with Column Widget Doubt
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container(
                color: arrColors[0],
              ),
              Container(
                color: arrColors[1],
              ),
              Container(
                color: arrColors[2],
              ),
              Container(
                color: arrColors[3],
              ),
              Container(
                color: arrColors[4],
              ),
              Container(
                color: arrColors[5],
              ),
              Container(
                color: arrColors[6],
              ),
              Container(
                color: arrColors[7],
              ),
            ],       
          ),
        ));
  }
}
