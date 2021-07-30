import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final imageurl="https://www.pexels.com/photo/man-smiling-behind-wall-220453/";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              // decoration: BoxDecoration(color: Colors.white),
              accountName: Text("Rahul Yadav",style: TextStyle(color: Colors.white),),
            accountEmail: Text("rahulyadav143111@gmail.com",style: TextStyle(color: Colors.white),),
            currentAccountPicture: CircleAvatar(
              backgroundImage:AssetImage("assets/images/img1.png")),
            )
            ),
          ListTile(leading: 
          Icon(CupertinoIcons.home,color: Colors.white,)
         , title: Text("Home", 
         textScaleFactor: 1.2,
         style: TextStyle(color: Colors.white),)
          ,),
   ListTile(leading: 
   Icon(CupertinoIcons.profile_circled,color: Colors.white,)
         , title: Text("Profile", 
         textScaleFactor: 1.2,
         style: TextStyle(color: Colors.white),)
          ,),
             ListTile(leading: Icon(CupertinoIcons.mail,color: Colors.white,)
         , title: Text("Email me", 
         textScaleFactor: 1.2,
         style: TextStyle(color: Colors.white),)
          ,)
        
          ],
          
          ),
      ),
      
    );
  }
}