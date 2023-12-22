import 'package:flutter/material.dart';
import 'package:news_app/models/categori_model.dart';

// ignore: must_be_immutable, camel_case_types
class Categories_item extends StatelessWidget {
  Categories_item({super.key, required this.item});

  Categorie_data item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
            image: AssetImage(item.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Text(
          item.type,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
