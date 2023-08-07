import 'package:flutter/material.dart';
import 'package:flutter_basics_1/main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyHomePage();
                  }));
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
