import 'package:flutter/material.dart';
import 'package:test_dialog/app/second/second_controller.dart';
import 'package:asuka/asuka.dart' as asuka;

class SecondPage extends StatefulWidget {
  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  SecondController controller = SecondController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text("Dialog Asuka"),
                onPressed: controller.onClickDialog,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('Dialog 2'),
                onPressed: () => asuka.showDialog(
                  builder: (context) => AlertDialog(
                    content: Text("Voce nao preencheu todos os dados!!!"),
                    title: Text("Oopss..."),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
