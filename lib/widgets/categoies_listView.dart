import 'package:flutter/material.dart';
import 'package:news_app_two/models/category_mdel.dart';
import 'package:news_app_two/widgets/category_card.dart';

// ignore: must_be_immutable
class CategoiesListView extends StatelessWidget {
   CategoiesListView({
    super.key,
  });
  
  List<CategoriesModels> categories=[
    CategoriesModels(image: "images/sports.jpeg", CategoriesName: "sports"),
    CategoriesModels(image: "images/health.png", CategoriesName: "health"),
    CategoriesModels(image: "images/technology.jpeg", CategoriesName: "technology"),
    CategoriesModels(image: "images/science.jpeg", CategoriesName: "science"),
    CategoriesModels(image: "images/business.jpeg", CategoriesName: "business"),
    CategoriesModels(image: "images/entertaiment.jpeg", CategoriesName: "entertainment"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index],);
        },
      ),
    );
  }
}

