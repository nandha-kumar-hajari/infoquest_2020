import 'package:flutter/material.dart';
// import 'package:infoquest/screens/event_detail.dart';


class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  CategoryItem(this.id, this.title, this.image);

  // void selectcategory(BuildContext context) {
  //   Navigator.of(context).pushNamed(EventDetail.routeName,arguments: id);
  // }
  
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.black,
        elevation: 15.0,
            child: Container(
          padding: EdgeInsets.all(10.0),
          height: MediaQuery.of(context).size.height * 0.11,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: const Color(0xff0e0e0e)),
          child: Stack(
            children: [
              // Non-Technical Events
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      image,
                      height: 35,
                      width: 35,
                    ),
               VerticalDivider(color: Colors.white,thickness: 1.5,width: 30,),
                   SizedBox(width: 60 ,child: Text(title,style: TextStyle(color: Colors.white),),)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class ExclusiveItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  ExclusiveItem(this.id, this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 7.0,
          child: Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height *0.11,
        decoration: BoxDecoration(  
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: const Color(0xff0e0e0e)),
        child: Stack(
          children: [
            // Non-Technical Events
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    image,
                    height: 40,
                    width: 40,
                  ),
             VerticalDivider(color: Colors.white,thickness: 1.5,width: 30,),
                 SizedBox(child: Text(title,style: TextStyle(color: Colors.white),),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

