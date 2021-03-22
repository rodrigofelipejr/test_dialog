import 'package:flutter/material.dart';
import 'package:test_dialog/navigation_service.dart';

class HomeController {
  void showMyDialog() {
    showDialog(
      context: NavigationService().navigatorKey.currentContext,
      builder: (context) => AlertDialog(
        title: new Text("Title"),
        content: new SingleChildScrollView(
          child: Container(
            child: Text("Teste"),
          ),
        ),
        actions: <Widget>[
          new FlatButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      ),
    );
  }
}
