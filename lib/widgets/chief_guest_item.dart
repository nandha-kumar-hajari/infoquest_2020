import 'package:flutter/material.dart';

class ChiefGuestItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        elevation: 7.0,
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,),
          child: Stack(
            children: [
              // Non-Technical Events
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/Rajesh1.jpg',
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.height * 0.15,
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1.5,
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Shivraj Rajeshwaran',
                              style: Theme.of(context).textTheme.title
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Founder & CEO  |  Hopp App ",
                             style: Theme.of(context).textTheme.subtitle,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Hopp is a Hyderabad based startup that provides On demand driver services round the clock. Launched in 2017, Hopp achieved 900 registered drivers and more than 10,000 registered users in just a year !",
                              style: Theme.of(context).textTheme.subtitle,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
