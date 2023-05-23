import 'package:flutter/material.dart';

// program entry point
void main() {
  // Flutter global function that display a Widget argument to the screen
  runApp(const MyFlutterApp());
}

// Stateless Widget is a Flutter class used for UI elements with no dynamic data
class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  // The build method returns a Widget and is called any time Flutter needs to
  // rebuild the UI
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
