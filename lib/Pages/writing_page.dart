import 'package:flutter/material.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart' as path_provider;


class WritingPage extends StatefulWidget {
  String title;

  WritingPage({this.title});
  @override
  _WritingPageState createState() => _WritingPageState();
}

class _WritingPageState extends State<WritingPage> {

  final TextEditingController _textEditingController=new TextEditingController();
  static const String localFileName='local_file_example.txt';
  String _localFileContent="";
  String _localFilePath=localFileName;

  @override
  void initState()
  {
    super.initState();
    this._loadTextFromLocalFile();
    this._getLocalFile()
    ..then((file) => setState(() => this._localFilePath=file.path))
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.teal[600],
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.save),onPressed: () async{
            await this._writeTextToLocalField(this._textEditingController.text);
            this._textEditingController.clear();
            await this._loadTextFromLocalFile();
          },),
          IconButton(icon: Icon(Icons.laptop_windows),onPressed: () async{
            this._loadTextFromLocalFile();
            this._textEditingController.text=this._localFileContent;
          },
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AutoSizeTextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: 'Hint Text'
                ),
                fullwidth: false,
                minFontSize: 15,
                minWidth: 400,
                maxLines: 100,
                style: TextStyle(fontSize: 8,color: Colors.grey,fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0,),
              Text(this._localFileContent,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }

  Future<File> _getLocalFile() async
  {
    final directory=await path_provider.getApplicationDocumentsDirectory();
    return File('${directory.path}/$localFileName');
  }

  Future<File> _writeTextToLocalField(String text) async
  {
    final file=await _getLocalFile();
    return file.writeAsString(text);
  }

  Future<Null> _loadTextFromLocalFile() async
  {
    String content;
    try{
      final file=await _getLocalFile();
      content=await file.readAsString();
    }
    catch(e){
      content='Error loading local file : $e';
    }
    setState((){
      this._localFileContent=content;
    });
  }




}



