import 'package:flutter/material.dart';
import 'package:news_app_two/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.only(top: 15,left:10 ,right: 10,bottom: 10),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category),
          ],
        ),
      ),
    );
  }
}