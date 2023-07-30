import 'package:flutter/material.dart';

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
                  'Current Time ${time.day}',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Current Time"))
              ],
            ),
          ),
        ));
  }
}
