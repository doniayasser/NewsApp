import 'package:flutter/material.dart';
import 'package:news/models/category_models.dart';
import 'package:news/views/news_view.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context) =>  NewsView(category: category.title.toLowerCase(),),));
      },
      child: Container(
        width: 260,
        height: 50,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image:  DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(
              category.imgUrl,
          )),
        ),
        child:  Center(child: Text(category.title,style: const TextStyle(color: Colors.white,fontSize: 20),)),
      ),
    );
  }
}



