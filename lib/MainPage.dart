import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:baseapp/Home.dart';
import 'package:baseapp/vigyaan.dart';
import 'package:baseapp/aavartan.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex=0;
  String _appbartitle="Home";
  Color _appbarcolor=Colors.black;

  static  List<Widget> _widgets=<Widget>[
    Home(),
    VigyaanPage(),
    AavartanPage(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.science_outlined),
            label: 'Vigyaan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch),
            label: 'Aavartan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        onTap: _onItemTap,
      ),
      body: SafeArea(child: _widgets[_selectedIndex]),

    );
  }
}

