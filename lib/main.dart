// 39
import 'package:flutter/material.dart';
import 'package:flutter_basics_1/ui_helper/util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyFirstApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            displayMedium:
                TextStyle(fontSize: 11, fontWeight: FontWeight.normal),
          )),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Hello Rishabh",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: Colors.deepPurpleAccent),
              ),
              Text(
                "Hello Rishabh",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                "Hello Rishabh",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.deepOrangeAccent),
              ),
              Text(
                "Hello Rishabh",
                style: myTextStyle11(),
              ),
            ],
          ),
        ));
  }
}
