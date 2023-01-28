import 'package:codigo6_ui/Pages/example1_page.dart';
import 'package:codigo6_ui/Pages/example2_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Example2Page(), //Example1Page(),
    );
  }
}
