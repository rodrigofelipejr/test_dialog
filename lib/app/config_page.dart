import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/button_a.dart';
import 'package:test_dialog/app/widgets/button_b.dart';
import 'package:test_dialog/app/widgets/button_c.dart';
import 'package:test_dialog/app/widgets/button_d.dart';

class ConfigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<NavigatorState> _key = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: Text("Config Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonA(),
                ButtonB(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonC(),
                ButtonD(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
