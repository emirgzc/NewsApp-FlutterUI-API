// ignore_for_file: must_be_immutable, body_might_complete_normally_nullable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsproject/models/newsitem.dart';
import 'package:newsproject/theme/constant.dart';
import 'package:newsproject/viewModels/news_view_model.dart';
import 'package:newsproject/widgets/news_card.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({Key? key}) : super(key: key);

  NewsViewModel? newsViewModel;

  @override
  Widget build(BuildContext context) {
    newsViewModel = Provider.of<NewsViewModel>(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Haberler',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
          ),
        ),
      ),
      body: FutureBuilder<List<NewsItem>?>(
        future: getNews(context),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            var allNews = snapshot.data;
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ...List.generate(
                    allNews!.length,
                    (index) => NewsCard(
                      newsItem: allNews[index],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<NewsItem>?> getNews(BuildContext context) async {
    try {
      List<NewsItem> news = await newsViewModel!.getAllNews();
      return news;
    } catch (e) {
      debugPrint("Hata var : " + e.toString());
      showDialog(
        context: context,
        builder: (context) {
          return Text("Hata Var");
        },
      );
    }
  }
}
