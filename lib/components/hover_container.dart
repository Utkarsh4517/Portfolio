import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HoverContainer extends StatefulWidget {
  final double width;
  final double height;
  final String imagePath;
  final String gitLink;
  final String link;
  final String title;

  const HoverContainer({
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
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
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
            color: Colors.transparent,
            elevation: 50,
            shadowColor:const Color.fromARGB(255, 122, 4, 151),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Visibility(
                    visible: _isHovering ? true : false,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.title,
                              style:  TextStyle(color: Colors.pink[400]),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                launchUrlString(widget.gitLink);
                              },
                              icon: const Icon(
                                FontAwesomeIcons.github,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                launchUrlString(widget.link);
                              },
                              icon: const Icon(
                                FontAwesomeIcons.link,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(widget.imagePath,),
                ],
              ),
          ),
        ),
      ),
    );
  }
}
