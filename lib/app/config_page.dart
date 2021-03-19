import 'package:flutter/material.dart';
import 'package:test_dialog/app/widgets/button_a.dart';
import 'package:test_dialog/app/widgets/button_b.dart';
import 'package:test_dialog/app/widgets/button_c.dart';

class ConfigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Config Page"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonA(),
            ButtonB(),
            ButtonC(),
          ],
        ),
      ),
    );
  }
}
