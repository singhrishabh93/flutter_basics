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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  callBack() {
    print("Callback Function");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.add_business_rounded,
              //   size: 100,
              //   color: Colors.green,
              // ),
              Icon(
                Icons.play_circle,
                size: 100,
                color: Colors.green,
              ),
              SizedBox(
                width: 11,
              ),
              FaIcon(
                FontAwesomeIcons.amazon,
                size: 100,
              )
            ],
          ),
        ));
  }
}
