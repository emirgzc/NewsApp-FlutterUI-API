import 'package:flutter/material.dart';
import 'package:newsproject/models/newsitem.dart';
import 'package:newsproject/theme/constant.dart';

class HaberDetailScreen extends StatelessWidget {
  const HaberDetailScreen({Key? key, required this.newsItem}) : super(key: key);

  final NewsItem newsItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'JobSwire Haber',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  newsItem.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Text(
                  newsItem.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Kaynak : " + newsItem.newsName,
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 0.05,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  newsItem.description,
                  style: TextStyle(
                    fontSize: 13,
                    wordSpacing: 4,
                    letterSpacing: 1,
                    color: Colors.black.withOpacity(0.58),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Wrap(
                children: [
                  Container(
                    height: 45,
                    width: 72,
                    color: const Color.fromARGB(255, 14, 91, 153),
                    child: const Icon(
                      Icons.facebook,
                      color: bgColor,
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 72,
                    color: Colors.red,
                    child: const Icon(
                      Icons.email_outlined,
                      color: bgColor,
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 72,
                    color: Colors.blue,
                    child: const Icon(
                      Icons.flight_land_outlined,
                      color: bgColor,
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 72,
                    color: const Color.fromARGB(255, 215, 46, 34),
                    child: const Icon(
                      Icons.picture_in_picture_alt_outlined,
                      color: bgColor,
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 72,
                    color: const Color.fromARGB(255, 23, 108, 177),
                    child: const Icon(
                      Icons.social_distance,
                      color: bgColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
