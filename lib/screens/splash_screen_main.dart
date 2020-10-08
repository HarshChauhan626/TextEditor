import 'package:flutter/material.dart';
import 'dart:async';
import 'package:text_editor/Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenMain extends StatefulWidget {
  @override
  _SplashScreenMainState createState() => _SplashScreenMainState();
}

class _SplashScreenMainState extends State<SplashScreenMain> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors:[Colors.teal,Colors.green] 
            )
        ),
        child: Center(
          child: Text(
            "Texter",
            style: GoogleFonts.getFont(
              "Caveat",
              textStyle: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              )
              ),
            ),
        ),
      ),
    );
  }
}