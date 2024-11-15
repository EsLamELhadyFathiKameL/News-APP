import 'package:flutter/material.dart';
import 'package:my_news_app/Cards/my_cards_list_view.dart';
import 'package:my_news_app/Screens/my_get_news_page.dart';

class MyNewsPage extends StatelessWidget {
  const MyNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: "Pacifico",
              ),
            ),
            Text(
              "CLoud",
              style: TextStyle(
                fontSize: 18,
                color: Colors.orange,
                fontFamily: "Pacifico",
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: const [
            MyCardsListView(),
            SizedBox(
              height: 32,
            ),
            MyGetNewsPage(category: "general"),
          ],
        ),
      ),
    );
  }
}
