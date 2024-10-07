// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:my_news_app/ModeLs/my_news_model.dart';
import 'package:my_news_app/News/my_news_list_view.dart';
import 'package:my_news_app/Services/my_news_service.dart';

class MyGetNewsPage extends StatefulWidget {
  const MyGetNewsPage({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<MyGetNewsPage> createState() => _MyGetNewsPageState();
}

class _MyGetNewsPageState extends State<MyGetNewsPage> {
  var future;
  @override
  void initState() {
    super.initState();
    future = MyNewsService().myGetNewsMethod(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MyNewsModeL>>(
      future: future,
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return MyNewsListView(newsList: snapShot.data!);
        } else if (snapShot.hasError) {
          return const Center(
            child: Text(
              "OOPs There Is An Error \n PLease, Try Again Later",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: "Pacifico",
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
