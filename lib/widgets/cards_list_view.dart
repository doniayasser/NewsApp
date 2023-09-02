import 'package:flutter/cupertino.dart';
import 'package:news/models/category_models.dart';
import 'card_item.dart';

class CardsListView extends StatelessWidget {
  const CardsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories=[
      CategoryModel(title: 'General', imgUrl: 'assets/general.jpg'),
      CategoryModel(title: 'Science', imgUrl: 'assets/science.avif'),
      CategoryModel(title: 'Business', imgUrl: 'assets/business.jpg'),
      CategoryModel(title: 'Sports', imgUrl: 'assets/sports.jpeg'),
      CategoryModel(title: 'Health', imgUrl: 'assets/health.avif'),
      CategoryModel(title: 'Technology', imgUrl: 'assets/technology.jpeg'),
      CategoryModel(title: 'Entertainment', imgUrl: 'assets/entertaiment.avif'),
    ];
    return  SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CardItem(category: categories[index]),
          );
        },
      ),
    );
  }
}






