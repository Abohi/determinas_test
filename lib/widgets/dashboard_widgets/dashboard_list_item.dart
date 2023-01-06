import 'package:determinas_chat/utils/utils.dart';
import 'package:determinas_chat/widgets/dashboard_widgets/user_status_checker_widget.dart';
import 'package:flutter/material.dart';

class DashBoardListItem extends StatefulWidget {
  final bool isOnline;
  const DashBoardListItem({required this.isOnline});

  @override
  State<DashBoardListItem> createState() => _DashBoardListItemState();
}

class _DashBoardListItemState extends State<DashBoardListItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var size = getScreenSize(context);
    return Container(
      width: size.width,
      margin: EdgeInsets.only(bottom: 22),
      padding: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.black.withOpacity(0.15)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (checkedValue) {
                setState(() {
                  isChecked = !isChecked;
                });
              }),
          SizedBox(
            width: 19.33,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/dummy_avatar.png",
                width: 40,
                height: 40,
                fit: BoxFit.fill,
              )),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Addison Larsson",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff333333)),
                ),
                SizedBox(
                  height: 12,
                ),
                StatusCheckerWidget(isOnline: widget.isOnline)
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            padding: EdgeInsets.all(0),
          )
        ],
      ),
    );
  }
}
