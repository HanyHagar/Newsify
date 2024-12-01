
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsify/Widget/category_list_view.dart';
import 'package:newsify/Widget/request.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print('constraints : ${constraints.maxWidth}');
         return Body(width: constraints.maxWidth);
        },
      ),
    );
  }
}

class Body extends StatelessWidget {
  final double width;
  const Body({
    super.key, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CategoryListView(),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'أخر الاخبار',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    fontFamily: 'Alexandria'),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          Request(
            type: 'general',
            width: width,
          )
        ],
      ),
    );
  }
}

