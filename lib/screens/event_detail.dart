import 'package:flutter/material.dart';
import 'package:infoquest_2020/models/data.dart';


import '../widgets/app_scaffold.dart';

class EventDetail extends StatelessWidget {
  static const String routeName = '/event_detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget image) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: image,
    );
  }

  @override
  Widget build(BuildContext context) {
    final eventId = ModalRoute.of(context).settings.arguments as String;
    final selectedEvent = TASKS.firstWhere((event) => event.id == eventId);
    

    return AppScaffold(
      title: "Event Detail",
      appBar: AppBar(
        title: Text(selectedEvent.title),
      ),
      body: AppScaffold(
          title: selectedEvent.title,
          body: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Center(
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 4),borderRadius: BorderRadius.circular(8) ),
                  
                  height: 230,
                  width: 230,
                  child: Image.asset(selectedEvent.image,fit: BoxFit.contain,),
                ),

              )
            ],
          )),
    );
  }
}
