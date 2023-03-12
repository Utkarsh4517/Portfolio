import 'package:flutter/material.dart';
import 'package:portfolio1/homepage.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        
        minWidth: 480,
        defaultScale: false,
        breakpoints: const [
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      home: const HomePage(),
    );
  }
}
