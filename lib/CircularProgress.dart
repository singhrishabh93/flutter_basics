import 'package:flutter/material.dart';

class CricularProgressIndicatorWidget extends StatefulWidget {
  const CricularProgressIndicatorWidget({super.key});

  @override
  State<CricularProgressIndicatorWidget> createState() =>
      _CricularProgressIndicatorWidgetState();
}

class _CricularProgressIndicatorWidgetState
    extends State<CricularProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Progress Indicator"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: LinearProgressIndicator(
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
