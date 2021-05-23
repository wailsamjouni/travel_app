import 'package:flutter/material.dart';
import 'package:travel_clone_app/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF06a3cc),
        accentColor: Color(0xFFb3e7f5),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
