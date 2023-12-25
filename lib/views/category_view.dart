import 'package:flutter/material.dart';
import 'package:news_app/widgets/new_list_builder.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(slivers: [
          NewsListBuilder(category: category),
        ]),
      ),
    );
  }
}
