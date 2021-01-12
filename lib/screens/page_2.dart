import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/chief_guest_item.dart';

class Page2 extends StatelessWidget {
  static const String routeName = '/page2';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Chief Guests",
      body:Center(
        child: Column(
          children: <Widget>[
              Center(child: ChiefGuestItem()),
          ],
        ),
      ),
    );
  }
}
