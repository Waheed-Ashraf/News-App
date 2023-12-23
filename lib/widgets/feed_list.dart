import 'package:flutter/material.dart';
import 'package:news_app/models/feed_model.dart';
import 'package:news_app/widgets/feed_item.dart';

class FeedList extends StatelessWidget {
  FeedList({super.key});
  List<FeedModel> feedD = [
    FeedModel(
        feedImage: 'assets/General.jpg',
        feedSubtitle: 'gjhljjhkjhlkjhl hkjhljhlk lhjhlkjh ljhjkhl uhlkjhli',
        feedTitle: 'feedTitle'),
    FeedModel(
        feedImage: 'assets/General.jpg',
        feedSubtitle: 'gjhljjhkjhlkjhl hkjhljhlk lhjhlkjh ljhjkhl uhlkjhli',
        feedTitle: 'feedTitle'),
    FeedModel(
        feedImage: 'assets/General.jpg',
        feedSubtitle: 'gjhljjhkjhlkjhl hkjhljhlk lhjhlkjh ljhjkhl uhlkjhli',
        feedTitle: 'feedTitle'),
    FeedModel(
        feedImage: 'assets/General.jpg',
        feedSubtitle: 'gjhljjhkjhlkjhl hkjhljhlk lhjhlkjh ljhjkhl uhlkjhli',
        feedTitle: 'feedTitle'),
  ];

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
