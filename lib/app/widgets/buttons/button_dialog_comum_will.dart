import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/alert_dialog/custom_alert_dialog.dart';

class ButtonDialogComumWill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text("Dialog comum + WillPopScope"),
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return WillPopScope(
                onWillPop: () async {
                  print("--- ButtonDialogComumWill => WillPopScope");
                  return false;
                },
                child: CustomAlertDialog(),
              );
            },
          );
        },
      ),
    );
  }
}
