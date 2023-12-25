import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/feed_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  List<ArticleModel> articalsD = [];

  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralN();
  }

  Future<void> getGeneralN() async {
    articalsD = await NewsService(dio: Dio()).getGeneralNews();
    isLoading = false;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 150),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          )
        : FeedList(
            feedD: articalsD,
          );
  }
}
