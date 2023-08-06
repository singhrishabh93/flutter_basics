import 'package:flutter/material.dart';
import 'package:flutter_basics_1/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();

  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Basic Claculation"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.green.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                var no1 =
                                    int.parse(no1controller.text.toString());
                                var no2 =
                                    int.parse(no2controller.text.toString());
                                var sum = no1 + no2;
                                result = "The sum of $no1 and $no2 is $sum";
                              });
                            },
                            child: Text("Add")),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                var no1 =
                                    int.parse(no1controller.text.toString());
                                var no2 =
                                    int.parse(no2controller.text.toString());
                                var sub = no1 - no2;
                                result =
                                    "The subtraction of $no1 and $no2 is $sub";
                              });
                            },
                            child: Text("Subtract")),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                var no1 =
                                    int.parse(no1controller.text.toString());
                                var no2 =
                                    int.parse(no2controller.text.toString());
                                var mul = no1 * no2;
                                result =
                                    "The Multiplication of $no1 and $no2 is ${mul.toStringAsFixed(2)}";
                              });
                            },
                            child: Text("Multiply")),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                var no1 =
                                    int.parse(no1controller.text.toString());
                                var no2 =
                                    int.parse(no2controller.text.toString());
                                var div = no1 / no2;
                                result =
                                    "The Division of $no1 and $no2 is ${div.toStringAsFixed(2)}";
                              });
                            },
                            child: Text("Divide")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
