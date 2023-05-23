import 'package:flutter/material.dart';

// program entry point
void main() {
  // Flutter global function that display a Widget argument to the screen
  runApp(const MaterialApp(
    home: MyFlutterApp(),
  ));
}

// Stateless Widget is a Flutter class used for UI elements with no dynamic data
class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('My App home screen'),
        ),
        body: ElevatedButton(
          child: const Text('About Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AboutScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('About'),
      ),
    );
  }
}
