import 'dart:convert';

import 'package:newsapp/Data/Model/article.dart';
import 'package:http/http.dart' as http;

class Article {
  List<ArticleModel> article = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=eedecdfc476a421a88bf753b2c7f79f5";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'] ?? '',
            title: element['title'] ?? '',
            description: element['description'] ?? '',
            url: element['url'] ?? '',
            urlToImage: element['urlToImage'] ?? '',
            content: element['content'] ?? '',
            publishedAt: DateTime.parse(element['publishedAt'] ?? ''),
          );
          article.add(articleModel);
        }
      });
    }
  }
}
