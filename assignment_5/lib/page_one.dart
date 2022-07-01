import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Page One"),),
        body: Center(
          child:  ElevatedButton(
            child: Text("Go to Page 2"),
            onPressed: () {
              Navigator.pushNamed(context, "/page-two");
            },
          ),
          )
        ),


    );
  }
}
