import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:routonews/model/article_model.dart';

List<Article> news_list = [];
String url =
    "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=3084491ecc28484cb833271b4173b2c8";
fetchNews() async {
  var data = await http.get(url);
  var jsonData = jsonDecode(data.body);
  if (jsonData['status'] == 'ok') {
    jsonData['articles'].forEach((element) {
      Article article = Article(
          title: element['title'],
          author: element['author'],
          description: element['description'],
          url: element['url'],
          urlToImg: element['urlToImage'],
          contnent: element['content'],
          publishAt: element['publishedAt']);
      news_list.add(article);
    });
  }
  print(news_list.length);
  return news_list;
}
