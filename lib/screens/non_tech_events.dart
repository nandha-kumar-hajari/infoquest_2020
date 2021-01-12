import 'package:flutter/material.dart';
import 'package:infoquest_2020/widgets/app_scaffold.dart';
import '../screens/nt_events_data.dart';

class NTevents extends StatelessWidget {
  static const String routeName = '/nt_events';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Non - Technical Events",
      appBar: AppBar(
        title: Text("Non Technical Events"),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: ntevents.length,
          itemBuilder: (c, i) {
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
                            ntevents[i].image,
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
                                    ntevents[i].title,
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
                                ntevents[i].description,
                                style: Theme.of(context).textTheme.subtitle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                ntevents[i].prize,
                                style: Theme.of(context).textTheme.caption,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                ntevents[i].coordinators,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        )
                      ],
                    )));
          }),
    );
  }
}
