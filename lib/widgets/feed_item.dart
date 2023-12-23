import 'package:flutter/material.dart';
import 'package:news_app/models/feed_model.dart';

class FeedItem extends StatelessWidget {
  FeedItem({super.key, required this.item});
  FeedModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(item.feedImage),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            item.feedTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            item.feedSubtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
