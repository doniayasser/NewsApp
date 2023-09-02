import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key, required this.category,});
  final String category;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var data;

  @override
  void initState() {
    data=NewsServices(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<NewsModel>>(
        future: data,
        builder: (context,snapshots){
          if(snapshots.hasData)
            {
              return NewsListView(articles: snapshots.data!,);
            }
          else if(snapshots.hasError)
          {
            return const SliverFillRemaining(
              child: Center(
                child: Text(
                      'There was an error,Please try later',
                  ),
              ));
          }
          else
            {
              return const SliverFillRemaining(child: Center(child: CircularProgressIndicator()),);
            }

        },
    );

  }
}





