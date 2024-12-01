import 'package:dio/dio.dart';
import 'package:newsify/models/artical_model.dart';

class NewsService{
  final Dio dio ;

  const NewsService({required this.dio});
  Future<List<ArticalModel>> getNews(String category) async {
   Response response = await dio.get(
     'https://saurav.tech/NewsAPI/top-headlines/category/$category/in.json'
   );
   Map<String,dynamic> jsonData = response.data;
   List<dynamic> artical = jsonData["articles"];
   List<ArticalModel> articalNews= [];

    for(var artical in artical) {
      ArticalModel articalModel = ArticalModel.fromJson(artical);
      articalNews.add(articalModel);
    }
    return articalNews;
  }
}