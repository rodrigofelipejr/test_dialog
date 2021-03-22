import 'package:flutter/material.dart';
import 'package:test_dialog/app/page_c.dart';

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
          child: ElevatedButton(
            child: Text("Page C"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageC()),
              );
            },
          ),
        ),
      ),
    );
  }
}
