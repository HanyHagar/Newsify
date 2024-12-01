import 'package:flutter/material.dart';
import 'package:newsify/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
          end: 15
      ),
      child: Container(
        width: 155,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(category.assetImage),
              fit: BoxFit.fill
          ),
        ),
        child: Center(
          child: Text(
            category.name,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 28
            ),
          ),
        ),
      ),
    );
  }
}
