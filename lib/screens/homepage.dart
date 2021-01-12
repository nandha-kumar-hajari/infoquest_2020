import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

import '../screens/page_2.dart';
import '../screens/page_3.dart';

import '../widgets/app_scaffold.dart';
import '../widgets/drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String,Object>> _pages = [
    {'page': HomeScreen(), 'title' : 'InfoQuest'},
    {'page': Page2(), 'title' : 'Chief Guest'},
    {'page': Page3(), 'title' : 'Our Team'},
    
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "InfoQuest",
       appBar:  AppBar(
            title: Text(_pages[_selectedPageIndex]['title']),
            // bottom: tabBar != null ? tabBar : null,
            actions: <Widget>[
              Image.asset(
               'assets/icons/infoquest.png',
               height: 40,
               width: 40,
                    // Share.share("Share the InfoQuest App With Your Friends"),
              ),
            ],
            centerTitle: true,
          ),
      body: _pages[_selectedPageIndex]['page'],
      drawer: drawer,
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        color: Colors.black,
        backgroundColor: Colors.transparent,
        index: _selectedPageIndex,
        // animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeInOutSine,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.group,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.group_work,
            size: 30,
            color: Colors.white,
          ),
        ],

        onTap: (index) {
          //Handle button tap
          _selectPage(index);
        },
      ),
     
    );
  }
}
