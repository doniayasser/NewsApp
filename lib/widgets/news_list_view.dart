import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import 'news_item.dart';



class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});
  final List<NewsModel>articles;

  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) =>  Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 12.0),
        child: NewsItem(articleData: articles[index],),
      ),),);
  }
}
