import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/buttons/button_dialog_asuka.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("--- Page A => WillPopScope");
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page A"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonDialogAsuka(),
            ],
          ),
        ),
      ),
    );
  }
}
