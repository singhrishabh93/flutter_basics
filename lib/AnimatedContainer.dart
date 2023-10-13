import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple;
  double boxX = -1;
  double boxY = -1;

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
      boxColor = Colors.pink;
    });
    // print("hello");
  }

  void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
    // print("hello");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _moveBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple.shade200,
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment(boxX, boxY),
            child: Container(
              height: 100,
              width: 100,
              color: boxColor,
            ),
          ),
        ),
      ),
    );
  }
}
