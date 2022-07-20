import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import 'home_page.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Box todos = await Hive!.openBox("todo");
  runApp(const MyApp());



}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
    );
  }
}

