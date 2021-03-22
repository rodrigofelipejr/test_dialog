import 'package:flutter/material.dart';
import 'package:test_dialog/app/page_b.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("--- Page A => WillPopScope");
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page A"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Page B"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageB()),
              );
            },
          ),
        ),
      ),
    );
  }
}
