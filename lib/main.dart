// 39
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyFirstApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
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
        ),
        body: Container(
          color: Colors.amberAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                "A",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "B",
                style: TextStyle(fontSize: 25),
              ),
              Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        print("Button Pressed");
                      }, child: Text("Click")),
                      ElevatedButton(onPressed: (){
                        print("Button Pressed");
                      }, child: Text("Click"))
                    ],
                  ),
              Text(
                "C",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "D",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "E",
                style: TextStyle(fontSize: 25),
              ),
                ],
              ),
              Text(
                "A",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "B",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "C",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "D",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "E",
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Button Pressed");
                  },
                  child: Text("Click Me"))
            ],
          ),
        ));
  }
}
