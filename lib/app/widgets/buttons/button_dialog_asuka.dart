import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/alert_dialog/custom_alert_dialog.dart';
import 'package:asuka/asuka.dart' as asuka;

class ButtonDialogAsuka extends StatefulWidget {
  @override
  _ButtonDialogAsukaState createState() => _ButtonDialogAsukaState();
}

class _ButtonDialogAsukaState extends State<ButtonDialogAsuka> {
  @override
  void initState() {
    super.initState();
    print('ButtonDialogAsuka start');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text("Dialog Asuka"),
        onPressed: () {
          asuka.showDialog(
            builder: (BuildContext context) => CustomAlertDialog(),
            useRootNavigator: true,
          );
        },
      ),
    );
  }
}
