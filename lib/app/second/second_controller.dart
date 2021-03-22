import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';

class SecondController {
  void onClickDialog() {
    asuka.showDialog(
      builder: (context) => AlertDialog(
        title: Text('My Dialog'),
        content: Text('This is Dialog Content'),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Ok'),
          ),
        ],
      ),
    );
  }
}
