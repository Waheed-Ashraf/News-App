import 'package:flutter/material.dart';

class ArticleModel {
  final String? articleImage;
  final String? articleAuther;
  final String? articleTitle;
  ArticleModel({
    required this.articleImage,
    required this.articleAuther,
    required this.articleTitle,
  });

  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      articleTitle: json['title'],
      articleAuther: json['author'],
      articleImage: json['urlToImage'],
    );
  }
}
