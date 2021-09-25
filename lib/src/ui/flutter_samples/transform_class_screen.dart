import 'package:flutter/material.dart';
import 'dart:math';

class TransformClassScreen extends StatefulWidget {
  const TransformClassScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) => const TransformClassScreen();

  @override
  _TransformClassScreenState createState() => _TransformClassScreenState();
}

class _TransformClassScreenState extends State<TransformClassScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        child: Transform.scale(
          scale: 0.5,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ(pi / 12.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
            ),
          ),
        ),
      ),
    );
  }
}
