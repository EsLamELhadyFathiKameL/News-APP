import 'package:flutter/material.dart';
import 'package:my_news_app/ModeLs/my_news_model.dart';
import 'package:my_news_app/Screens/my_web_view_page.dart';

class MyNews extends StatelessWidget {
  const MyNews({super.key, required this.myNewsModeL});
  final MyNewsModeL myNewsModeL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MyWebViewPage(newsUrL: myNewsModeL.newsUrL);
              },
            ),
          );
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: myNewsModeL.newsImage != null
                  ? Image.network(
                      myNewsModeL.newsImage!,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    )
                  : Image.asset(
                      "Images/PaLestine.jpg",
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              myNewsModeL.newsTitLe ??
                  "Here Is OnLy The Description Of The News.",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              myNewsModeL.newsDescription ??
                  "Here Is OnLy The TitLe Of The News.",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
