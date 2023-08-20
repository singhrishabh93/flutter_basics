// import 'package:flutter/material.dart';
// import 'package:flutter_basics_1/Thirdpage.dart';
// import 'package:flutter_basics_1/main.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class IntroPage extends StatefulWidget {
//   @override
//   State<IntroPage> createState() => _IntroPageState();
// }

// class _IntroPageState extends State<IntroPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Login Screen"),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Container(
//             width: 300,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.account_circle, size: 75, color: Colors.blue),
//                 SizedBox(
//                   height: 11,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                       label: Text("Email"),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(21))),
//                 ),
//                 SizedBox(
//                   height: 11,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                       label: Text("Password"),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(21))),
//                 ),
//                 ElevatedButton(
//                     onPressed: () async {
//                       //if successfully logged in
//                       var sharedPref = await SharedPreferences.getInstance();
//                       sharedPref.setBool(SplashPageState.KEYLOGIN, true);
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) {
//                         return ThirdPage();
//                       }));
//                     },
//                     child: Text("Login"))
//               ],
//             ),
//           ),
//         ));
//   }
// }
