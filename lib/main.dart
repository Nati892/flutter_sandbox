import 'dart:io';

import 'package:flutter/material.dart';

void main() async {
  final File test_file = File('test_file.json'); //load the json file
  bool read_succes = false;
  try {
    String str = await test_file.readAsString();
    read_succes = true;
  } on Exception catch (e) {
    if( await test_file.exists())
    print("cant load ${e.toString()}");
  }
  if (read_succes) {
//load file
    print("read succes");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Main page")),
      ),
    );
  }
}
