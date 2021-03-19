import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/alert_dialog/custom_alert_dialog.dart';
import 'package:asuka/asuka.dart' as asuka;

class ButtonDialogAsukaWill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text("Dialog Asuka + WillPopScope"),
        onPressed: () {
          asuka.showDialog(
            barrierDismissible: true,
            builder: (context) => WillPopScope(
              onWillPop: () async {
                print("--- ButtonDialogAsukaWill => WillPopScope!!!");
                return true;
              },
              child: CustomAlertDialog(),
            ),
          );
        },
      ),
    );
  }
}
