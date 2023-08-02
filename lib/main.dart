import 'package:flutter/material.dart';
import 'package:flutter_basics_1/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';

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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  callBack() {
    print("Callback Function");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 160,
              child: RoundedButton(
                  btnName: "Rounded Button",
                  icon: Icon(Icons.lock),
                  callBack: () {
                    print("Printed Rounded Button");
                  }),
            ),
            Container(
              height: 11,
            ),
            Container(
              height: 50,
              width: 160,
              child: RoundedButton(
                  btnName: "Press Button",
                  bgColor: Colors.green,
                  // icon: Icon(Icons.lock),
                  callBack: () {
                    print("Printed Rounded Button");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
