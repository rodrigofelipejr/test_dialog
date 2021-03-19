import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:test_dialog/app/widgets/custom_alert_dialog.dart';

class ButtonC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text("Dialog C"),
        onPressed: () {
          asuka.showDialog(builder: (context) => CustomAlertDialog());
        },
      ),
    );
  }
}
