import 'package:flutter/material.dart';
import './screens/homePage.dart';
import './screens/formPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 2',
      theme: ThemeData(
        canvasColor: Color(0xffEEF4FF),
        fontFamily: "Poppins",
      ),
      home: const MyHomePage(),
      // home: const FormPage(),
    );
  }
}
