import 'package:flutter/material.dart';
import 'package:flutter_basics_1/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();

  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Basic Claculation"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 200, maxWidth: 200, minHeight: 50, minWidth: 50),
          child: Text(
            "Hello World! Hello World! Hello World! Hello World!Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!Hello World!",
            style: TextStyle(fontSize: 25, overflow: TextOverflow.fade),
          ),
        ));
  }
}
