import 'package:flutter/material.dart';
import 'theme_button.dart';
import 'color_button.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  final ColorSelection colorselected;
  final void Function(bool) changeTheme;
  final void Function(int) changeColor;
  const Home(
      {super.key,
      required this.colorselected,
      required this.changeTheme,
      required this.changeColor});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Track current tab
  // TODO: Define tab bar destinations
  @override
  Widget build(BuildContext context) {
    // TODO: Define pages
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: widget.colorselected.color,
        // TODO: Add action buttons
        actions: [
          ThemeButton(changeThemeMode: widget.changeTheme),
          ColorButton(
              changeColor: widget.changeColor,
              colorSelected: widget.colorselected),
        ],
        elevation: 4.0,
        title: const Text(
          'Yummy',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      // TODO: Switch between pages
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Hello World!',
          style: Theme.of(context)
              .textTheme
              .displayLarge, //I don't know about this :(
        ),
      ),
      // TODO: Add bottom navigation bar
    );
  }
}
