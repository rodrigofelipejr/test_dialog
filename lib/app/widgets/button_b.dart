import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/custom_alert_dialog.dart';

class ButtonB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text("Dialog B"),
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return WillPopScope(
                onWillPop: () async {
                  print("--- Button A => WillPopScope!!!");
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
