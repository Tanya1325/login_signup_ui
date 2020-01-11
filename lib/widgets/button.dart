import 'package:flutter/material.dart';
Widget button(String name,BuildContext context,Widget widget){
  return SizedBox(
        height: 50.0,
        width: 200.0,
        child: RaisedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> widget)),
          child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
          color: Color.fromARGB(255, 52, 77, 125),
        ),
      );
}