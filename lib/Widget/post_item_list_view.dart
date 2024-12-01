
import 'package:flutter/material.dart';
import 'package:newsify/Widget/post_item.dart';
import 'package:newsify/models/artical_model.dart';

class PostItemListView extends StatelessWidget {
  final List<ArticalModel> artical;
  final width;
  const PostItemListView({super.key, required this.artical, this.width});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.sizeOf(context);
    if (width < 500 ) {
      return PhoneBody(artical: artical);
    }
    if (width >= 500 && width < 700){
      return TabletBody(mediaQuery: mediaQuery, artical: artical);
    }
    else{
      return ComputerBody(mediaQuery: mediaQuery, artical: artical);
    }
  }
}

class ComputerBody extends StatelessWidget {
  const ComputerBody({
    super.key,
    required this.mediaQuery,
    required this.artical,
  });

  final Size mediaQuery;
  final List<ArticalModel> artical;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 0,mainAxisExtent: mediaQuery.height/2,crossAxisSpacing: mediaQuery.width/50),
        delegate: SliverChildBuilderDelegate(
          childCount: artical.length,
          (context, index) => PostItem(articalModel:artical[index]),
        ),
    );
  }
}

class TabletBody extends StatelessWidget {
  const TabletBody({
    super.key,
    required this.mediaQuery,
    required this.artical,
  });

  final Size mediaQuery;
  final List<ArticalModel> artical;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 0,mainAxisExtent: mediaQuery.height/2,crossAxisSpacing: mediaQuery.width/50),
      delegate: SliverChildBuilderDelegate(
        childCount: artical.length,
            (context, index) => PostItem(articalModel:artical[index]),
      ),
    );
  }
}

class PhoneBody extends StatelessWidget {
  const PhoneBody({
    super.key,
    required this.artical,
  });

  final List<ArticalModel> artical;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: artical.length,
            (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: PostItem(articalModel:artical[index]),
        ),
      ),
    );
  }
}
