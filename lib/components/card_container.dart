import 'package:flutter/material.dart';

class ContainerCustom extends StatefulWidget {
  const ContainerCustom({super.key});

  @override
  State<ContainerCustom> createState() => _ContainerCustomState();
}

class _ContainerCustomState extends State<ContainerCustom> {
  var isHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 400,
      padding: const EdgeInsets.all(20),
      child: Card(
        elevation: 50,
        shadowColor: const Color.fromARGB(255, 173, 19, 201),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}
