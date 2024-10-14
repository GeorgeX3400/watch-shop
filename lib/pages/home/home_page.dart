// ignore_for_file: prefer_const_constructors

import 'package:ecommerceuiapp/pages/cart/ui/cart_page.dart';
import 'package:ecommerceuiapp/pages/favorites/ui/favorites_page.dart';
import 'package:ecommerceuiapp/pages/products/ui/products_page.dart';
import 'package:ecommerceuiapp/pages/settings/ui/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  void onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index, duration: Duration(milliseconds: 5), curve: Curves.easeInOut);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        pageSnapping: false,
        controller: _pageController,
        children: [
          ProductsPage(), 
          FavoritesPage(), 
          CartPage(), 
          SettingsPage()
        ],
      ),
        bottomNavigationBar: SalomonBottomBar(
          items: [
            SalomonBottomBarItem(icon: Icon(Ionicons.list_outline), title: Text('Products')),
            SalomonBottomBarItem(icon: Icon(Ionicons.heart_outline), title: Text('Favorites')),
            SalomonBottomBarItem(icon: Icon(Ionicons.cart_outline), title: Text('Cart')),
            SalomonBottomBarItem(icon: Icon(Ionicons.settings_outline), title: Text('Settings'))
          ],
          currentIndex: _selectedIndex,
          onTap: (index) => onItemSelected(index),
          unselectedItemColor: Theme.of(context).primaryColorDark,

        )
    );
  }
}
