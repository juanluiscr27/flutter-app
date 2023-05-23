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
    // Is the root of the application. Allow to configure Themes and Routes
    return MaterialApp(
      // Allow to build screens with common UI elements
      home: Scaffold(
        // Top App bar
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("My App Home screen")),
        // Allow to contain multiple elements aligned vertically (main axis)
        body: ListView(
          scrollDirection: Axis.horizontal,
          addAutomaticKeepAlives: false,
          children: [
            Container(
              color: Colors.blue,
              width: 500,
              height: 500,
            ),
            Container(
              color: Colors.red,
              width: 500,
              height: 500,
            ),
            Container(
              color: Colors.yellow,
              width: 500,
              height: 500,
            ),
            Container(
              color: Colors.orange,
              width: 500,
              height: 500,
            ),
          ],
        ),
      ),
    );
  }
}
