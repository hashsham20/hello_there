import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello There App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePagePublic(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePagePublic extends StatefulWidget {
  const MyHomePagePublic({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagePublic> {
  Color _backgroundColor = Colors.white;
  String _colorText = 'RGB(255, 255, 255)'; // Add a new variable for color text

  void _changeBackgroundColor() {
    setState(() {
      final r = Random().nextInt(256);
      final g = Random().nextInt(256);
      final b = Random().nextInt(256);
      _backgroundColor = Color.fromRGBO(r, g, b, 1);
      _colorText =
          'RGB($r, $g, $b)'; // Set the color text, will be used as a Bonus feature
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: _changeBackgroundColor,
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hello there',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 10), // Add spacing between the two texts
                Text(
                  // Display the color text (Bonus Feature)
                  _colorText,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
