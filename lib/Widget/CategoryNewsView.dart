import 'package:flutter/material.dart';
import 'package:newsify/Widget/request.dart';

class CategoryView extends StatelessWidget {
  final String type;
  const CategoryView({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomScrollView(
                slivers: [
                  Request(type: type, width: constraints.maxWidth,),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
