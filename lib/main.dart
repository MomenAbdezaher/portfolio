import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Momen CV',
      theme: ThemeData(
        primaryColor: Color(0xFF219ebc),
        fontFamily: "Amiri"
      ),
      home: ScreenTypeLayout.builder(
        mobile: (context)=>MyHomePageM(),
      ),
    );
  }
}
