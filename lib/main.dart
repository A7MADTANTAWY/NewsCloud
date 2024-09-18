import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/services/news_services.dart';
import 'package:news_cloud/views/home_page.dart';

void main() {
  runApp(const NewsCloud());
  NewsServices(dio: Dio()).getnews();
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
