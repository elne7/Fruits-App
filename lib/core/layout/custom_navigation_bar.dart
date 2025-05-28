import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/colors.dart';
import 'package:fruits_app/features/basket/presentation/views/basket_view.dart';
import 'package:fruits_app/features/favorite/presentation/views/favorite_view.dart';
import 'package:fruits_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_app/features/more/presentation/views/more_view.dart';
import 'package:fruits_app/features/order/presentation/views/order_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;
  final screens = const [
    HomeView(),
    OrderView(),
    BasketView(),
    FavoriteView(),
    MoreView(),
  ];

  // int index = 1;
  final PageController _pageController = PageController(initialPage: 0);

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: (pageIndex) {
          setState(() {
            _selectedIndex = pageIndex;
          });
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withAlpha(10)),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.white,
              color: Colors.white,
              tabs: [
                customGButton('Home', LineIcons.home),
                customGButton('Orders', LineIcons.listUl),
                customGButton('Basket', LineIcons.shoppingBasket),
                customGButton('Favorites', LineIcons.heart),
                customGButton('More', LineIcons.alignLeft),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: onItemTapped,
            ),
          ),
        ),
      ),
    );
  }

  GButton customGButton(String text, IconData icon) {
    return GButton(
      icon: icon,
      iconActiveColor: kPrimaryColor,
      text: text,
      textColor: kPrimaryColor,
      textStyle: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
    );
  }
}
