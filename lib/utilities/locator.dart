import 'package:get_it/get_it.dart';
import 'package:newsproject/data/api_client.dart';
import 'package:newsproject/repository/news_repository.dart';
import 'package:newsproject/viewModels/news_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<ApiClient>(ApiClient());
  locator.registerSingleton<NewsRepository>(NewsRepository());
  locator.registerSingleton<NewsViewModel>(NewsViewModel());
}
