import 'package:flutter/material.dart';
import './pages/landingpage.dart';

void main() {
  // ignore: unnecessary_new
  runApp(MaterialApp(
      home: LandingPage(),
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0))));
}
