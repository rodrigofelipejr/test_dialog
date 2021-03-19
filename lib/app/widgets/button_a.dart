import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/custom_alert_dialog.dart';

class ButtonA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text("Dialog A"),
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
