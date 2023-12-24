import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

class FeedItem extends StatelessWidget {
  FeedItem({super.key, required this.item});
  ArticleModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: item.articleImage != null
                ? Image.network(
                    item.articleImage!,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/General.jpg',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            item.articleAuther ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            item.articleTitle ?? '',
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
