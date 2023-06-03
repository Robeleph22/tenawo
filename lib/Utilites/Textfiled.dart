import 'package:flutter/material.dart';

class textFiled extends StatelessWidget {
  final String hintText;
  final Icon textFiledIcon;
  const textFiled({
    super.key,
    required this.hintText,
    required this.textFiledIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              spreadRadius: 1,
              blurRadius: 0,
            ),
          ],
          color:  Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: textFiledIcon,
              iconColor: Colors.orange,
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.black54),
            ),
          ),
        ),
      ),
    );

  }
}
