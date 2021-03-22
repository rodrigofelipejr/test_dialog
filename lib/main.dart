import 'package:flutter/material.dart';

import 'package:asuka/asuka.dart' as asuka;
import 'package:test_dialog/app/page_a.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: asuka.builder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageA(),
    );
  }
}
