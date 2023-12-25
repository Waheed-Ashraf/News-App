import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/feed_list.dart';

class NewsListBuilder extends StatefulWidget {
  NewsListBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  // List<ArticleModel> articalsD = [];

  // bool isLoading = true;
  var data;
  @override
  void initState() {
    super.initState();
    data =
        NewsService(dio: Dio()).getGeneralNews(categoryType: widget.category);
    // getGeneralN();
  }

  // Future<void> getGeneralN() async {
  //   articalsD = await NewsService(dio: Dio()).getGeneralNews();
  //   isLoading = false;

  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: data,
        // ignore: non_constant_identifier_names
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return FeedList(
              feedD: Snapshot.data!,
            );
          } else if (Snapshot.hasError) {
            return const Center(
              child: Text(
                'ooops there is an Error, Please Try again Later',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
            );
          }
        });

    //   return isLoading
    //       ? const SliverToBoxAdapter(
    //           child: Center(
    //             child: Padding(
    //               padding: EdgeInsets.only(top: 150),
    //               child: SizedBox(
    //                 width: 30,
    //                 height: 30,
    //                 child: CircularProgressIndicator(
    //                   color: Colors.orange,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         )
    //       : FeedList(
    //           feedD: articalsD,
    //         );
  }
}
