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
      theme: ThemeData(),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  var EmailText = TextEditingController();
  var Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: EmailText,
                      // enabled: false,
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.amberAccent,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                          //suffixText: "Username Exists",
                          // suffixIcon: IconButton(
                          //   icon: Icon(Icons.email),
                          //   onPressed: () {
                          //     print("Button pressed");
                          //   },
                          // ),
                          prefixIcon: Icon(Icons.home)),
                    ),
                    Container(
                      height: 30,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: Password,
                      obscureText: true,
                      obscuringCharacter: '#',
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.blueGrey))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String uEmail = EmailText.text.toString();
                          String uPassword = Password.text;
                          print("Email: $uEmail Password: $uPassword");
                        },
                        child: Text("Login"))
                  ],
                ))));
  }
}
