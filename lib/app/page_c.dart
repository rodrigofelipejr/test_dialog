import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_asuka.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_asuka_will.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_comum.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_comum_will.dart';

class PageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("--- Page C => WillPopScope");
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page C"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonDialogComum(),
              ButtonDialogComumWill(),
              ButtonDialogAsuka(),
              ButtonDialogAsukaWill(),
            ],
          ),
        ),
      ),
    );
  }
}
