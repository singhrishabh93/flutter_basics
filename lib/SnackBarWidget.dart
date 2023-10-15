import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key});

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: Text("SnackBar"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
              onPressed: () {
                final message = SnackBar(
                  content: Text('This is a messgage!'),
                  padding: EdgeInsets.all(10),
                  shape: StadiumBorder(),
                  duration: Duration(seconds: 3),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(message);
              },
              child: Text("Click Here"));
        }),
      ),
    );
  }
}
