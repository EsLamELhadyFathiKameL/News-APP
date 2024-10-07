import 'package:flutter/cupertino.dart';
import 'package:my_news_app/Cards/my_card.dart';

class MyCardsListView extends StatelessWidget {
  const MyCardsListView({super.key});
  final List<MyCard> cardsList = const [
    MyCard(
      cardImage: "Images/business.jpeg",
      cardName: "Business",
    ),
    MyCard(
      cardImage: "Images/entertaiment.jpeg",
      cardName: "Entertainment",
    ),
    MyCard(
      cardImage: "Images/general.jpeg",
      cardName: "GeneraL",
    ),
    MyCard(
      cardImage: "Images/health.jpeg",
      cardName: "HeaLth",
    ),
    MyCard(
      cardImage: "Images/science.jpeg",
      cardName: "Science",
    ),
    MyCard(
      cardImage: "Images/sports.jpeg",
      cardName: "Sports",
    ),
    MyCard(
      cardImage: "Images/technology.jpg",
      cardName: "TechnoLogy",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cardsList.length,
        itemBuilder: (context, index) {
          return cardsList[index];
        },
      ),
    );
  }
}
