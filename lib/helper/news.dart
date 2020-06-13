import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:routonews/model/article_model.dart';

List<Article> newList = [];
List<Article> newListCategory = [];
fetchNews() async {
  String url =
      "https://newsapi.org/v2/everything?domains=techcrunch.com,thenextweb.com&apiKey=3084491ecc28484cb833271b4173b2c8&pageSize=90&language=en&sortBy=popularitys";
  var data = await http.get(url);
  var jsonData = jsonDecode(data.body);
  if (jsonData['status'] == 'ok') {
    jsonData['articles'].forEach((element) {
      if (element['urlToImage'] != null) {
        Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImg: element['urlToImage'],
            contnent: element['content'],
            publishAt: element['publishedAt']);
        newList.add(article);
      }
    });
  }
  return newList;
}

fetchNewsByCategory(String categoryName) async {
  newListCategory.clear();
  String url =
      "https://newsapi.org/v2/top-headlines?apiKey=3084491ecc28484cb833271b4173b2c8&country=us&category=" +
          categoryName.toLowerCase() +
          "&pageSize=40";
  var data = await http.get(url);
  var jsonData = jsonDecode(data.body);
  if (jsonData['status'] == 'ok') {
    jsonData['articles'].forEach((element) {
      if (element['urlToImage'] != null &&
          element['urlToImage'] != null &&
          element['description'] != null &&
          element['title'] != null) {
        Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImg: element['urlToImage'],
            contnent: element['content'],
            publishAt: element['publishedAt']);
        newListCategory.add(article);
      }
    });
  }
  print(newListCategory.length);
  return newListCategory;
}
