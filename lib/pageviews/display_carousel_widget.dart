import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DisplayCarouselWidget extends StatelessWidget {
  List<String> imagesList = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/2.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];

  DisplayCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 241,
      alignment: Alignment.center,
      child: CarouselSlider.builder(
        itemCount: imagesList.length,
        itemBuilder: (BuildContext context, int index, int pageViewIndex) {
          return Container(
              child: Image.asset(
                imagesList[index]
              ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          scrollDirection:Axis.horizontal,
          aspectRatio: 1.5,
          viewportFraction: 0.75,
          onPageChanged: (index , reason){

          }
        ),
      ),
    );
  }
}
