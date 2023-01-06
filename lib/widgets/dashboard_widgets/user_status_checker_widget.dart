import 'package:flutter/material.dart';

class StatusCheckerWidget extends StatelessWidget {
  final bool isOnline;
  const StatusCheckerWidget({required this.isOnline});

  @override
  Widget build(BuildContext context) {
    if (isOnline) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
                color: const Color(0xff22BB33), shape: BoxShape.circle),
          ),
          SizedBox(
            width: 8,
          ),
          const Text(
            "Online",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xff333333)),
          ),
        ],
      );
    } else {
      return Container(
        width: 56,
        height: 16,
        decoration: BoxDecoration(
            color: const Color(0xff333333).withOpacity(0.06),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                  color: const Color(0xff666666), shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Offline",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
            ),
          ],
        ),
      );
    }
  }
}
