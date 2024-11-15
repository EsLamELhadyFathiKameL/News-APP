import 'package:flutter/material.dart';
import 'package:my_news_app/Screens/my_news_page.dart';

void main() {
  runApp(const MyNewsAPP());
}

class MyNewsAPP extends StatelessWidget {
  const MyNewsAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNewsPage(),
    );
  }
}
