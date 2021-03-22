import 'package:flutter/material.dart';
import 'package:test_dialog/app/page_A.dart';
import 'package:asuka/asuka.dart' as asuka show builder;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageA(),
      builder: asuka.builder,
    );
  }
}
