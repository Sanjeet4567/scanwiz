import 'package:flutter/material.dart';

import 'package:scanwiz/home.dart';
import 'package:scanwiz/mobile1.dart';
import 'package:scanwiz/mobile2.dart';

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  int myindex = 0;
  static const List<Widget> widgetList = [
    MyHomePage(),
    Mobile1(),
    Mobile2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Container(
        child: widgetList[myindex],
      )),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.money), label: "Price \nComparison"),
            BottomNavigationBarItem(
                icon: Icon(Icons.store), label: "Rate \nStores"),
          ]),
    );
  }
}
