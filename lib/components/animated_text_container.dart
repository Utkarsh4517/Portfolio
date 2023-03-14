import 'package:flutter/material.dart';

class TextContainer extends StatefulWidget {
  final String text;
  const TextContainer({super.key, required this.text});

  @override
  State<TextContainer> createState() => _TextContainerState();
}

class _TextContainerState extends State<TextContainer> {
  // ignore: unused_field
  Color _buttonColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _buttonColor = Colors.pink;
        });
      },

      onDoubleTap: () {
        setState(() {
          _buttonColor = Colors.white;
        });
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            _buttonColor = Colors.pink;
          });
        },
        onExit: (event) {
          setState(() {
            _buttonColor = Colors.white;
          });
        },
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: (BorderSide(color: _buttonColor)),
          ),

            child: Text(
              widget.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
    );
  }
}
