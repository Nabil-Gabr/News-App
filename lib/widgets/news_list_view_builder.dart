import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_two/models/article_model.dart';
import 'package:news_app_two/services/news_service.dart';
import 'package:news_app_two/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({
    super.key, required this.category,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  // bool isLoading=true;
  // //
  // List<ArticleModel> articles=[];
  // @override
  // void initState() {
  //   super.initState();
  //   getGeneralNews();
    
  // }

  // Future<void> getGeneralNews() async {
  //   articles= await NewsService(Dio()).getNews();
  //    isLoading=false;
  //   setState(() {});
    
  // }
  // //
  //styp 1: create value type of var
  var future;

  //styp 2: initState( استدعاء الفنكشن )
  @override
  void initState() {
    super.initState();
    future= NewsService(Dio()).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    //styp 3 : use FutureBuilder
    return FutureBuilder<List<ArticleModel>>(
      future: future, 
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
          
        } else if(snapshot.hasError){
          return SliverToBoxAdapter(child: Text('error'),);
        } else{
          return SliverToBoxAdapter(child: Center(
            child: CircularProgressIndicator()),) ;
        }
      },
    );
    // return isLoading ? 
    // SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()),) 
    // : NewsListView(articles: articles)
    // ;
  }
}
