import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String imgUrl;
  CategoryItem({this.name, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: <Widget>[
              Image.network(
                imgUrl,
                fit: BoxFit.cover,
                width: 169,
                height: 65,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                width: 169,
                height: 65,
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
