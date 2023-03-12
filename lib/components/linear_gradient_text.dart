import 'package:flutter/material.dart';

class LgText extends StatelessWidget {
  final String text;
  final double fontsize;

  const LgText({super.key, required this.text, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: FontWeight.bold,
        foreground: Paint()
          ..shader = const LinearGradient(
            colors: <Color>[
              Colors.pinkAccent,
              Colors.deepPurpleAccent,
              Colors.red
              //add more color here.
            ],
          ).createShader(
            const Rect.fromLTWH(0.0, 0.0, 1000.0, 100.0),
          ),
      ),
    );
  }
}
