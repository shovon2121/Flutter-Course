import 'package:assignment_7/experiment.dart';
import 'package:flutter/material.dart';
import 'package:assignment_7/my_home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize: Size(412,732),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

