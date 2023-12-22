import 'package:flutter/material.dart';
import 'package:news_app/models/categori_model.dart';
import 'package:news_app/widgets/categories.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<Categorie_data> categorieD = [
    Categorie_data(image: 'assets/business.jpg', type: 'Business'),
    Categorie_data(image: 'assets/Tecknology.jpg', type: 'Tecknology'),
    Categorie_data(image: 'assets/sports.jpg', type: 'Sports'),
    Categorie_data(image: 'assets/Health.jpg', type: 'Health'),
    Categorie_data(image: 'assets/science.jpg', type: 'Science'),
    Categorie_data(image: 'assets/entertainment.jpg', type: 'Entertainment'),
    Categorie_data(image: 'assets/General.jpg', type: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarOpacity: 0,
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'New',
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
      body: SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorieD.length,
          itemBuilder: (context, index) {
            return Categories_item(item: categorieD[index]);
          },
        ),
      ),
    );
  }
}
