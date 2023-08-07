import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Third Page",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
          )
        ],
      ),
    );
  }
}
