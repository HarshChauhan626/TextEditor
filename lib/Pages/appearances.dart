import 'package:flutter/material.dart';
import 'package:text_editor/components/apperances_comp.dart' as options;

class Appearance extends StatefulWidget {
  @override
  _AppearanceState createState() => _AppearanceState();
}

class _AppearanceState extends State<Appearance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Settings"),centerTitle: true,
        backgroundColor: Color.fromRGBO(92, 140, 122, 0.9),
        ),
      body:SingleChildScrollView(
        child: new Column(children: <Widget>[
        ListTile(
          leading: Text("Typography"),
        ),
        Card(
          child: Column(children: <Widget>[
            
            PopupMenuButton(
              offset: Offset(100,100),
              onSelected: (String value) {
              setState(() {
              options.btnPreset = value;
              });
              },
              child:ListTile(
              leading: Icon(Icons.ac_unit,color: Colors.red,),
              title: Text("Preset"),
              trailing: Text(options.btnPreset==null?"Essay":options.btnPreset),
              ),
              itemBuilder: (BuildContext ctxt1) => options.presetItems),


            PopupMenuButton(
              offset: Offset(100,100),
              onSelected: (String value) {
              setState(() {
              options.btnFontFamilyTitle = value;
              });
              },
              child:ListTile(
              leading: Icon(Icons.title,color: Colors.red,),
              title: Text("Title"),
              trailing: Text(options.btnFontFamilyTitle==null?"Arvo":options.btnFontFamilyTitle),
              ),
              itemBuilder: (BuildContext ctxt2) => options.fontFamilyItems),

              PopupMenuButton(
                offset: Offset(100,100),
              onSelected: (String value) {
              setState(() {
              options.btnFontFamilyBody = value;
              });
              },
              child:ListTile(
              leading: Icon(Icons.short_text,color: Colors.red,),
              title: Text("Body Text"),
              trailing: Text(options.btnFontFamilyBody==null?"Arvo":options.btnFontFamilyBody),
              ),
              itemBuilder: (BuildContext ctxt3) => options.fontFamilyItemsBody),


              PopupMenuButton(
                offset: Offset(100,100),
              onSelected: (String value) {
              setState(() {
              options.btnAlignment = value;
              });
              },
              child:ListTile(
              leading: Icon(Icons.format_align_center,color: Colors.red,),
              title: Text("Alignment"),
              trailing: Text(options.btnAlignment==null?"Centre":options.btnAlignment),
              ),
              itemBuilder: (BuildContext ctxt4) => options.alignmentItems),


              PopupMenuButton(
                offset: Offset(100,100),
              onSelected: (String value) {
              setState(() {
              options.btnMargin = value;
              });
              },
              child:ListTile(
              leading: Icon(Icons.format_align_center,color: Colors.red,),
              title: Text("Margin"),
              trailing: Text(options.btnMargin==null?"Centre":options.btnMargin),
              ),
              itemBuilder: (BuildContext ctxt5) => options.marginItem),


              
              PopupMenuButton(
              offset: Offset(100,100),
              onSelected: (String value) {
              setState(() {
              options.btnLineSpacing = value;
              });
              },
              child:ListTile(
              leading: Icon(Icons.space_bar,color: Colors.red,),
              title: Text("Linespacing"),
              trailing: Text(options.btnLineSpacing==null?"1.1":options.btnLineSpacing),
              ),
              itemBuilder: (BuildContext ctxt5) => options.lineSpacingItem),


              PopupMenuButton(
              offset: Offset(100,100),
              onSelected: (String value) {
              setState(() {
              options.btnFontSizeItem = value;
              });
              },
              child:ListTile(
              leading: Icon(Icons.font_download,color: Colors.red,),
              title: Text("Font Size"),
              trailing: Text(options.btnFontSizeItem==null?"14.0":options.btnFontSizeItem),
              ),
              itemBuilder: (BuildContext ctxt5) => options.fontSizeItem),

            
          ],),
        ),

        
        Divider(),


        ListTile(leading: Text("Locale"),),
        Card(
          child: Column(children: <Widget>[
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
            ),
          ],),
        ),
        Divider(),
        ListTile(
          leading: Text("Theme"),
        ),
        Card(
          child: Column(children: <Widget>[
            ListTile(
              leading: Icon(Icons.grade),title: Text("Dark Theme"),trailing: Switch(
                onChanged: (bool value){
                  setState(() {
                    options.switchValDark=value;
                  });
                },
                value: options.switchValDark,
              ),
              ),


            ListTile(
              leading: Icon(Icons.call_missed_outgoing),title: Text("Night Mode"),trailing: Switch(
                onChanged: (bool value){
                  setState(() {
                    options.switchValNight=value;
                  });
                },
                value: options.switchValNight,
              ),
              ),
          ],),
        ),
        
    ],),
      )
    );
  }
}