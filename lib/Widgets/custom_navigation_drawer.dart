import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_editor/Pages/appearances.dart';
import 'package:text_editor/Pages/follow_us.dart';
import 'package:text_editor/Pages/rates_us.dart';

class CustomNavigationDrawer extends StatelessWidget {


  TextStyle customStyle=TextStyle(
    fontFamily: "",
    fontWeight: FontWeight.bold,
    color: Colors.black54
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/night.jpg"),
                  fit: BoxFit.cover
                  ),
              ),
              //child: Center(child: Text("Casual",style: TextStyle(color: Colors.black),)),
            ),
          ),
          ListTile(leading: Icon(Icons.settings),title: Text("Settings",style: customStyle,),
          onTap:(){
               Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => Appearance())
          );
          }),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,0.0, 20.0,0.0),
            child: Divider(
              thickness: 2.0,
            ),
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text("Rate Us",
            style: customStyle
            ),
            onTap: (){
                 Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => RateUs())
          );
            },
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,0.0, 20.0,0.0),
            child: Divider(
              thickness: 2.0,
            ),
          ),

          ListTile(
            leading: Icon(CupertinoIcons.location),
            title: Text("Follow us",style: customStyle,),
            onTap:(){
              Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => FollowUs())
              );
            },
          ),

          
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,0.0, 20.0,0.0),
            child: Divider(
              thickness: 2.0,
            ),
          ),
          
          ListTile(leading: Icon(Icons.add_circle_outline),title: Text("More Apps",style: customStyle,)),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,0.0, 20.0,0.0),
            child: Divider(
              thickness: 2.0,
            ),
          ),

          ListTile(leading: Icon(Icons.share),title: Text("Share This App",style: customStyle,)),
        ],
      ),
    );
  }
}