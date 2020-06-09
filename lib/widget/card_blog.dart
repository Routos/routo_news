import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  String title;
  String desc;
  String imgUrl;
  int Number;
  BlogCard({
    @required this.title,
    @required this.imgUrl,
    @required this.desc,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(bottom: 25),
          child: Card(
            elevation: 5,
            shadowColor: Colors.black38,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage.assetNetwork(
                    placeholder: 'asset/loading.gif',
                    image: imgUrl,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 30, right: 20),
                  child: Text(
                    desc.length > 100 ? desc.substring(0, 120) : desc,
                    style: TextStyle(
                        color: Colors.black87, fontSize: 14, height: 1.4),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
