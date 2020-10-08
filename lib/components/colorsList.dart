import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';


class ColorForListTile
{
  Color colorForCircle;
  Color colorForText;
  ColorForListTile({
    this.colorForCircle,
    this.colorForText
  });
}



List colorList=[
  new ColorForListTile(colorForCircle: Colors.red,colorForText: Colors.redAccent),
  new ColorForListTile(colorForCircle: Colors.amber[300],colorForText: Colors.amber[600]),
  new ColorForListTile(colorForCircle: Colors.teal[300],colorForText: Colors.teal[600]),
  new ColorForListTile(colorForCircle: Colors.tealAccent,colorForText: Colors.tealAccent),
  new ColorForListTile(colorForCircle: Colors.red[300],colorForText: Colors.red[600]),
  new ColorForListTile(colorForCircle: Colors.orange[300],colorForText: Colors.orange[600]),
  new ColorForListTile(colorForCircle: Colors.blue[300],colorForText: Colors.blue[600]),
  new ColorForListTile(colorForCircle: Colors.blueGrey[300],colorForText: Colors.blueGrey[600]),
  new ColorForListTile(colorForCircle: Colors.blueGrey[300],colorForText: Colors.blueGrey[900]),
  new ColorForListTile(colorForCircle: Colors.blueGrey[100],colorForText: Colors.blueGrey[900]),
];
