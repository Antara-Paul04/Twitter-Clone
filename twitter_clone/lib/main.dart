import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/homepage.dart';
import 'package:twitter_clone/pages/profilepage.dart';
import 'package:twitter_clone/pages/loginpage.dart';
import 'package:twitter_clone/pages/signuppage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Signup(),
      },
    );
  }
}
