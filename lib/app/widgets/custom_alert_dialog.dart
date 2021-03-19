import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text("Title"),
      content: new SingleChildScrollView(
        child: Container(
          child: Text("Teste"),
        ),
      ),
      actions: <Widget>[
        // usually buttons at the bottom of the dialog
        new FlatButton(
          child: new Text("Close"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
