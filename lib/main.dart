import 'package:flutter/material.dart';
import 'package:newsproject/screens/news_screen.dart';
import 'package:newsproject/utilities/locator.dart';
import 'package:newsproject/viewModels/news_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NewsViewModel(),
      child: MaterialApp(
        title: 'JobSwire News',
        debugShowCheckedModeBanner: false,
        home: NewsScreen(),
      ),
    );
  }
}
