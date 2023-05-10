import 'dart:math';
import 'package:flutter/material.dart';

/// Entry point of the application.
void main() {
  runApp(const MyApp());
}

/// Root widget of the application.
class MyApp extends StatelessWidget {
  /// This constructor allows key to be optional and is thus marked as constant
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello There App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// Home page of the application.
class MyHomePage extends StatefulWidget {
  /// Combined the MyHomePagePublic and _MyHomePageState classes
  /// into a single StatefulWidget
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/// State of the [MyHomePage] widget.
class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;
  String _colorText = 'RGB(255, 255, 255)';
  // Add a new variable for color text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        //Used a function for the onTap event to directly update the state
        onTap: () {
          setState(() {
            final r = Random().nextInt(256);
            final g = Random().nextInt(256);
            final b = Random().nextInt(256);
            _backgroundColor = Color.fromRGBO(r, g, b, 1);
            _colorText = 'RGB($r, $g, $b)';
            // Set the color text, will be used as a Bonus feature
          });
        },
        child: ColoredBox(
          color: _backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Hello there', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 10),
                Text(
                  _colorText,
                  style: const TextStyle(fontSize: 20),
                  // Display the color text (Bonus Feature)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
