import 'package:bmiapp/pageviews/page_one.dart';
import 'package:bmiapp/pageviews/page_three.dart';
import 'package:bmiapp/pageviews/page_two.dart';
import 'package:flutter/material.dart';

class PageViewDemonstratrationScreen extends StatelessWidget {
  const PageViewDemonstratrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
            PageOne(),
            PageTwo(),
            PageThree()
          ],
        )
      )
    );
  }
}
