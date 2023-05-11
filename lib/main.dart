import 'package:flutter/material.dart';
import 'package:prime_video_web_ui/screens/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prime Video',
      theme: ThemeData(
        fontFamily: 'entsani'
      ),
      home: CategoryScreen()
    );
  }
}
