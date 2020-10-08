import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:text_editor/components/functions_for.dart' as comp;
import 'package:google_fonts/google_fonts.dart';
import 'package:text_editor/components/apperances_comp.dart' as appearance;


class EditingPage extends StatefulWidget {

  String fileName;

  EditingPage({this.fileName});

  @override
  _EditingPageState createState() => _EditingPageState();
}

class _EditingPageState extends State<EditingPage> {

  TextEditingController _textEditingController=new TextEditingController();
  String fileContent="Harsh";

  @override
  void initState()
  {
    super.initState();
    this._loadTextFromLocalFile(widget.fileName);
    this._loadTextFromLocalFile(widget.fileName)
    ..then((dynamic) => setState(() => this._textEditingController.text=fileContent));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(500, 92, 140,122),
        title: Text("${widget.fileName}"),
        centerTitle: true,
        actions: <Widget>[
        IconButton(
          icon: Icon(Icons.save),
          onPressed: (){
            setState(() {
              fileContent=_textEditingController.text;
              });
              comp.writeTextToLocalField(fileContent, widget.fileName);
          },
          ),
      ],),
      body: AutoSizeTextField(
        controller: _textEditingController,
        decoration: InputDecoration(
                hintText: 'Hint Text'
                ),
                fullwidth: false,
                minFontSize: 15,
                minWidth: 400,
                maxLines: 100,
                style: GoogleFonts.getFont(
                appearance.btnFontFamilyBody==null?"Arvo":appearance.btnFontFamilyBody,
                textStyle: TextStyle(fontSize: appearance.btnFontSizeItem==null?14.0:double.parse(appearance.btnFontSizeItem),
                //letterSpacing: double.parse(appearance.btnLineSpacing)
                wordSpacing: appearance.btnLineSpacing==null?10.0:double.parse(appearance.btnLineSpacing)
                )
                ),
      ),
    );
  }

  Future<File> _getLocalFile(String localFileName) async
  {
    final directory=await path_provider.getExternalStorageDirectory();
    return File('${directory.path}/${localFileName}.txt');
  }


  Future<Null> _loadTextFromLocalFile(String localFileName) async
  {
    String content;
    try{
      final file=await _getLocalFile(localFileName);
      content=await file.readAsString();
    }
    catch(e){
      content='Error loading local file : $e';
    }
    setState((){
      this.fileContent=content;
    });

}
}