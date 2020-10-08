import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';




const preset = <String>["Novel","Draft","Newspaper","Essay","Lyrics","Poem","Screenplay"];
final List<PopupMenuItem<String>> presetItems = preset.map((String value) => PopupMenuItem<String>(value: value,child: Text(value),),).toList();
String btnPreset;



const fontFamily = <String>["Roboto","Roboto Mono","Roboto Slab","Archer","Courier Prime","FF Lago Mono pro",
"Ideal Sans","Lato","Merriweather","Open Sans","Oswald","Pt Serif","Rosano","Verlag","Dancing Script","Shadows Into Light","Caveat"];
final List<PopupMenuItem<String>> fontFamilyItems = fontFamily.map((String value) => PopupMenuItem<String>(value: value,child: Text(value),),).toList();
final List<PopupMenuItem<String>> fontFamilyItemsBody = fontFamily.map((String value) => PopupMenuItem<String>(value: value,child: Text(value),),).toList();

String btnFontFamilyTitle;
String btnFontFamilyBody;



const alignment=<String>["Centre","Normal"];
final List<PopupMenuItem<String>> alignmentItems=alignment.map((String value) => PopupMenuItem<String>(value:value,child: Text(value))).toList();
String btnAlignment;



const margin=<String>["Narrow","Book","Wide"];
final List<PopupMenuItem<String>> marginItem=margin.map((String value) => PopupMenuItem<String>(value: value,child: Text(value),)).toList();
String btnMargin;



const lineSpacing=["1","2","3","6","11","15","18","20"];
final List<PopupMenuItem<String>> lineSpacingItem=lineSpacing.map((String value) => PopupMenuItem<String>(value:value,child: Text(value),)).toList();
String btnLineSpacing;


double sliderval;


const fontSize=["14","16","18","20","22","24","26","28","30"];
final List<PopupMenuItem<String>> fontSizeItem=fontSize.map((String value) => PopupMenuItem<String>(value:value,child: Text(value),)).toList();
String btnFontSizeItem;

bool switchValDark=false;
bool switchValNight=false;

