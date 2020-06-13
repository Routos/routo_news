import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  CategoryButton({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xffffd0aa), borderRadius: BorderRadius.circular(30)),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
