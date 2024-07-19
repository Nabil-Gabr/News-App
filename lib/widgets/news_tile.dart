import 'package:flutter/material.dart';
import 'package:news_app_two/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key, required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            child: articleModel.urlToImag !=null ?
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(articleModel.urlToImag!,width: double.infinity,height: 250,fit: BoxFit.fill,),
            )
            :
            Text('')
            ,
          ),
          const SizedBox(height: 8,),
           Text(articleModel.title,
            style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold,),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8,),
           Text(articleModel.description ?? '',
            style: TextStyle(color: Colors.grey,fontSize: 14,),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8,),
          Container(
            width: double.infinity,
            height: 1,

            color: Colors.grey,)
        ],
      ),
    );
  }
}

