import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routonews/helper/data.dart';
import 'package:routonews/helper/news.dart';
import 'package:routonews/model/article_model.dart';
import 'package:routonews/widget/card_blog.dart';
import 'package:routonews/widget/category_item.dart';

import 'model/category_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> categories = new List<Category>();
  List<Article> articles = new List<Article>();
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getData();
  }

  getData() async {
    articles = await fetchNews();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Routo ',
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
            Text(
              'News',
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 65,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return CategoryItem(
                      name: categories[index].categoryName,
                      imgUrl: categories[index].imgUrl,
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: _loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: articles.length,
                          physics: ScrollPhysics(),
                          itemBuilder: (BuildContext context, index) {
                            return BlogCard(
                              title: articles[index].title,
                              imgUrl: articles[index].urlToImg,
                              desc: articles[index].description,
                            );
                          }),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
