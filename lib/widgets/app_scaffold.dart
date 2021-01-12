import 'package:flutter/material.dart';



class AppScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;
  final Widget drawer;
  final Widget bottomNavigationBar;
  final Widget appBar;

  const AppScaffold({
    Key key,
    @required this.title,
    @required this.body,
    this.tabBar,
    this.drawer,
    this.bottomNavigationBar,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      color: Colors.white,
      
        child: Scaffold(
        
          drawer: drawer,
          appBar:appBar,
          body: body,
        bottomNavigationBar: bottomNavigationBar,
        
        
      ),
    );
  }
}
