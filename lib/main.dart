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
        body: Wrap(
          children: [
            SizedBox.square(
              dimension: 100,
              //sizedbox
              // width: 200,
              // height: 50,
              child: ElevatedButton(onPressed: () {}, child: Text("Button")),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox.square(
              dimension: 100,
              //sizedbox
              // width: 200,
              // height: 50,
              child: ElevatedButton(onPressed: () {}, child: Text("Button")),
            ),
            SizedBox(
              width: 50,
            ),
            SizedBox.square(
              dimension: 100,
              //sizedbox
              // width: 200,
              // height: 50,
              child: ElevatedButton(onPressed: () {}, child: Text("Button")),
            )
          ],
        ));
  }
}
