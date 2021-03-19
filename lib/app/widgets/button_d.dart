import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:test_dialog/app/widgets/custom_alert_dialog.dart';

class ButtonD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text("Dialog D"),
        onPressed: () {
          asuka.showDialog(
            barrierDismissible: true,
            // useRootNavigator: false,
            builder: (context) => WillPopScope(
              onWillPop: () async {
                print("--- Button D => WillPopScope!!!");
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
