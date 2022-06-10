// home page
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  double _margin = 0;
  double _width = 200;
  //double _opacity = 1;
  Color _colour = Colors.teal;
  double _opacity = 1.0;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 300), () {
      _opacity = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Material widget = piece of paper
      appBar: AppBar(),
      body: AnimatedOpacity(
        child: Container(
          width: 600.0,
          height: 600.0,
          decoration: new BoxDecoration(
              color: Color.fromRGBO(76, 175, 80, 1), shape: BoxShape.circle),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "Hi",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(fontSize: 50),
                ))
              ]),
        ),
        //margin: EdgeInsets.all(_margin),
        //alignment: Alignment.center,
        duration: Duration(seconds: 3),
        opacity: _opacity,
      ),
    );
  }
}
