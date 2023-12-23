import 'package:flutter/material.dart';
import 'package:news_app/models/categori_model.dart';
import 'package:news_app/widgets/categories_item.dart';
import 'package:news_app/widgets/categories_list.dart';
import 'package:news_app/widgets/feed_item.dart';
import 'package:news_app/widgets/feed_list.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          toolbarOpacity: 0,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesList(),
            ),
            FeedList(),
          ],
        ));
  }
}
