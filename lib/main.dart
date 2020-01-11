import 'package:flutter/material.dart';
import 'package:login_signup_ui/UI/create_account.dart';
import 'package:login_signup_ui/UI/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: CreateAccount()),
      debugShowCheckedModeBanner: false,
    );
  }
}