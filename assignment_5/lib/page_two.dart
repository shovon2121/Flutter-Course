import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Page Two"),),
        body: Center(
          child: ElevatedButton(
            child: Text("Go back"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
