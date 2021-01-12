import 'package:flutter/material.dart';
import 'package:infoquest_2020/screens/ex_events.dart';


import 'package:infoquest_2020/screens/non_tech_events.dart';
// import 'package:infoquest_2020/screens/nt_events_data.dart';
// import 'package:infoquest_2020/widgets/branch_item.dart';
import 'package:infoquest_2020/widgets/branches_grid.dart';
import '../widgets/category_item.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
   static const String _headingText = "Welcome to InfoQuest";
  static const String _descText =
      "InfoQuest is a National Level Technical Symposium conducted at JBIET. Having established itself in the itinerary of Technical Festivals,InfoQuest aims at bringing together and fostering a plethora of engineering talent and technical aspirants from across the country.⁠⁠⁠⁠";
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 6),
                      borderRadius: BorderRadius.circular(12)),
                  // padding: const EdgeInsets.all(0) ,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: imageCarousel,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  _headingText,
                  style: Theme.of(context).textTheme.headline,
                  textAlign: TextAlign.center,
                ),
                // SizedBox(
                //   height:20,
                // ),
                Text(
                  _descText,
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                ),
                //  Divider(
                //   thickness: 1.0,
                //   color: Colors.black26,
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.01,
                // ),
                 SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Hero(
                    tag: 'Tag1',
                    child: Material(
                      child: InkWell(
                        onTap: () => Navigator.of(context)
                            .pushNamed(BranchesList.routeName,arguments: 'id1'),
                        child: CategoryItem('c1', 'Technical Events',
                            'assets/icons/hackathon.png'),
                      ),
                    ),
                  ),
                  Hero(
                    tag: 'Tag2',
                    child: Material(
                      child: InkWell(
                        onTap: () => Navigator.of(context)
                            .pushNamed(NTevents.routeName,),
                        child: CategoryItem('c2', 'Non-Technical Events',
                            'assets/icons/target.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1.0,
                color: Colors.black26,
              ),
              Hero(
                tag: 'Tag3',
                            child: Material(
                                                        child: InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(EXevents.routeName),
                    child: CategoryItem(
                        'c3', 'Exclusive Events', 'assets/icons/medal.png')),
                            ),
              )
                  ],
                ),
               
               
            
            
         
      ),
    );
  }
}