import 'package:dio/dio.dart';
import 'package:news_cloud/models/artical_model.dart';

class NewsServices {
  Dio dio = Dio();
  NewsServices({required this.dio});
  Future<List<ArticleModel>> getnews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/everything?q=general&apiKey=198867bb22294c57b4ae55b8832e22e7');
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    List<ArticleModel> articlesitems = [];
    for (var element in articles) {
      ArticleModel articleModel = ArticleModel(
          image: element['urlToImage'],
          title: element['title'],
          subtitle: element['description']);
      articlesitems.add(articleModel);
    }
    return articlesitems;
  }
}
