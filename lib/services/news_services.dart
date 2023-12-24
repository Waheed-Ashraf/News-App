import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsService {
  var dio = Dio();
  NewsService({required this.dio});
  Future<List<ArticleModel>> getGeneralNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=8e1d68ae10c2455b95d2cbb006eae855&category=general');

    Map<String, dynamic> jesonData = response.data;

    List<dynamic> generalArticles = jesonData['articles'];

    List<ArticleModel> articalsList = [];
    for (var article in generalArticles) {
      ArticleModel articleModel = ArticleModel(
          articleTitle: article['title'],
          articleAuther: article['author'],
          articleImage: article['urlToImage']);
      articalsList.add(articleModel);
    }

    return (articalsList);
  }
}
