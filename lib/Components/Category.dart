import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 15),
        height: 65,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        color: color,
        child: Text(
          text!,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
