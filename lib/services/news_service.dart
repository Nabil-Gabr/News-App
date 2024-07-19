import 'package:dio/dio.dart';
import 'package:news_app_two/models/article_model.dart';

class NewsService{
  //Step 1\1 : create Object dio
  final  Dio dio;

  NewsService(this.dio);
  
  //Step 1\2 : create Function(getNews)
  Future<List<ArticleModel>> getNews({required String category}) async{
    try {
      //Step 1\3 : response and request
    var response= await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=8a1e9e8a151640078fd0e31af3a7a20a&category=$category');
    
    //Step 1\4 :  store jsonData in value
    Map<String ,dynamic> jsonData=response.data;
    
    //Step 1\5 : filtering Data
    List<dynamic>articles=jsonData['articles'];

    //=============================convert List of Map to List of Object : =============

    //step 1 : create List of Object
    List<ArticleModel> articlesList=[];
    
    //step 2 :for loop (convert List of Map to List of Object)
    for (var article in articles) {
      
      //step 3 : create Object 
      ArticleModel articleModel= ArticleModel(
        title: article['title'], 
        urlToImag: article['urlToImage'], 
        description: article['description']
      );
      
      //step 4 : add Objects to List of Object
      articlesList.add(articleModel);
      
    }

    return articlesList;
    } catch (e) {
      return [];
    }


  

  }

}