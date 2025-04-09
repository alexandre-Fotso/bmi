import 'package:bmiapp/pageviews/display_carousel_widget.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "List",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            color: Colors.white
            ),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            Text(
              "Carousel",
              style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20,),
            DisplayCarouselWidget()
          ]
        )
      ),
    );
  }
}
