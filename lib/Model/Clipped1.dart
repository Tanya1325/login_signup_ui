import 'package:flutter/material.dart';
class Clipped1 extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height-100);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-100);
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}