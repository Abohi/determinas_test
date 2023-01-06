import 'package:flutter/material.dart';

class CustomCircularAvaterHolder extends StatelessWidget {
  final Widget avaterIcon;
  const CustomCircularAvaterHolder({required this.avaterIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      child: Center(
        child: avaterIcon,
      ),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: const Color(0xffEAEFF5)),
    );
  }
}
