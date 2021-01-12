import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';
import '../screens/our_team_data.dart';

class Page3 extends StatelessWidget {
  static const String routeName = '/page3';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Our Team",
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: team.length,
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
                          child: Image.asset(
                            team[i].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                       
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                                               
                                    team[i].title,
                                    style: Theme.of(context).textTheme.title,
                                    textAlign: TextAlign.justify,
                                  ),
                                  Divider(color: Colors.black,height: 5,),

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
                                team[i].description,
                                style: Theme.of(context).textTheme.subtitle,
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
