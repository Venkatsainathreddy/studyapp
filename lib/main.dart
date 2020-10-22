import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:studyapp/screens/loginscreen.dart';
// ignore: unused_import
import 'package:studyapp/screens/signupscreen.dart';
import 'package:studyapp/screens/welcomescreen.dart';
void main() {
  runApp(MyApp()
    //MaterialApp(
      //initialRoute: "/",
      //routes: {
        // "/":        (context) => MyHomePage(),
        // "/login":   (context) => LoginScreen(),
        // "/signup":  (context) => Signupscreen(),
    //},)
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
