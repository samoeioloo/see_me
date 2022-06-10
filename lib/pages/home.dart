// home page
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  double _margin = 0;
  double _width = 200;
  double _opacity = 1;
  Color _colour = Colors.teal;
  @override
  Widget build(BuildContext context) {
    // create visuals here
    // var mainAxisAlignment;
    return Scaffold(
        // Material widget = piece of paper
        appBar: AppBar(
          title: const Text('See Me'),
        ),

        //body: Center(child: _widgetOptions.elementAt(_selectedIndex),
        // ),
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: const Icon(Icons.book),
              label: 'Entry',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: 'You',
              backgroundColor: Colors.teal)
        ]
                // currentIndex: _selectedIndex,
                // selectedItemColor: Colors.teal,
                // onTap: _onItemTapped,
                ));
  }
}
