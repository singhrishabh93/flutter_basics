// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_basics_1/Intropage.dart';

// class SplashPage extends StatefulWidget {
//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     super.initState();

//     Timer(Duration(seconds: 5), () {
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
//         return IntroPage();
//       }));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.blue,
//         child: Center(
//             child: Text(
//           "Classico",
//           style: TextStyle(
//               fontSize: 34, fontWeight: FontWeight.w700, color: Colors.white),
//         )),
//       ),
//     );
//   }
// }
