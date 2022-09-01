// ignore_for_file: prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home_page.dart';

Stack CarouselStack(BuildContext context, int index) {
  return Stack(
    children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: Image.asset(
            images[index],
            fit: BoxFit.cover,
          ),
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.4, 1],
            ),
          ),
        ),
      ),
      Positioned(
        left: 20,
        bottom: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categoryImagesText[index],
              style: TextStyle(
                color: Colors.white,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Avalon Bold',
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Shop Now",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Avalon Regular',
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
