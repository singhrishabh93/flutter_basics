import 'package:flutter/material.dart';

// import 'models/transaction.dart';
// import 'package:intl/intl.dart';

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

class MyHomePage extends StatelessWidget {
  
  // final List<Transaction> transactions = [];

  // String titleInput = "";
  // String amountInput = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Application"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(children: <Widget>[
          Card(
            color: Colors.blue,
            child: Container(
                width: double.infinity, child: Center(child: Text("Chart!"))),
            elevation: 5,
          ),
          
        ]));
  }
}
