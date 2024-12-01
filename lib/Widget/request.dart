// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsify/models/artical_model.dart';
import 'package:newsify/services/news_services.dart';

import 'circular_progress_indicator.dart';
import 'error_request.dart';
import 'post_item_list_view.dart';
class Request extends StatefulWidget {
  final String type;
  final double width;
  const Request({super.key , required this.type, required this.width});
  @override
  State<Request> createState() => _RequestState();
}
class _RequestState extends State<Request> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(dio:Dio()).getNews(widget.type);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future:future,
        builder: (context, snapshot) {
          if(snapshot.hasData)
          {
              return PostItemListView(artical:snapshot.data??[],width: widget.width,);
          }
          else if(snapshot.hasError)
          {
            return const SliverToBoxAdapter(child: ErrorRequestContainer());
          }
          else
          {
            return const SliverToBoxAdapter(child: CircularProgress(),);

          }
        },
    );
  }
}




