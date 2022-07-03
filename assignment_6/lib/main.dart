import 'package:assignment_6/set_local.dart';
import 'package:flutter/material.dart';
import 'package:assignment_6/myHomePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(428, 950),
        builder: (context, child) => GetMaterialApp(
          theme: ThemeData(
            brightness: Brightness.dark,
            textTheme: TextTheme(
              headline6: TextStyle(fontSize: 30),
              bodyText2: TextStyle(
                fontSize: 25,
              )
            )
          ),
             translations: SetLocal(),
              locale: Locale('bn', 'BD'),
              fallbackLocale: Locale('en','US'),
              home: MyHomePage(),
            ));
  }
}
