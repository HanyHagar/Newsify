import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsify/services/news_services.dart';

import 'layouts/splash_screen.dart';

void main() {
  NewsService(dio:Dio()).getNews('sports');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

