import 'package:flutter/material.dart';


class HoverContainer extends StatefulWidget {
  final double width;
  final double height;
  final String imagePath;

  const HoverContainer(
      {
      required this.width,
      required this.height,
      required this.imagePath,
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
            color: Colors.black,
            elevation: 50,
            shadowColor: const Color.fromARGB(255, 173, 19, 201),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(widget.imagePath),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
