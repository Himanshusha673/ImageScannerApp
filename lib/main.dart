import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imgscanner/home.dart';
import 'package:imgscanner/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Image to Text Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen_1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
