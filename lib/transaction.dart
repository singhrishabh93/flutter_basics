import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction(
    {
      required this.id,
      required this.amount,
      required this.title,
      required this.date
    }
  );
}
