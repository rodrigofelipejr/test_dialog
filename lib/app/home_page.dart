import 'package:flutter/material.dart';
import 'package:test_dialog/app/config_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("--- HomePage => WillPopScope");
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Config page"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConfigPage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
