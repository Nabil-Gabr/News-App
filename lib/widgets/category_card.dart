import 'package:flutter/material.dart';
import 'package:news_app_two/models/category_mdel.dart';
import 'package:news_app_two/views/category_view.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.category,
  });
  
  final CategoriesModels category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(category: category.CategoriesName,);
        },));
      },
      child: Padding(
        padding:EdgeInsets.only(right: 12),
        child: Container(
          width: 200,
          height: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("${category.image}"),
              fit: BoxFit.fill
              ),
            borderRadius: BorderRadius.circular(12)
          ),
        
          child: Center(child: Text("${category.CategoriesName}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}