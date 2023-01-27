import 'package:codigo6_ui/Pages/example1_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner retira la cinta de debug
      debugShowCheckedModeBanner: false,
      title: "Flutter App UI",
      home: Example1Page(),
    );
  }
}
