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
        primaryColor: Color(0xFF696565),
        accentColor: Color(0xFF999393),
        scaffoldBackgroundColor: Color(0xFFcccaca),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
