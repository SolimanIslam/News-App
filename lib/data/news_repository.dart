import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:news_app/domain/model/news.dart';

class NewsRepository {
  Future<List<News>>? getNews() async {
    try {
      var url = Uri.parse("https://riad-news-api.vercel.app/api/news");
      http.Response response = await http.get(url, headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      });
      if (response.statusCode == 200) {
        return parseNews(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    return Future.value([]);
  }

  // A function that converts a response body into a List<News>.
  List<News> parseNews(String responseBody) {
    var decode = jsonDecode(responseBody);
    final parsed =
        (decode['data'] as List).cast<Map<String, dynamic>>();

    return parsed.map<News>((json) => News.fromJson(json)).toList();
  }
}
