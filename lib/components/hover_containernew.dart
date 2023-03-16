import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HoverContainerNew extends StatefulWidget {
  final double width;
  final double height;
  final String imagePath;
  final String gitLink;
  final String link;
  final String title;

  const HoverContainerNew({
    required this.width,
    required this.height,
    required this.imagePath,
    required this.gitLink,
    required this.link,
    required this.title,
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _HoverContainerNewState createState() => _HoverContainerNewState();
}

class _HoverContainerNewState extends State<HoverContainerNew> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isHovering = true;
        });
      },
      onDoubleTap: () {
        setState(() {
          _isHovering = false;
        });
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHovering = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isHovering = false;
          });
        },
        child: AnimatedContainer(
            padding: const EdgeInsets.all(20),
            duration: const Duration(milliseconds: 200),
            width: _isHovering ? widget.width * 1.1 : widget.width,
            height: _isHovering ? widget.height * 1.1 : widget.height,
            child: Card(
              color: Colors.black,
              elevation: 50,
              shadowColor: const Color.fromARGB(255, 173, 19, 201),
              child: Column()
            )),
      ),
    );
  }
}
