// home page
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter_gradients/flutter_gradients.dart';

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
        child: FadeIn(
          child: Container(
            width: 600.0,
            height: 600.0,
            decoration: new BoxDecoration(
                gradient: FlutterGradients.paloAlto(), shape: BoxShape.circle),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeIn(
                    child: Center(
                      child: Text(
                        "Hi",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontSize: 50, color: Colors.white),
                      ),
                    ),
                    duration: Duration(seconds: 5),
                    curve: Curves.easeIn,
                  )
                ]),
          ),
          duration: Duration(seconds: 3),
        ),
        //margin: EdgeInsets.all(_margin),
        //alignment: Alignment.center,
        duration: Duration(seconds: 3),
        opacity: _opacity,
      ),
    );
  }
}
