import 'package:flutter/material.dart';
import 'package:yummy_app/home.dart';
import 'constants.dart';

void main() {
  runApp(Yummy());
}

class Yummy extends StatefulWidget {
  // TODO: Setup default theme
  // 2
  Yummy({super.key});

  @override
  State<Yummy> createState() => _YummyState();
}

class _YummyState extends State<Yummy> {
  ThemeMode themeMode = ThemeMode.light; //Manual theme toggle
  ColorSelection colorselected = ColorSelection.pink;

  // TODO: Add changeTheme above here
  void changeThemeMode(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  void changeColor(int value) {
    setState(() {
      colorselected = ColorSelection.values[value];
    });
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Yummy';
    // TODO: Setup default theme

    // 3
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      // TODO: Add theme
      themeMode: themeMode, //that uppoer themeMode variable
      theme: ThemeData(
          colorSchemeSeed: colorselected.color,
          useMaterial3: true,
          brightness: Brightness.light),
      darkTheme: ThemeData(
          colorSchemeSeed: colorselected.color,
          useMaterial3: true,
          brightness: Brightness.dark),
      // TODO: Replace Scaffold with Home widget
      // 4
      home: Home(
        colorselected: colorselected,
        changeTheme: changeThemeMode,
        changeColor: changeColor,
      ),
    );
  }
}
