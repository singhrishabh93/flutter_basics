import 'package:flutter/material.dart';
import 'package:flutter_basics_1/Intropage.dart';
import 'package:flutter_basics_1/SplashPage.dart';
import 'package:flutter_basics_1/Thirdpage.dart';
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
  var myOpac = 1.0;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Foo Animations"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: myOpac,
                duration: Duration(seconds: 1),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                ),
                curve: Curves.elasticInOut,
              ),
              ElevatedButton(
                  onPressed: () {
                    myOpac = 0.0;
                    setState(() {
                      if (isVisible) {
                        myOpac = 0.0; //invisible
                        isVisible = false;
                      } else {
                        myOpac = 1.0; //visible
                        isVisible = true;
                      }
                    });
                  },
                  child: Text("Close"))
            ],
          ),
        ));
  }
}
