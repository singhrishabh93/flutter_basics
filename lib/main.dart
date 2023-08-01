import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  callBack() {
    print("Callback Function");
  }

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.amberAccent,
      Colors.black,
      Colors.green,
      Colors.deepPurple,
      Colors.orange,
      Colors.blue,
      Colors.pinkAccent,
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.green,
        ),
        body: Container(
            child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amberAccent,
                child: ListView.builder(
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            width: 100,
                            child: CircleAvatar(
                              backgroundColor: Colors.white70,
                            )),
                      )),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                  color: Colors.orange,
                  child: ListView.builder(
                      itemBuilder: ((context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white70,
                              ),
                              title: Text("Name"),
                              subtitle: Text("Mobile No"),
                              trailing: Icon(Icons.delete),
                            ),
                          )))),
            ),

            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  child: ListView.builder(
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.blueGrey),
                          ),
                        )),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                )),

            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 11,
                      mainAxisSpacing: 11,
                      children: [
                        Container(
                          color: arrColors[0],
                        ),
                        Container(
                          color: arrColors[0],
                        ),
                        Container(
                          color: arrColors[0],
                        ),
                        Container(
                          color: arrColors[0],
                        ),
                      ],
                    ),
                  ),
                )),
            // Expanded(flex: 2, child: Container(color: Colors.pink)),
          ],
        )));
  }
}
