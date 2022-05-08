import 'package:flutter/material.dart';
import 'package:newsproject/models/newsitem.dart';
import 'package:newsproject/repository/news_repository.dart';
import 'package:newsproject/utilities/locator.dart';

enum NewsStatus { busy, free }

class NewsViewModel extends ChangeNotifier {
  static NewsStatus _status = NewsStatus.free;
  final NewsRepository _repository = locator<NewsRepository>();

  static NewsStatus get status => _status;

  Future<List<NewsItem>> getAllNews() async {
    _status = NewsStatus.busy;
    try {
      List<NewsItem> list = await _repository.getAllNews();
      return list;
    } catch (e) {
      rethrow;
    } finally {
      _status = NewsStatus.free;
    }
  }
}
