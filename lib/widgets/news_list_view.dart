import 'package:flutter/material.dart';
import 'package:news_app_two/models/article_model.dart';
import 'package:news_app_two/widgets/news_tile.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

   NewsListView({
    super.key, required this.articles,
  });

  
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) {
              return NewsTile(articleModel: articles[index],);
            }
          )
          );
  }
}