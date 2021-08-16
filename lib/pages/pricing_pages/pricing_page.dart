import 'package:bugheist/pages/pricing_pages/pricing_page1.dart';
import 'package:bugheist/pages/pricing_pages/pricing_page2.dart';
import 'package:bugheist/pages/pricing_pages/pricing_page3.dart';
import 'package:bugheist/pages/pricing_pages/pricing_page4.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PricingPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CarouselSlider(
        items: [
          PricingPage1Widget(),
          PricingPage2Widget(),
          PricingPage3Widget(),
          PricingPage4Widget(),
        ],
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 4 / 3,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 400),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
