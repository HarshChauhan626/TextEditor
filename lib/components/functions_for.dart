import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'dart:io';
import 'dart:async';


List<String> listOfFiles=[];

int i=0;


Future<List<FileSystemEntity>> listOfFilesFunc() async
{
  final directory=await path_provider.getExternalStorageDirectory();
  print(directory);
  print(directory.list().toList());
  print(directory.listSync().toList());
  return directory.list().toList();
}


Future<Directory> directoryFunc() async
{
  final directory=await path_provider.getExternalStorageDirectory();
  print(directory);
  return directory;
}


void listOfFilesNew() async{
  final listOfFiles=await listOfFilesFunc();
  print(listOfFiles);
  print(listOfFiles[0].toString()[77]);
  print(listOfFiles[0].toString()[listOfFiles[0].toString().length-7]);
}


Future<List<String>> listOfFileNames() async{
  final listOfFiles=await listOfFilesFunc();
  List<String> listOfNames=[];
  for (var item in listOfFiles) {
    String fileName=item.toString().substring(79,item.toString().length-5);
    listOfNames.add(fileName);
  }
  listOfNames.sort();
  return listOfNames;
}


void printListOfFiles() async
{
  List<String> listOfFiles=await listOfFileNames();
  print(listOfFiles);
}


void addFile(String fileName) async
{
  final directoryName=await directoryFunc();
  new File("${directoryName.path}/${fileName}.txt").create();
}


Future<File> writeTextToLocalField(String text,String localFileName) async
{
  final file=await getLocalFile(localFileName);
  return file.writeAsString(text);
}


Future<File> getLocalFile(String localFileName) async
{
  final directory=await path_provider.getExternalStorageDirectory();
  print(directory);
  return File('${directory.path}/${localFileName}.txt');
}


void deleteFile(String fileName) async
{
  final directoryName=await directoryFunc();
  File("${directoryName.path}/${fileName}.txt").delete();
}