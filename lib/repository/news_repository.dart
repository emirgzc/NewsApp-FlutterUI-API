import 'package:newsproject/data/api_client.dart';
import 'package:newsproject/models/newsitem.dart';
import 'package:newsproject/utilities/locator.dart';

class NewsRepository {
  final ApiClient _apiClient = locator<ApiClient>();

  Future<List<NewsItem>> getAllNews() async {
    try {
      List<NewsItem> news = await _apiClient.getNews();
      return news;
    } catch (e) {
      rethrow;
    }
  }
}
