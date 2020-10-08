
import 'package:flutter/material.dart';

const menuItems = <String>['New Folder','Home','Share/Modify'];
  
final List<PopupMenuItem<String>> popUpMenuItems = menuItems.map((String value) => PopupMenuItem<String>(value: value,child: Text(value),),).toList();

String btn3SelectedVal;



