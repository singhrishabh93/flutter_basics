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
    {'name': 'Aarav Patel', 'mobno': '9999999999', 'unread': '2'},
    {'name': 'Aman Singh', 'mobno': '8888888888', 'unread': '3'},
    {'name': 'Abhinav Sharma', 'mobno': '7777777777', 'unread': '2'},
    {'name': 'Rahul Singh', 'mobno': '6666666666', 'unread': '5'},
    {'name': 'Elon Musk', 'mobno': '5555555555', 'unread': '8'},
    {'name': 'Satya Nadela', 'mobno': '4444444444', 'unread': '1'},
    {'name': 'Sunadar Pichai', 'mobno': '3333333333', 'unread': '10'},
    {'name': 'Goldy Brar', 'mobno': '2222222222', 'unread': '21'},
    {'name': 'Elvish Yadav', 'mobno': '1111111111', 'unread': '2'},
    {'name': 'Gaurav Taneja', 'mobno': '0000000000', 'unread': '5'},
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
              children: arrData
                  .map((value) => ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text(value['name'].toString()),
                        subtitle: Text(value['mobno'].toString()),
                        trailing: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.green,
                            child: Text(value['unread'].toString())),
                      ))
                  .toList()),
        ));
  }
}
