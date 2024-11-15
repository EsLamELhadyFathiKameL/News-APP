import 'package:flutter/material.dart';
import 'package:my_news_app/Screens/my_card_news_page.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.cardImage,
    required this.cardName,
  });
  final String cardImage;
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MyCardNewsPage(cardName: cardName);
            },
          ),
        );
      },
      child: Container(
        width: 170,
        height: 100,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(cardImage),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          cardName,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
      ),
    );
  }
}
