import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            press: () {},
            text: 'My Account',
            icon: 'assets/icons/User Icon.svg',
          ),
          ProfileMenu(
            press: () {},
            text: 'Notifications',
            icon: 'assets/icons/Bell.svg',
          ),
          ProfileMenu(
            press: () {},
            text: 'Settings',
            icon: 'assets/icons/Settings.svg',
          ),
          ProfileMenu(
            press: () {},
            text: 'Help Center',
            icon: 'assets/icons/Question mark.svg',
          ),
          ProfileMenu(
            press: () {},
            text: 'Log Out',
            icon: 'assets/icons/Log out.svg',
          ),
        ],
      ),
    );
  }
}
