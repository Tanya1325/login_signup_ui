import 'package:flutter/material.dart';
import 'package:login_signup_ui/Model/Clipped1.dart';
import 'package:login_signup_ui/UI/create_account.dart';
import 'package:login_signup_ui/widgets/button.dart';
import 'package:login_signup_ui/widgets/space.dart';
import 'package:login_signup_ui/widgets/textfields.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Clipped1(),
            child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset(
                  'assets/img1.jpg',
                  fit: BoxFit.cover,
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              space(120.0),
              Center(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 212, 240),
                    image: DecorationImage(
                      image: AssetImage('assets/img2.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.6),
                      width: 8.0,
                    ),
                  ),
                ),
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 52, 77, 125)),
              ),
              Text(
                'Login To Continue',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              textfields('Username'),
              textfields('Password'),
              Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey),
              ),
              button('LOGIN',context,CreateAccount()),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: 'Create Account',
                      style: TextStyle(color: Color.fromARGB(255, 52, 77, 125)))
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
