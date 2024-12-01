import 'package:flutter/material.dart';
import 'package:newsify/models/category_model.dart';
import 'CategoryNewsView.dart';
import 'category_item.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  final List<CategoryModel> categoryAr = const[
    CategoryModel(assetImage: 'assets/business.jpg', name: 'إقتصاد'),
    CategoryModel(assetImage: 'assets/entertaiment.avif', name: 'ترفيه'),
    CategoryModel(assetImage: 'assets/health.avif', name: 'صحة'),
    CategoryModel(assetImage: 'assets/science.avif', name: 'علوم'),
    CategoryModel(assetImage: 'assets/sports.jpg', name: 'رياضة'),
    CategoryModel(assetImage: 'assets/technology.jpeg', name: 'تكنولوجيا'),
  ];
  final List<CategoryModel> categoryUS = const[
    CategoryModel(assetImage: 'assets/business.jpg', name: 'Business'),
    CategoryModel(assetImage: 'assets/entertaiment.avif', name: 'Entertainment'),
    CategoryModel(assetImage: 'assets/health.avif', name: 'Health'),
    CategoryModel(assetImage: 'assets/science.avif', name: 'Science'),
    CategoryModel(assetImage: 'assets/sports.jpg', name: 'Sports'),
    CategoryModel(assetImage: 'assets/technology.jpeg', name: 'Technology'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryAr.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap:(){
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryView(type: categoryUS[index].name.toLowerCase(),)),
                );
              });
            } ,
            child: CategoryItem(
              category: categoryAr[index],

            ),
        ),
      ),
    );
  }
}
