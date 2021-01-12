import 'package:flutter/material.dart';
import 'package:infoquest_2020/screens/event_detail.dart';
import 'package:infoquest_2020/screens/events.dart';
import 'package:infoquest_2020/screens/ex_events.dart';
//import 'package:infoquest_2020/screens/non_tech_event_detail.dart';
import 'package:infoquest_2020/screens/non_tech_events.dart';


import './screens/homepage.dart';

import './widgets/branches_grid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         brightness: Brightness.light,
        primaryColor: Colors.white, //Changing this will change the color of the TabBar
        primarySwatch: Colors.grey,
        cardColor: Colors.white,
        canvasColor: Colors.grey[50],
        colorScheme: ColorScheme.light(),
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.light(),
        ),
        fontFamily: 'GoogleSans',
        appBarTheme: AppBarTheme( elevation: 0.0 , ),
      ),
      home: HomePage(),
      routes: {
        BranchesList.routeName : (context) => BranchesList(),
        EventDetail.routeName : (context) => EventDetail(),
        Events.routeName : (context) => Events(),
      //  NtEventsList.routeName : (context) => NtEventsList(),
        EXevents.routeName : (context) => EXevents(),
        NTevents.routeName : (context) => NTevents(),
      },
    );
  }
}