import 'package:flutter/material.dart';



Widget drawer = Drawer(
        child: new ListView(
          children: <Widget>[
//            header
            new UserAccountsDrawerHeader(
                accountName: Text('InfoQuest',style: TextStyle(color:Colors.white),),
                accountEmail: Text('A National Level Technical Symposium ',style: TextStyle(color: Colors.white),),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset("assets/icons/infoquest.png"),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.black
            ),
            ),

//            body

           ListTile(
              title: Text('infoquestjbiet.in'),
              leading: Image.asset('assets/icons/globe.png'),
            ),
          

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('@infoquest_jbiet'),
                leading: Image.asset("assets/icons/instagram.png"),
              ),
            ),

           
             ListTile(
                title: Text('@infoquest.jbiet'),
                leading: Image.asset('assets/icons/facebook.png'),
              ),
           

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('''
Developer:
Nandhu Hazari
                '''),
                leading: Icon(Icons.person,color: Colors.green,),
              ),
            ),
            Text('''  Icons from iconfinder.com''',style: TextStyle(color: Colors.grey,fontSize: 10),)
          ],
        ),
      );