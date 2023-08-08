import 'package:flutter/material.dart';
import 'package:flutter_basics_1/Intropage.dart';
import 'package:flutter_basics_1/SplashPage.dart';
import 'package:flutter_basics_1/Thirdpage.dart';
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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0;

  var _height = 100.0;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Foo Animations"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: _width,
                height: _height,
                color: Colors.blue,
                duration: Duration(seconds: 2),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width:
                        100.0;
                        _height:
                        200.0;
                        flag = false;
                      } else {
                        _width:
                        200.0;
                        _height:
                        100.0;
                        flag = true;
                      }
                    });
                  },
                  child: Text("Animate"))
            ],
          ),
        ));
  }
}
    
  
  


// class MyHomeState extends State<MyHomePage> {
//   var _width = 200.0;
//   var _height = 100.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Foo Animations"),
//           centerTitle: true,
//           backgroundColor: Colors.green,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               AnimatedContainer(
//                 width: _width,
//                 height: _height,
//                 color: Colors.blue,
//                 duration: Duration(seconds: 2),
//               ),
//               ElevatedButton(
//                   onPressed: () {
                    
//                     setState(() {
//                       _width:
//                       100.0;
//                       _height:
//                       200.0;
//                       });
//                   },
//                   child: Text("Animate"))
//             ],
//           ),
//         ));
//   }
// }
