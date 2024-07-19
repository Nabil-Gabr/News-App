import 'package:flutter/material.dart';
import 'package:news_app_two/widgets/categoies_listView.dart';
import 'package:news_app_two/widgets/news_list_view_builder.dart';


class HomeView extends StatelessWidget {
    HomeView({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Text("News",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
      //       Text("Cloud",style: TextStyle(color: Colors.blue.shade900,fontSize: 35,fontWeight: FontWeight.bold),)
      //     ],
      //   ),
      // ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 40,),
            ),

            SliverToBoxAdapter(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("News",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
            Text("Cloud",style: TextStyle(color: Colors.blue.shade900,fontSize: 35,fontWeight: FontWeight.bold),)
          ],
        ),),

        SliverToBoxAdapter(
              child: SizedBox(height: 10,),
            ),

            SliverToBoxAdapter(
              child: CategoiesListView(),
            ),
        
            SliverToBoxAdapter(
              child: SizedBox(height: 18,),
            ),
        
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),


      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 16),
      //   child: Column(
      //     children: [
      //       CategoiesListView(),
      //       SizedBox(height: 25,),
      //       Expanded(child: NewsListView()),
      //     ],
      //   ),
      // ),
    );
  }
}




