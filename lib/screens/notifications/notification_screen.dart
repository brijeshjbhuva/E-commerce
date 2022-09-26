import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';

import 'components/body.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notification";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
      // bottomNavigationBar:
      //     CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
