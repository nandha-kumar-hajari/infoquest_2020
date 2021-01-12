import 'package:flutter/material.dart';


import '../widgets/app_scaffold.dart';
import '../widgets/event_item.dart';
import '../models/data.dart';

class Events extends StatelessWidget {
  static const String routeName = '/events';
 

  @override
  Widget build(BuildContext context) {
   final routeArgs =  ModalRoute.of(context).settings.arguments as Map<String,String>;
   final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
   final categoryEvents = TASKS.where((event) {return event.categories.contains(categoryId);}).toList();
    return AppScaffold(
      title: "Technical Events",
      appBar: AppBar(title: Text(categoryTitle)),
      body:  ListView.builder(
        itemBuilder: (context, index) {
          return EventItem(
            id: categoryEvents[index].id,
            title: categoryEvents[index].title,  
            image: categoryEvents[index].image,
            prizes: categoryEvents[index].prize,
            description: categoryEvents[index].description,
            coordinators: categoryEvents[index].coordinators,
          );
        },
        itemCount: categoryEvents.length,
      )
    );
  }
}
