import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class RateUs extends StatefulWidget {
  @override
  _RateUsState createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:Text("Rate Us"),
        backgroundColor: Color.fromRGBO(92, 140, 122, 0.9),
      ),
      body: new Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Your ratings and feedback will help us make the app \n      better and deliver the best experience to you",
              style: TextStyle(
                color: Colors.grey,
                //fontSize:12.0
                ),
              ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 110.0,
                width: 150.0,
                child: Lottie.asset(
                  "assets/lottie_files_text/1994-rate.json",
                  fit: BoxFit.fill
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Love the app? Rate us on playstore",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                    //color: Colors.blue,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Color.fromRGBO(142, 192, 165, 0.9),Color.fromRGBO(92, 140, 122, 0.9)])
                    ),
                    height: 50.0,
                    width: 300.0,
                    child: Center(
                      child: Text(
                        "RATE NOW",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                          ),
                      ),),
                  ),
                ),
                onTap: (){},
              ),
            ),
            SizedBox(height: 5.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 1.0, 3.0,1.0),
                  child: Container(
                    height: 1.0,
                    width: 150.0,
                    color: Colors.black,),
                ),
                Text(
                  "OR",
                  style:TextStyle(color: Colors.grey)
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3.0, 1.0, 10.0,1.0),
                  child: Container(
                    height: 1.0,
                    width: 150.0,
                    color: Colors.black,),
                ),
              ],),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 100.0,
                width: 200.0,
                child: Lottie.asset("assets/lottie_files_text/28460-feedback-form-smile-animation.json"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Have some feedback or suggestions",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                  ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                    //color: Colors.blue,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Color.fromRGBO(142, 192, 165, 0.9),Color.fromRGBO(92, 140, 122, 0.9)])
                    ),
                    height: 50.0,
                    width: 300.0,
                    child: Center(
                      child: Text(
                        "RATE NOW",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                          ),
                      ),),
                  ),
                ),
                onTap: (){},
              ),
            ),
        ],
        ),
    );
  }
}