import 'package:determinas_chat/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomButtomNavBar extends StatelessWidget {
  const CustomButtomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = getScreenSize(context);
    return Container(
      width: size.width,
      height: 83,
      child: Row(
        children: [],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [],
    );
  }
}
