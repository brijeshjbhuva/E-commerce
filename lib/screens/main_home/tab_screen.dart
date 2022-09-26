import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/favourite/favourite_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';

class TabScreen extends StatefulWidget {
  static const routeName = '/tab';

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  MenuState curTab = MenuState.home;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(),
      FavouriteScreen(),
      CartScreen(),
      ProfileScreen()
    ];
    return Scaffold(
      body: SafeArea(
        child: pages[curTab.index],
      ),
      bottomNavigationBar:
          CustomBottomNavBar(onTap: (index) {
            setState(() {
              curTab = index;
            });
          }, selectedMenu: curTab),
    );
  }
}
