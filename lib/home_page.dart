import 'package:flutter/material.dart';
import 'package:test_dialog/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Center(child: Text('test'))),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.showMyDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}
