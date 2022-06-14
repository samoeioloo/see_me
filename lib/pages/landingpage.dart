// home page
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter_gradients/flutter_gradients.dart';

import 'home.dart';

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
        // ignore: sort_child_properties_last
        child: FadeIn(
          child: Container(
            width: 600.0,
            height: 600.0,
            decoration: BoxDecoration(
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
                  ),
                  Padding(
                      padding: const EdgeInsets.all(35),
                      child: FadeIn(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              onPrimary: Colors.black,
                              primary: Colors.green,
                              shadowColor: Colors.green,
                              elevation: 30,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Text('Start here',
                              style: GoogleFonts.roboto(color: Colors.white)),
                          onPressed: () {
                            // switch to new route
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                        ),
                        duration: Duration(seconds: 10),
                        curve: Curves.easeIn,
                      ))
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

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // close 2nd route and return to 1st
            // pop() removes current Route from stack of routes managed by the Navigator
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
