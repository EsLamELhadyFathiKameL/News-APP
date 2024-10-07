import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebViewPage extends StatelessWidget {
  const MyWebViewPage({
    super.key,
    required this.newsUrL,
  });
  final String newsUrL;

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
              "DetaiLs",
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
        child: WebView(
          initialUrl: newsUrL,
        ),
      ),
    );
  }
}
