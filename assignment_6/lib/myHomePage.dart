import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var height = 100.0;
  var name = "My name is....";
  var width = 200.0;
  double fontSize = 20;

  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth > 400 && constraints.maxWidth < 580) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      child: Center(child: Text("Using theme",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
                     color: Colors.cyan,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.green,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.cyan,
                    child: FractionallySizedBox(
                      heightFactor: 0.5,
                      widthFactor: 0.5,
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  Container(
                    height: 200.h,
                    width: 400.w,
                    color: Colors.amber,
                    child: Text("app_name".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.white,
                        )),
                  ),
                  AnimatedContainer(
                      duration: Duration(seconds: 3),
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      onEnd: () {
                        setState(() {
                          height = height == 400 ? 200 : 400;
                          color =
                              color == Colors.cyan ? Colors.black : Colors.cyan;
                        });
                      },
                      child: AnimatedDefaultTextStyle(
                        child: Text(name),
                        style: TextStyle(
                          fontSize: fontSize,
                        ),
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInOut,
                      )),
                  ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            height = 400;
                            color = Colors.cyan;
                            name = "Shovon..........";
                          },
                        );
                      },
                      child: Text("animate"))
                ],
              ),
            ),
          );
        } else {
          return Container(
            color: Colors.amber,
          );
        }
      },
    ));
  }
}
