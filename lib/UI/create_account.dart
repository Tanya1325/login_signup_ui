import 'package:flutter/material.dart';
import 'package:login_signup_ui/UI/login_screen.dart';
import 'package:login_signup_ui/widgets/button.dart';
import 'package:login_signup_ui/widgets/textfields.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Create Account',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 52, 77, 125)),
          ),
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
          textfields('Name'),
          textfields('E-Mail ID'),
          textfields('Mobile Number'),
          textfields('Password'),
          button('CONTINUE',context,LoginScreen()),
          RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: 'Login',
                  style: TextStyle(color: Color.fromARGB(255, 52, 77, 125)))
            ]),
          )
        ],
      ),
    );
  }
}
