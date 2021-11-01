import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:news_app/model/articles.dart';

//buat var untuk base url dan APikey

String apiKey = 'f342cff3d5de4e6abc0604909f533bf4';
String baseUrl = 'https://newsapi.org/v2';

class News {
  Future<List<Article>?> getNews() async {
    List<Article>? list;
    String url = '$baseUrl/top-headlines?country=id&apiKey=$apiKey';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      //  kalau dia success
      var data = jsonDecode(response.body);
      var result = data['articles'] as List;
      list = result.map<Article>((json) => Article.fromJson(json)).toList();
      print(response.body);
    }
    return list;
  }
}

class RequestByCategory {
  Future<List<Article>?> getNewsByCategory(String category) async {
    List<Article>? list;
    String url =
        '$baseUrl/top-headlines?country=id&category=$category&apiKey=$apiKey';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(response.body);
      var result = data['articles'] as List;
      list = result.map<Article>((json) => Article.fromJson(json)).toList();
    }
    return list;
  }
}
