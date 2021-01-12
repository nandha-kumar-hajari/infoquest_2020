import 'package:flutter/material.dart';
import '../screens/event_detail.dart';

class EventItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String description;
  final String prizes;
  final String coordinators;


  EventItem({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.description,
    @required this.prizes,
    @required this.coordinators,
  });
  void selectEvent(BuildContext context) {

    Navigator.of(context).pushNamed(EventDetail.routeName,arguments: id);
  }

@override
  Widget build(BuildContext context) {
    return Card(
            elevation: 0.0,
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      child: Image.network(
                        image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                title,
                                style: Theme.of(context).textTheme.title,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              // AnimatedContainer(
                              //   duration: Duration(seconds: 1),
                              //   width: MediaQuery.of(context).size.width * 0.2,
                              //   height: 5,
                              //   color: Tools.multiColors[Random().nextInt(4)],
                              // ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            description,
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                         Text(
                              prizes,
                              style: Theme.of(context).textTheme.caption,
                            ),
                                                       
                          
                           SizedBox(
                            height: 10,
                          ),
                        Text(
                              coordinators,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          
                        ],
                      ),
                    )
                  ],
                )));

  }
}
