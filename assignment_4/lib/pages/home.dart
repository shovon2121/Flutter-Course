import 'package:flutter/material.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20
          ),
          child: Column(
            children: [
              Text(
                "Hello Shovon",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "Let's gets something?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4f4c4c)
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 130,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
