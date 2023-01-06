import 'package:determinas_chat/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  bool isPersonal = true,
      isFamilyProfile = false,
      isPost = false,
      isGroup = false,
      isTeams = false;
  @override
  Widget build(BuildContext context) {
    var size = getScreenSize(context);
    return Container(
      color: Colors.black.withOpacity(0.3),
      width: size.width,
      height: 70,
      child: Center(
        child: Container(
          color: Colors.white,
          width: size.width * 0.9,
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              TabBarItem(
                isSelected: isPersonal,
                tabLabel: 'Personal',
                onTabPressed: () {
                  setState(() {
                    isPersonal = true;
                    isFamilyProfile = false;
                    isGroup = false;
                    isPost = false;
                    isTeams = false;
                  });
                },
              ),
              TabBarItem(
                isSelected: isFamilyProfile,
                tabLabel: 'Family',
                onTabPressed: () {
                  setState(() {
                    isPersonal = false;
                    isFamilyProfile = true;
                    isGroup = false;
                    isPost = false;
                    isTeams = false;
                  });
                },
              ),
              TabBarItem(
                isSelected: isPost,
                tabLabel: 'Post',
                onTabPressed: () {
                  setState(() {
                    isPersonal = false;
                    isFamilyProfile = false;
                    isGroup = false;
                    isTeams = false;
                    isPost = true;
                  });
                },
              ),
              TabBarItem(
                isSelected: isTeams,
                tabLabel: 'Teams',
                onTabPressed: () {
                  setState(() {
                    isTeams = true;
                    isPersonal = false;
                    isFamilyProfile = false;
                    isGroup = false;
                    isPost = false;
                  });
                },
              ),
              TabBarItem(
                isSelected: isGroup,
                tabLabel: 'Group',
                onTabPressed: () {
                  setState(() {
                    isPersonal = false;
                    isFamilyProfile = false;
                    isGroup = true;
                    isPost = false;
                    isTeams = false;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarItem extends StatelessWidget {
  final bool isSelected;
  final String tabLabel;
  final Function onTabPressed;
  const TabBarItem(
      {required this.isSelected,
      required this.tabLabel,
      required this.onTabPressed});

  @override
  Widget build(BuildContext context) {
    var size = getScreenSize(context);
    return SizedBox(
      width: size.width * 0.2,
      child: TextButton(
          onPressed: () {
            onTabPressed();
          },
          child: Container(
            padding: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: isSelected
                            ? const Color(0xff397DC8)
                            : Colors.transparent))),
            child: Center(
              child: Text(
                tabLabel,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: isSelected
                        ? const Color(0xff397DC8)
                        : const Color(0xff333333)),
              ),
            ),
          )),
    );
  }
}
