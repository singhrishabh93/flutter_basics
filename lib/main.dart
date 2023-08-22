import 'package:flutter/material.dart';
import '../widgets/new_transactions.dart';
import '../widgets/transaction_list.dart';
import './models/transaction.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: "t1",
      title: "New Shoes",
      amount: 99.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "New Socks",
      amount: 29.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "Belt",
      amount: 59.49,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  // final List<Transaction> transactions = [];
  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(child: NewTransaction(_addNewTransaction))
        ;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text("Flutter Application"),
        actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: () {})],
        centerTitle: true,
        backgroundColor: Colors.blue,
=======
        title: Text("Expense Tracker"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewTransaction(context),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.black,
>>>>>>> 8d29286 (Showing a Modal Bottom sheet)
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Card(
            color: Colors.blue,
            elevation: 5,
            child: SizedBox(
                width: double.infinity, child: Center(child: Text("Chart!"))),
          ),
<<<<<<< HEAD
          UserTransaction()
=======
          TransactionList(_userTransaction),
>>>>>>> 8d29286 (Showing a Modal Bottom sheet)
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
<<<<<<< HEAD
        onPressed: () {},
=======
        onPressed: () => _startAddNewTransaction(context),
>>>>>>> 8d29286 (Showing a Modal Bottom sheet)
        child: Icon(Icons.add),
      ),
    );
  }
}
