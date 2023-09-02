import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import 'package:news/views/article_view.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleData});
  final NewsModel articleData;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ArticleView(articleData: articleData),));
      },
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: articleData.imgUrl !=null ? Image.network(
                  articleData.imgUrl!,
                  fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ):  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey),
                   ),
                width: double.infinity,
                  height: MediaQuery.of(context).size.width*0.37,
                  child: const Center(child: Icon(Icons.error_outline,))),
          ),
          const SizedBox(height: 12,),
           Text(
            articleData.title ??'',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            articleData.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
