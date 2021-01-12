import 'package:flutter/material.dart';
// import 'package:infoquest_2020/models/data.dart';
// import '../screens/event_detail.dart';
import '../screens/events.dart';

class BranchItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  BranchItem(this.id, this.title, this.image);

  
   void selectBranch(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      Events.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectBranch(context),
          child: Card(
        color: Colors.black,
        elevation: 5.0,
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: 100,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: const Color(0xff0e0e0e)),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            leading: Image.asset(image),
            trailing: Icon(Icons.chevron_right , color: Colors.white,),
          ),
          // child: Stack(
          //   children: [
          //     // Non-Technical Events
          //     Container(
          //       child: Row(
          //        mainAxisAlignment: MainAxisAlignment.start,
          //         children: <Widget>[
          //           Image.asset(
          //             image,
          //             height: 60,
          //             width: 60,
          //           ),
          //      VerticalDivider(color: Colors.white,thickness: 1.5,width: 30,),
          //          SizedBox(height: 20,child: Text(title,textAlign: TextAlign.left,style: TextStyle(color: Colors.white),),)
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

// class ExclusiveItem extends StatelessWidget {
//   final String id;
//   final String title;
//   final String image;

//   ExclusiveItem(this.id, this.title, this.image);
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.black,
//       elevation: 7.0,
//           child: Container(
//         padding: EdgeInsets.all(10.0),
//         width: 250,
//         height: 80,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(10)),
//             color: const Color(0xff0e0e0e)),
//         child: Stack(
//           children: [
//             // Non-Technical Events
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Image.asset(
//                     image,
//                     height: 40,
//                     width: 40,
//                   ),
//              VerticalDivider(color: Colors.white,thickness: 1.5,width: 30,),
//                  SizedBox(child: Text(title,style: TextStyle(color: Colors.white),),)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
