import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:text_editor/Pages/editing_page.dart';

class SplashScreenFile extends StatefulWidget {

  Color color;
  String fileName;

  SplashScreenFile({
    this.color,
    this.fileName
  });

  @override
  _SplashScreenFileState createState() => _SplashScreenFileState();
}

class _SplashScreenFileState extends State<SplashScreenFile> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 1), (){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(
        builder: (context) => EditingPage(fileName: widget.fileName),
      ));
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      body: Center(
        child: Text(
          widget.fileName,
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}