import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(12, 142, 142, 147),
          labelText: "Search",
          labelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
          prefixIcon: Icon(
            Icons.search,
            size: 20,
            color: const Color(0xffDADADA),
          ),
          suffixIcon: Icon(
            Icons.mic,
            size: 20,
            color: const Color(0xffDADADA),
          ),
          contentPadding:
              EdgeInsets.only(top: 7, bottom: 7, left: 11.4, right: 8.5),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent))),
    );
  }
}
