import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget imageCarousel = new Container(
     // height: 300,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.asset('assets/images/IQ1.jpg'),
          Image.asset('assets/images/IQ2.jpg'),
          Image.asset('assets/images/CG3.jpg'),
          Image.asset('assets/images/c4.jpg'),
          Image.asset('assets/images/c5.jpg'),
        ],
        autoplay: true,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        noRadiusForIndicator: true,
      ),
    );