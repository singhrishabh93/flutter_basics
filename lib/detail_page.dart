import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget { //hero animation page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: Container(
        child: Hero(
            tag: 'background', child: Image.asset("assets/images/boy.png")),
      ),
    );
  }
}
