import 'package:dio/dio.dart';
import 'package:my_news_app/ModeLs/my_news_model.dart';

class MyNewsService {
  final dio = Dio();
  final String baseUrL = "https://newsapi.org";
  final String apiKey = "ad1cd7ba957e4077ad1bab2857f72ba6";
  Future<List<MyNewsModeL>> myGetNewsMethod({required String category}) async {
    try {
      Response response = await dio.get(
        "$baseUrL/v2/top-headlines?country=us&category=$category&apiKey=$apiKey",
      );
      Map<String, dynamic> jsonResponse = response.data;
      List<dynamic> articLes = jsonResponse["articles"];
      List<MyNewsModeL> articLesList = [];
      for (var articLe in articLes) {
        MyNewsModeL myNewsModeL = MyNewsModeL.fromJson(articLe);
        articLesList.add(myNewsModeL);
      }
      return articLesList;
    } on DioException catch (ex) {
      throw Exception(
        "Dio Error: ${ex.message}",
      );
    } catch (e) {
      throw Exception(
        "There Is An Error, PLease Try Again Later.",
      );
    }
  }
}
