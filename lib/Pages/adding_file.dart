import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:text_editor/components/functions_for.dart' as comp;
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:text_editor/components/apperances_comp.dart' as appearance;

class DemoAdding extends StatefulWidget {
  @override
  _DemoAddingState createState() => _DemoAddingState();
}

class _DemoAddingState extends State<DemoAdding> {
  TextEditingController textEditingController=new TextEditingController();
  TextEditingController contentEditingController=new TextEditingController();
  String localFileName;
  String content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Color.fromRGBO(92, 140, 122, 0.9),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.access_alarm),
            onPressed: (){
              setState(() {
                localFileName=textEditingController.text;
              });
              comp.addFile(localFileName);
            },
            ),
            IconButton(icon: Icon(Icons.account_balance),
            onPressed: (){
              setState(() {
                content=contentEditingController.text;
              });
              comp.writeTextToLocalField(content, localFileName);
            },
            ),
            IconButton(icon: Icon(Icons.zoom_out_map),
            onPressed: (){
              //_sendDataBack(context);
            },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: new Column(children: <Widget>[
            AutoSizeTextField(
              controller: textEditingController,
              decoration: InputDecoration(
                    hintText: 'Hint Title',
                    border: InputBorder.none
                  ),
                  fullwidth: false,
                  minFontSize: 15,
                  minWidth: 400,
                  maxLines: 1,
                  style: TextStyle(fontSize: 8,color: Colors.black,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  onEditingComplete: (){
                    setState(() {
                      localFileName=textEditingController.text;
                    });
                    comp.addFile(localFileName);
                  },
            ),
            Align(
              alignment: appearance.btnAlignment=="Center"?Alignment.center:Alignment.topLeft,
                child: AutoSizeTextField(
                controller: contentEditingController,
                decoration: InputDecoration(
                      hintText: 'Hint Text',
                      border: InputBorder.none
                    ),
                    fullwidth: false,
                    minFontSize: 15,
                    minWidth: 400,
                    maxLines: 100,
                    style: TextStyle(fontSize: 8,color: Colors.black,fontWeight: FontWeight.normal),
                    textAlign: TextAlign.left,
              ),
            )
          ],),
        ),
      );
  }
  /*
  void _sendDataBack(BuildContext context) async{
    List<String> fileNames=await comp.listOfFileNames();
    Navigator.pop(context, fileNames);
  }*/


}