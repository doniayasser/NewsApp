import 'package:flutter/material.dart';
import '../widgets/cards_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Text('News',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
            Text('Cloud',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: CustomScrollView(
          slivers: [
             SliverToBoxAdapter(
              child: Column(
                children: const [
                  CardsListView(),
                  SizedBox(height: 24),
                ],
              ),
            ),
            NewsListBuilder(category: category),
          ],

        ),
      ),
    );
  }
}



