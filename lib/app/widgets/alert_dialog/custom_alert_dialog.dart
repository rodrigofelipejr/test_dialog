import 'package:flutter/material.dart';

class CustomAlertDialog extends StatefulWidget {
  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  final _focusNode = FocusNode();

  final FocusNode _btmFocusNode1 = FocusNode();
  final FocusNode _btmFocusNode2 = FocusNode();

  @override
  void initState() {
    super.initState();
    _btmFocusNode1.addListener(() {
      print("Has focus 1: ${_btmFocusNode1.hasFocus}");
      print("Has focus 2: ${_btmFocusNode2.hasFocus}");
    });
    _btmFocusNode1.requestFocus();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _btmFocusNode1.dispose();
    _btmFocusNode2.dispose();
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
        new FlatButton(
          focusColor: Colors.red,
          focusNode: _btmFocusNode1,
          child: new Text("Close"),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        new FlatButton(
          focusNode: _btmFocusNode2,
          child: new Text("Ok"),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );
  }
}
