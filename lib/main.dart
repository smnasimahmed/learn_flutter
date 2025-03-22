import 'package:flutter/material.dart';

void main() {
  runApp(const Yummy());
}

class Yummy extends StatelessWidget {
  // TODO: Setup default theme
  // 2
  const Yummy({super.key});
  // TODO: Add changeTheme above here

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Yummy';
    // TODO: Setup default theme
    // 3
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      // TODO: Add theme
      // TODO: Replace Scaffold with Home widget
      // 4
      home: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          title: const Text(
            appTitle,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
