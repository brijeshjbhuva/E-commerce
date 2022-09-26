import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  static String routeName = "/products";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
      // bottomNavigationBar:
      //     CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
