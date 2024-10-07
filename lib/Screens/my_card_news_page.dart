import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_news_app/Screens/my_get_news_page.dart';

class MyCardNewsPage extends StatelessWidget {
  const MyCardNewsPage({
    super.key,
    required this.cardName,
  });
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            MdiIcons.arrowLeft,
            color: Colors.black,
            size: 25,
          ),
        ),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cardName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: "Pacifico",
              ),
            ),
            const Text(
              "News",
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
        child: MyGetNewsPage(category: cardName),
      ),
    );
  }
}
