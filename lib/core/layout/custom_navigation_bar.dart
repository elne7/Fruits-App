import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          selectedIndex = index;
        });
      },
      indicatorColor: Colors.amber,
      selectedIndex: selectedIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(child: FaIcon(FontAwesomeIcons.listUl)),
          label: 'Orders',
        ),
        NavigationDestination(
          icon: Badge(child: FaIcon(FontAwesomeIcons.basketShopping)),
          label: 'Bastket',
        ),
        NavigationDestination(
          icon: Badge(child: Icon(Icons.favorite_border)),
          label: 'Favorites',
        ),
        NavigationDestination(
          icon: Badge(child: FaIcon(FontAwesomeIcons.alignLeft)),
          label: 'More',
        ),
      ],
    );
  }
}
