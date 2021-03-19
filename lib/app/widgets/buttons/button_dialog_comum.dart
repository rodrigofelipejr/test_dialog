import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/alert_dialog/custom_alert_dialog.dart';

class ButtonDialogComum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text("Dialog Comum"),
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) => CustomAlertDialog(),
          );
        },
      ),
    );
  }
}
