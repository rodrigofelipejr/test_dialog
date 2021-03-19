import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_asuka.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_asuka_will.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_comum.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_comum_will.dart';

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("--- Page B => WillPopScope");
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page B"),
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
