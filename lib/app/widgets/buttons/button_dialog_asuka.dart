import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/alert_dialog/custom_alert_dialog.dart';
import 'package:asuka/asuka.dart' as asuka;

class ButtonDialogAsuka extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text("Dialog Asuka"),
        onPressed: () {
          asuka.showDialog(builder: (BuildContext context) => CustomAlertDialog(), useRootNavigator: true);
        },
      ),
    );
  }
}
