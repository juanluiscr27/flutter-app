import 'dart:math';

import 'package:flutter/material.dart';

// program entry point
void main() {
  // Flutter global function that display a Widget argument to the screen
  runApp(const MyFlutterApp());
}

// Stateless Widget is a Flutter class used for UI elements with no dynamic data
class MyFlutterApp extends StatefulWidget {
  const MyFlutterApp({super.key});

  @override
  State<MyFlutterApp> createState() => _MyFlutterAppState();
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  int count = 0;
  // The build method returns a Widget and is called any time Flutter needs to
  @override
  Widget build(BuildContext context) {
    // Is the root of the application. Allow to configure Themes and Routes
    return MaterialApp(
      // Allow to build screens with common UI elements
      home: Scaffold(
        // Top App bar
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("My App Home screen")),
        // Allow to contain multiple elements aligned vertically (main axis)
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              color: randomColor(),
              width: 500,
              height: 500,
            );
          },
        ),
      ),
    );
  }
}

Color randomColor() {
  var random = Random();
  return Color.fromRGBO(
      random.nextInt(250), random.nextInt(250), random.nextInt(250), 1);
}
