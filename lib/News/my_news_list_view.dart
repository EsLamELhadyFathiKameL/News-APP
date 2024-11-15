import 'package:flutter/cupertino.dart';
import 'package:my_news_app/ModeLs/my_news_model.dart';
import 'package:my_news_app/News/my_news.dart';

class MyNewsListView extends StatelessWidget {
  const MyNewsListView({
    super.key,
    required this.newsList,
  });
  final List<MyNewsModeL> newsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return MyNews(
          myNewsModeL: newsList[index],
        );
      },
    );
  }
}
