import 'package:flutter/material.dart';

class CustomAlertDialog extends StatefulWidget {
  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  @override
  void initState() {
    super.initState();
    print('Dialog start');
  }

  @override
  void dispose() {
    super.dispose();
    print('Dialog end');
  }

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
        new TextButton(
          child: new Text("Close"),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );
  }
}
