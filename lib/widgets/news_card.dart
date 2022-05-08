import 'package:flutter/material.dart';
import 'package:newsproject/models/newsitem.dart';
import 'package:newsproject/screens/news_detail_screen.dart';
import 'package:newsproject/theme/constant.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.newsItem,
  }) : super(key: key);

  final NewsItem newsItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 12, right: 12),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            height: 52,
            decoration: const BoxDecoration(
              color: bgSecondaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/bg_logo.png",
                ),
                const SizedBox(width: 16),
                const Text(
                  "JobSwire Haber",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HaberDetailScreen(
                  newsItem: newsItem,
                ),
              ),
            ),
            child: SizedBox(
              height: 190,
              width: double.infinity,
              child: Image.network(
                newsItem.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 3),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: bgSecondaryColor,
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HaberDetailScreen(
                        newsItem: newsItem,
                      ),
                    ),
                  ),
                  child: Text(
                    newsItem.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                      color: Colors.black.withOpacity(0.75),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // const SizedBox(height: 16),
                // Text(
                //   newsItem.dateTime,
                //   style: TextStyle(
                //     fontSize: 11,
                //     letterSpacing: 0.05,
                //     color: Colors.black.withOpacity(0.4),
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
                // const SizedBox(height: 16),
                // Text(
                //   newsItem.titleLong,
                //   style: TextStyle(
                //     height: 2,
                //     fontSize: 13,
                //     color: Colors.black.withOpacity(0.8),
                //     fontWeight: FontWeight.w400,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const SizedBox(height: 1),
          Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 10,
              bottom: 4,
            ),
            height: 52,
            decoration: const BoxDecoration(
              color: bgSecondaryColor,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 16,
                ),
                const SizedBox(width: 10),
                Container(
                  height: 12,
                  width: 1,
                  color: Colors.black.withOpacity(0.4),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.share,
                  size: 15,
                ),
                const SizedBox(width: 10),
                // Text(
                //   newsItem.okunma + " okunma",
                //   style: TextStyle(
                //     fontSize: 10,
                //     letterSpacing: 0.05,
                //     color: Colors.black.withOpacity(0.7),
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
                const Spacer(),
                Container(
                  height: 52,
                  width: 1,
                  color: Colors.grey.withOpacity(0.12),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HaberDetailScreen(
                        newsItem: newsItem,
                      ),
                    ),
                  ),
                  child: const Text(
                    "devamını oku...",
                    style: TextStyle(
                      letterSpacing: 0.05,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
