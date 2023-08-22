import 'package:flutter/material.dart';
import 'package:flutter_basics_1/widgets/user_transaction.dart';

// import 'models/transaction.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFirstApp',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // final List<Transaction> transactions = [];

  // String titleInput = "";
  // String amountInput = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Application"),
        actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: () {})],
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Card(
            color: Colors.blue,
            elevation: 5,
            child: SizedBox(
                width: double.infinity, child: Center(child: Text("Chart!"))),
          ),
          UserTransaction()
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
