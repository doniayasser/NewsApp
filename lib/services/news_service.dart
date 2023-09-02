import 'package:dio/dio.dart';
import '../models/news_model.dart';

class NewsServices{
  NewsServices(this.dio,);
  final Dio dio ;
  String apiKey='5116c0010b3947e385de5f34efdf02d2';
  String baseUrl='https://newsapi.org/v2/top-headlines';

  Future<List<NewsModel>> getNews({required String category}) async {
   try
       {
         Response response = await dio.get('$baseUrl?country=us&category=$category&apiKey=$apiKey');
         Map<String,dynamic> jsonData = response.data;
         List<dynamic> articles=jsonData['articles'];
         List<NewsModel> articlesList=[];
         for(var article in articles)
         {
           NewsModel articleModel=
           NewsModel(imgUrl: article['urlToImage'], title: article['title'], subTitle: article['description']);
           if(articleModel.title !=null || articleModel.subTitle !=null || articleModel.imgUrl!=null)
           {
             articlesList.add(articleModel);
           }

         }
         return articlesList;

       }
       catch(error)
       {
         return [];
       }

  }


}