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
    var arrNames = [
      "Ramesh",
      "Suresh",
      "Dinesh",
      "Mahesh",
      "Rakesh",
      "Rajesh",
      "Dinesh",
      "Mahesh",
      "Rakesh",
      "Rajesh"
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.orange,
        ),
        body: ListView.separated(
          // reverse: true,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}'),
              title: Text(arrNames[index]),
              subtitle: Text('Number'),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrNames.length,
          // scrollDirection: Axis.horizontal,
          // flutter test
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 4,
            );
          },
        ));
  }
}
