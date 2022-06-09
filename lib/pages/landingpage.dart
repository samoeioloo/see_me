// home page
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  double _margin = 0;
  double _width = 200;
  double _opacity = 1;
  Color _colour = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Material widget = piece of paper
      appBar: AppBar(),
      body: AnimatedContainer(
        child: Container(
          width: 600.0,
          height: 600.0,
          decoration:
              new BoxDecoration(color: Colors.green, shape: BoxShape.circle),
        ),
        //margin: EdgeInsets.all(_margin),
        alignment: Alignment.center,

        duration: Duration(seconds: 1),
      ),
    );
  }
}
