// ignore_for_file: avoid_unnecessary_containers,prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, override_on_non_overriding_member, use_key_in_widget_constructors, avoid_print, must_be_immutable

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_card_swiper/photo_card_swiper.dart';
import 'package:swipe_cards/swipe_cards.dart';

import 'widgets/appbar.dart';
import 'widgets/button.dart';
import 'widgets/carousel_stack.dart';
import 'widgets/swipe_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> images = [
  "assets/images/carousel/pic1.jpg",
  "assets/images/carousel/pic2.jpg",
  "assets/images/carousel/pic3.jpg",
  "assets/images/carousel/pic4.jpg",
  "assets/images/carousel/pic5.jpg",
  "assets/images/carousel/pic6.jpg",
  "assets/images/carousel/pic7.jpg",
];

List<String> wishlistImages = [
  "assets/images/wishlist/pic1.jpg",
  "assets/images/wishlist/pic2.jpg",
  "assets/images/wishlist/pic3.jpg",
  "assets/images/wishlist/pic4.jpg",
];

List<String> categoryImages = [
  "assets/images/category/pic1.jpg",
  "assets/images/category/pic2.jpg",
  "assets/images/category/pic3.jpg",
  "assets/images/category/pic4.jpg",
  "assets/images/category/pic5.jpg",
];

List<String> categoryTexts = [
  "Women's Dresses",
  "Men's Trainers",
  "Men's Shirt",
  "Home",
  "Women's Bags",
];

List<String> newinImages = [
  "assets/images/newin/pic1.jpg",
  "assets/images/newin/pic2.jpg",
  "assets/images/newin/pic3.jpg",
  "assets/images/newin/pic4.jpg",
  "assets/images/newin/pic5.jpg",
];

List<String> categoryImagesText = [
  "THE SELFRIDGES CORNER SHOP:\nCasablanca",
  "What to wear now:\nnew season women's",
  "Mix it up: cocktails made easy",
  "The freshest men's fashion",
  "Refreshing summer beauty",
  "Top marks: back to school staples",
  "We do\nWedding inspiration,\nwhatever your aisle style",
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SrAppBar(),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                color: Colors.black,
                height: 50,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'New season, just landed',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: .1,
                          fontFamily: 'Avalon Bold',
                        ),
                      ),
                      Text(
                        'Shop now',
                        style: TextStyle(
                          fontFamily: 'Avalon Regular',
                          color: Colors.white,
                          letterSpacing: 0.3,
                          fontSize: 13,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1.8,
                height: 1.8,
              ),
              Container(
                width: double.infinity,
                height: 380,
                child: Swiper(
                  indicatorLayout: PageIndicatorLayout.COLOR,
                  autoplay: true,
                  controller: SwiperController(),
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.grey[200],
                      activeColor: Colors.grey[500],
                    ),
                  ),
                  control: null,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CarouselStack(context, index);
                  },
                ),
              ),
              Divider(
                color: Colors.white,
                height: 7,
              ),
              Container(
                height: 320,
                color: Colors.grey[200],
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wishlist',
                          style: TextStyle(
                            letterSpacing: .2,
                            fontSize: 16,
                            fontFamily: 'Avalon Bold',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'VIEW ALL',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontFamily: "Avalon Regular"),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 5,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ᐳ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: "Avalon Regular",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: wishlistImages.length,
                        itemBuilder: ((BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(
                                wishlistImages[index],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shop by category',
                      style: TextStyle(
                        fontFamily: 'Avalon Bold',
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: 350,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryImages.length,
                        itemBuilder: ((BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  categoryImages[index],
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  categoryTexts[index],
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontFamily: "Avalon Bold",
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New in for you',
                          style: TextStyle(
                            letterSpacing: .2,
                            fontSize: 16,
                            fontFamily: "Avalon Bold",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'VIEW ALL NEW IN',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: "Avalon Regular",
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 5,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ᐳ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontFamily: "Avalon Regular",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    NewSwipeCards(),
                    SizedBox(
                      height: 30,
                    ),
                    SrButton(
                      bgColor: Colors.yellow[600],
                      buttonText: 'Your favourite new arrivals',
                      callbackFn: () {
                        print("Your favourite new arrivals tapped");
                      },
                      borderColor: Colors.transparent,
                      paddingValue: 12,
                    ),
                    SrButton(
                      bgColor: Colors.white,
                      buttonText: 'Edit your favourites',
                      callbackFn: () {
                        print("Edit your favourites tapped");
                      },
                      borderColor: Colors.grey,
                      paddingValue: 2,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 250,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Your Region:",
                                    style: TextStyle(
                                      fontFamily: 'Avalon Regular',
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.asset(
                                      "assets/images/region/pic1.png",
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                  Text(
                                    "GB(GBP / £)",
                                    style: TextStyle(
                                      fontFamily: 'Avalon Regular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // color: Colors.blue,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'CHANGE',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: "Avalon Regular",
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 5,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'ᐳ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: "Avalon Regular",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
