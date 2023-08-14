import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  var nameController = TextEditingController();

  static const String KEYNAME = 'name';

  var nameValue = "No Value Saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shared Preferences"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Container(
          child: Center(
            child: SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: Text("Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21)),
                      hintText: 'Enter a term',
                      focusColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        var name = nameController.text.toString();

                        var prefs = await SharedPreferences.getInstance();

                        prefs.setString(KEYNAME, name);

                        // setState(() {

                        // });
                      },
                      child: Text("Save")),
                  SizedBox(
                    height: 11,
                  ),
                  Text(nameValue)
                ],
              ),
            ),
          ),
        ));
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    nameValue = getName ?? "No Value Saved" ;

    setState(() {
      
    });
  }
}
