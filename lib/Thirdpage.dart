import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {

  ThirdPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Third Page",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
