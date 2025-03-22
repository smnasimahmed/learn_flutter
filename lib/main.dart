import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(Yummy());
}

class Yummy extends StatelessWidget {
  // TODO: Setup default theme
  // 2
  Yummy({super.key});
  // TODO: Add changeTheme above here

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Yummy';
    // TODO: Setup default theme
    ThemeMode themeMode = ThemeMode.light; //Manual theme toggle
    ColorSelection colourselected = ColorSelection.pink;
    // 3
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      // TODO: Add theme
      themeMode: themeMode, //that uppoer themeMode variable
      theme: ThemeData(
          colorSchemeSeed: colourselected.color,
          useMaterial3: true,
          brightness: Brightness.light),
      darkTheme: ThemeData(
          colorSchemeSeed: colourselected.color,
          useMaterial3: true,
          brightness: Brightness.dark),
      // TODO: Replace Scaffold with Home widget
      // 4
      home: Scaffold(
        appBar: AppBar(
          surfaceTintColor: colourselected.color,
          // TODO: Add action buttons
          elevation: 4.0,
          title: const Text(
            appTitle,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
        body: const Center(
          child: Text(
            'Hello World!',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
