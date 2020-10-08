import 'package:flutter/material.dart';

class FollowUs extends StatefulWidget {
  @override
  _FollowUsState createState() => _FollowUsState();
}

class _FollowUsState extends State<FollowUs> {


  Widget padding=Padding(
    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    child: Divider(),
    );

  TextStyle subtitleStyle=TextStyle(
    color: Colors.grey,
    );
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(92, 140, 122, 0.9),
        title: Text(
          "Follow Us",
          ),
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 44.0,
              backgroundColor:Color.fromARGB(500, 92, 140,122 ),
              child: Text(
                "T",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 38.0
                  ),
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Texter",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),),
          ),
          Text(
            "Version 1.0.0",
            style: subtitleStyle,
            ),
          padding,
          Text(
            "Ankita Pvt. Ltd",
            style: subtitleStyle,
            ),
          Text(
            "2020 All Rights Reserved",
            style: subtitleStyle,
            ),
          padding,
          ListTileCustom(title:"Facebook",imageAddress: "assets/social_media/facebook-square-color.png",),
          ListTileCustom(title:"Instagram",imageAddress: "assets/social_media/instagram-color.png",),
          ListTileCustom(title:"LinkedIn",imageAddress: "assets/social_media/linkedin-color.png",),
          ListTileCustom(title:"Twitter",imageAddress: "assets/social_media/twitter-square-color.png",),
          ListTileCustom(title:"Play Store",imageAddress: "assets/social_media/play-store-square-color.png",),
        ],),
      ),
    );
  }
}


class ListTileCustom extends StatelessWidget {

  String title;
  String imageAddress;

  ListTileCustom({
    this.title,
    this.imageAddress
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListTile(
        leading: Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),
          ),
        trailing: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 44,
            maxHeight: 44,
          ),
          child: Image.asset(imageAddress, fit: BoxFit.cover),
      ),
        ),
      ),
    );
  }
}