import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/feed_item.dart';

class FeedList extends StatelessWidget {
  FeedList({super.key, required this.feedD});

  List<ArticleModel> feedD;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: feedD.length,
          (context, index) {
        return FeedItem(item: feedD[index]);
      }),
    );
  }
}
