import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsproject/models/newsitem.dart';

class ApiClient {
  static const String baseUrl = "https://api.collectapi.com/";

  Future<List<NewsItem>> getNews() async {
    try {
      String apiUrl = baseUrl + "news/getNews?country=tr&tag=general";
      Map<String, dynamic> requestBody = {
        'country': "tr",
        'tag': "general",
      };
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'authorization':
              'apikey 4YWjsOAgl1VMzpUWIkduii:16nm4rj5VfkaoQqmIcVVdr',
        },
        body: jsonEncode(
          requestBody,
        ),
      );

      if (response.statusCode == 200) {
        Iterable iterable = jsonDecode(response.body)["result"];
        if (iterable == null) {
          throw Exception('apide boş');
        }
        List<NewsItem> modelList =
            List.from(iterable.map((e) => NewsItem.fromJson(e)));
        return modelList;
      } else {
        throw Exception('apide hata var');
      }
    } catch (e) {
      rethrow;
    }
  }
}
