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
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var arrData = [
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    // {
    //   'name' : 'Aarav Patel',
    //   'mobno' : '9999999999',
    //   'unread' : '2'
    // },
    "Riya Sharma",
    "Arjun Kumar",
    "Aisha Gupta",
    "Rohan Singh",
    "Zara Khan",
    "Virat Mehta",
    "Aanya Joshi",
    "Rajan Patel",
    "Anaya Kapoor",
    "Aditya Shah",
    "Kavya Desai",
    "Arnav Choudhury",
    "Esha Yadav",
    "Advait Iyer",
    "Diya Sharma",
    "Naveen Verma",
    "Aashi Reddy",
    "Kabir Agrawal",
    "Tanvi Malhotra",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mapping Lists"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Container(
          child: ListView(
              children: arrData.map((value) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  color: Colors.blue.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(value)),
                ),
              ),
            );
          }).toList()),
        ));
  }
}
