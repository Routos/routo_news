import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routonews/screen/read_screen.dart';

class BlogCard extends StatelessWidget {
  final String title;
  final String desc;
  final String imgUrl;
  final String url;
  BlogCard(
      {@required this.title,
      @required this.imgUrl,
      @required this.desc,
      @required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ReadScreen(
                      title: title,
                      url: url,
                    )));
      },
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
                    desc.length > 50 ? desc.substring(0, 50) : desc,
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
