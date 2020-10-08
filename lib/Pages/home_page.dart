import 'package:flutter/material.dart';
import 'package:text_editor/Pages/adding_file.dart';
import 'package:text_editor/Widgets/custom_navigation_drawer.dart';
import 'package:text_editor/components/option_for_appbar.dart' as options;
import 'package:path_provider/path_provider.dart' as path_provider;
import 'dart:io';
import 'package:text_editor/components/functions_for.dart' as comp;
import 'package:text_editor/screens/spalsh_screen_file.dart';
import 'dart:math';
import 'package:text_editor/components/colorsList.dart' as colorsComp;
import 'package:flutter/cupertino.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String result;


  // List View is defined here
  Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
    List<String> values = snapshot.data;
    if(values.length==0)
    {
      return new Text("  ");
    }
    else{
      return new ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: values.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(values[index]),
            onDismissed: (DismissDirection dir){
              comp.deleteFile(values[index]);
              setState(() {
                values.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete),
              alignment: Alignment.centerLeft,
              ),
              secondaryBackground: Container(
              color: Colors.red,
              child: Icon(Icons.delete),
              alignment: Alignment.centerRight,
              ),
              child: new Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                    child: Card(
                    elevation: 3.0,
                      child: new ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          values[index]==""?"U":values[index][0],
                          style: TextStyle(
                            color: colorsComp.colorList[Random().nextInt(colorsComp.colorList.length-1)].colorForCircle,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                          ),
                        ),
                        backgroundColor: colorsComp.colorList[Random().nextInt(colorsComp.colorList.length-1)].colorForText,
                        ),
                      title: new Text(
                        values[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          //color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),
                        ),
                      onTap: (){
                        Navigator.push(
                          context,CupertinoPageRoute(
                            builder: (BuildContext context)=>
                            SplashScreenFile(
                              fileName:values[index],
                              color:colorsComp.colorList[Random().nextInt(colorsComp.colorList.length)].colorForText,
                              )
                            )
                            );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
    );
    }
  }




  @override
  Widget build(BuildContext context) {
    

    /////Future Builder for list is here/////
    var futureBuilder = new FutureBuilder(
      future: comp.listOfFileNames(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return new Text('loading...');
          default:
            if (snapshot.hasError)
              return new Text('Error: ${snapshot.error}');
            else
              return createListView(context, snapshot);
        }
      },
    );





  ///////////////Scaffold Starts here/////////////////////////

    return Scaffold(
      drawer: new CustomNavigationDrawer(),
      appBar: new AppBar(
        elevation: 20.0,
        backgroundColor: Color.fromARGB(500, 92, 140,122 ),
        actions: <Widget>[
          new IconButton(
            icon:Icon(Icons.search),
            onPressed: (){
              print(Random().nextInt(colorsComp.colorList.length));
            },
            ),
          SizedBox(width:30.0),
          new Icon(Icons.sort),
          SizedBox(width:30.0),
          new PopupMenuButton(
            onSelected: (String newValue)
            {
              options.btn3SelectedVal=newValue;
              if(newValue=="New Folder")
              {
                print("New Folder");
              }
              else{
                print("Bhairanth bakchodi");
              }
            },
            itemBuilder: (BuildContext context) => options.popUpMenuItems
            ),
          SizedBox(width: 10.0,)
        ],        
      ),
      body: futureBuilder,
      floatingActionButton: new FloatingActionButton(onPressed: (){
        Navigator.push(
              context, CupertinoPageRoute(
                builder: (BuildContext ctxt) => DemoAdding())).then((value){
                  setState(() {
                    //this.i+=1;
                  });                  
                }
                );
          
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(500, 92, 140,122),
        hoverElevation: 20.0,
        ),
    );
  }


  Future<File> _reference(localFileName) async
  {
    final directory=await path_provider.getExternalStorageDirectory();
    return File('${directory.path}/${localFileName}.txt');
  }

  Future<String> contentLoading(localFileName) async
  {
    String content;
    try{
      final file=await _reference(localFileName);
      content=await file.readAsString();
    }
    catch(e){
      content='Error loading local file : $e';
    }
    return content;
  }


  void navigateToDetail() async {
	  bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
		  return DemoAdding();
	  }));

	  if (result == true) {
	  	updateListView();
	  }
  }

  void updateListView() async
  {
    List<String> fileNames=await comp.listOfFileNames();
  }
  


}



