// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_basics_1/Intropage.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SplashPage extends StatefulWidget {
//   static const String KEYLOGIN = "login";
//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     super.initState();

//     void whereToGo() async {
//       var sharedPref = await SharedPreferences.getInstance();

//       var isLoggedIn = sharedPref.getBool(SplashPage.KEYLOGIN);

//       Timer(Duration(seconds: 5), () {

//         if(isLoggedIn! = null){
//           if(isLoggedIn){

//           }
//         }
//         Navigator.pushReplacement(context,
//             MaterialPageRoute(builder: (context) {
//           return IntroPage();
//         }));
//       });
//     }
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
