import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsify/Widget/web_view.dart';
import 'package:newsify/models/artical_model.dart';

class PostItem extends StatelessWidget {
  final ArticalModel articalModel;
  const PostItem({super.key, required this.articalModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(
              url: articalModel.url,
            ),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: CachedNetworkImage(
              imageUrl: articalModel.image ?? "",
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
              alignment: Alignment.center,
              placeholder: (context, url) => Container(color: Colors.grey,),
              errorWidget: (context, url, error) => const Icon(Icons.error_outline),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articalModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.start,
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articalModel.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
            textAlign: TextAlign.start,
            textDirection: TextDirection.rtl,
          )
        ],
      ),
    );
  }
}
