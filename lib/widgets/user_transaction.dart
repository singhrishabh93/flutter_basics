import 'package:flutter/material.dart';
import '../widgets/new_transactions.dart';
import '../widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget{
  @override
   _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}