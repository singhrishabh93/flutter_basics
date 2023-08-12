import 'package:flutter/material.dart';

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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bgColor = Colors.yellow.shade400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Body Mass Index"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: RadialGradient(
                  colors: [Color(0xffa18cd1), Color(0xfffbc2eb)],
                  center: Alignment.topLeft)),
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      "Enter the following details",
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                  TextField(
                    controller: wtController,
                    decoration: InputDecoration(
                        label: Text("Enter your Weight in KGs"),
                        prefixIcon: Icon(Icons.line_weight)),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  TextField(
                    controller: ftController,
                    decoration: InputDecoration(
                        label: Text("Enter your Height in feets"),
                        prefixIcon: Icon(Icons.height)),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  TextField(
                    controller: inController,
                    decoration: InputDecoration(
                        label: Text("Enter your Height in Inches"),
                        prefixIcon: Icon(Icons.height)),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var weight = wtController.text.toString();
                        var feet = ftController.text.toString();
                        var inch = inController.text.toString();

                        if (weight != "" && feet != "" && inch != "") {
                          //BMI

                          var iWeight = int.parse(weight);
                          var ifeet = int.parse(feet);
                          var iInch = int.parse(inch);

                          var tInch = (ifeet * 12) + iInch;
                          var tCm = tInch * 2.54;
                          var tM = tCm / 100;

                          var bmi = iWeight / (tM * tM);
                          var msg = "";

                          if (bmi > 25) {
                            msg = "You'are OverWeight!";
                            bgColor = Colors.orange.shade300;
                          } else if (bmi < 18) {
                            msg = "You'are UnderWeight!";
                            bgColor = Colors.red.shade300;
                          } else {
                            msg = "You'are Healthy!";
                            bgColor = Colors.green;
                          }

                          result =
                              "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";

                          setState(() {});
                        } else {
                          setState(() {
                            result = "Please fill all the required blanks!";
                          });
                        }
                      },
                      child: Text("Calculate")),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    result,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
