import 'package:flutter/material.dart';
import 'package:yummy_app/components/category_card.dart';
import 'package:yummy_app/models/food_category.dart';
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
  int tab = 0;

  // TODO: Define tab bar destinations
  List<NavigationDestination> appBarDestinations = [
    const NavigationDestination(
      icon: Icon(Icons.credit_card),
      label: 'Category',
      selectedIcon: Icon(Icons.credit_card),
    ),
    const NavigationDestination(
      icon: Icon(Icons.credit_card),
      label: 'Post',
      selectedIcon: Icon(Icons.credit_card),
    ),
    const NavigationDestination(
      icon: Icon(Icons.credit_card),
      label: 'Restaurent',
      selectedIcon: Icon(Icons.credit_card),
    )
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: Define pages
    final pages = [
      // TODO: Replace with Category Card
      Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: CategoryCard(category: categories[0]),
        ),
      ),
      // TODO: Replace with Post Card
      const Scaffold(
        body: Center(
            child: Text(
          'This is Post Page',
          style: TextStyle(fontSize: 20),
        )),
      ),
      // TODO: Replace with Restaurant Landscape Card
      const Scaffold(
        body: Center(
            child: Text(
          'This is Restaurent Page',
          style: TextStyle(fontSize: 20),
        )),
      ),
    ];
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
      body: IndexedStack(
        index: tab,
        children: pages,
        //Normally pages support cause page is a list that supports childern
        // And controlled by tab setted from bottomNavigationBar
      ),
      // TODO: Add bottom navigation bar
      bottomNavigationBar: NavigationBar(
          selectedIndex: tab,
          // This tab and that IndexedStack tab are controlled by same tab number
          onDestinationSelected: (index) {
            setState(() {
              tab = index;
            });
          },
          destinations: appBarDestinations),
    );
  }
}
