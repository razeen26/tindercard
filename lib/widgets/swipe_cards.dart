// ignore_for_file: prefer_final_fields, unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:home_screen/widgets/action_button_widget.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../home_page.dart';

class Content {
  final String? text;
  final String? imagePath;

  Content({this.text, this.imagePath});
}

class NewSwipeCards extends StatefulWidget {
  const NewSwipeCards({
    Key? key,
  }) : super(key: key);

  @override
  State<NewSwipeCards> createState() => _NewSwipeCardsState();
}

class _NewSwipeCardsState extends State<NewSwipeCards> {
  List<SwipeItem> swipeItems = <SwipeItem>[];
  MatchEngine? matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  List<String> names = [
    "CASABLANCA",
    "VICTORIA BECKHAM",
    "CARTIER",
    "HOUSE OF CB",
    "BALENCIAGA",
  ];

  List<String> content = [
    'Graphic-pattern relaxed-fit cotton-knit jumper',
    'Dolman-sleeved relaxed-fit crepe midi dress',
    'LOVE small 18ct hoop earrings',
    'Tallulah puffed-sleeve woven midi dress',
    'Hourglass leather cross-body bag',
  ];

  List<String> price = [
    '£1567.00',
    '£156.00',
    '£342.00',
    '£231.00',
    '£670.00',
  ];

  @override
  void initState() {
    for (int i = 0; i < names.length; i++) {
      swipeItems.add(SwipeItem(
          content: Content(text: names[i], imagePath: newinImages[i]),
          likeAction: () {
            // _scaffoldKey.currentState?.showSnackBar(SnackBar(
            //   content: Text("Liked ${_names[i]}"),
            //   duration: Duration(milliseconds: 500),
            // ));
            print('Liked------------------------------');
          },
          nopeAction: () {
            // _scaffoldKey.currentState?.showSnackBar(SnackBar(
            //   content: Text("Nope ${_names[i]}"),
            //   duration: Duration(milliseconds: 500),
            // ));
            print('Disiked------------------------------');
          },
          superlikeAction: () {
            _scaffoldKey.currentState?.showSnackBar(SnackBar(
              content: Text("Superliked ${names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }));
    }

    matchEngine = MatchEngine(swipeItems: swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            child: SwipeCards(
              matchEngine: matchEngine!,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Stack(
                    children: [
                      Container(
                        height: 570,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(swipeItems[index].content.imagePath),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                      fontFamily: 'Avalon Demi',
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    content[index],
                                    style: TextStyle(
                                      fontFamily: 'DIN Light',
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    price[index],
                                    style: TextStyle(
                                      fontFamily: 'DIN Regular',
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 100,
                        bottom: 130,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 24,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.close_outlined,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.yellow,
                              child: CircleAvatar(
                                backgroundColor: Colors.yellow,
                                radius: 24,
                                child: IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              onStackFinished: () {
                // _scaffoldKey.currentState!.showSnackBar(SnackBar(
                //   content: Text("Stack Finished"),
                //   duration: Duration(milliseconds: 500),
                // ));
                print('Stack Finished');
              },
              itemChanged: (SwipeItem item, int index) {
                print("item: ${item.content.text}, index: $index");
              },
              fillSpace: true,
            ),
          ),
        ],
      ),
    );
  }
}
