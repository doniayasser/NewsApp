import 'package:flutter/material.dart';
import '../models/news_model.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key, required this.articleData});
  final NewsModel articleData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 16,),
            const Text(
              'Title:',
              style: TextStyle(
                decorationColor: Colors.transparent,
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              articleData.title ??'',
              style: const TextStyle(
                decorationColor: Colors.transparent,
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16,),
            const Text(
              'Content:',
              style: TextStyle(
                decorationColor: Colors.transparent,
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              articleData.subTitle ?? '',
              style: const TextStyle(
                fontSize: 16,
                decorationColor: Colors.transparent,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
