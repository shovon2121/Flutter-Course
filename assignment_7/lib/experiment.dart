import 'package:flutter/material.dart';

class Experiment extends StatelessWidget {
  const Experiment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side:
                            BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                  ),
                  onPressed: () {},
                  child: Text("Rounded Button",
                  style: TextStyle(fontSize: 15,color: Colors.blue),
                  ),

                ),

              ),
            ],
          ),
        ),
      )),
    );
  }
}
