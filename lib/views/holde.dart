// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_two/models/article_model.dart';
// import 'package:news_app_two/services/news_service.dart';
// import 'package:news_app_two/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//    NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   bool isLoading=true;
//   //
//   List<ArticleModel> articles=[];
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
    
//   }

//   Future<void> getGeneralNews() async {
//     articles= await NewsService(Dio()).getNews();
//      isLoading=false;
//     setState(() {});
    
//   }
//   //

//   @override
//   Widget build(BuildContext context) {
//     return isLoading ? 
//     SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()),) 
//     : 
//     SliverList(delegate: SliverChildBuilderDelegate(
//             childCount: articles.length,
//             (context, index) {
//               return NewsTile(articleModel: articles[index],);
//             }
//           )
//           );
//   }
// }