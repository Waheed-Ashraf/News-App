import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/feed_item.dart';

class FeedList extends StatefulWidget {
  FeedList({super.key});

  @override
  State<FeedList> createState() => _FeedListState();
}

class _FeedListState extends State<FeedList> {
  List<ArticleModel> feedD = [];

  @override
  void initState() {
    super.initState();
    getGeneralN();
  }

  Future<void> getGeneralN() async {
    feedD = await NewsService(dio: Dio()).getGeneralNews();
    setState(() {});
  }

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
