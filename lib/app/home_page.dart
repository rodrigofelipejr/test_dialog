import 'package:flutter/material.dart';
import 'package:test_dialog/app/second/second_page.dart';

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
          title: Text("HomePage"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text("Second Page"),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
