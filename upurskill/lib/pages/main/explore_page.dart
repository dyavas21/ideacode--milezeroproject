import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/pages/public_speaking_page.dart';
import 'package:upurskill/theme.dart';
import 'package:upurskill/widgets/exploreleft_card.dart';
import 'package:upurskill/widgets/explorepage_card.dart';

import '../../widgets/bottom_navigation_style.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
          top: 73,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 38,
              left: 38,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Learn a lot of\nskills now!',
                  style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                    width: double.infinity,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color(0xffF2EFFF),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            top: 9,
                            bottom: 8,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/search');
                            },
                            child: Text(
                              'search course',
                              style: GoogleFonts.raleway(
                                fontSize: 16,
                                color: Color(0xff808080),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff7B61FF),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/explore.png',
                              color: Colors.white,
                              width: 20,
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 26,
                ),
              ],
            ),
          ),
          ScrollCard(),
          SizedBox(
            height: 19,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/public-speaking');
              },
              child: title2()),
        ],
      ),
      floatingActionButton: Container(
        height: 104,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 52,
          right: 51,
          top: 25,
          bottom: 26,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: BottomNavigationStyle(
                imageUrl: 'assets/home.png',
                title: 'Home',
                isActive: false,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/explore');
              },
              child: BottomNavigationStyle(
                imageUrl: 'assets/explore_color.png',
                title: 'Explore',
                isActive: true,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/feed');
              },
              child: BottomNavigationStyle(
                imageUrl: 'assets/feeds.png',
                title: 'Feeds',
                isActive: false,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/course');
              },
              child: BottomNavigationStyle(
                imageUrl: 'assets/course.png',
                title: 'My Course',
                isActive: false,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget title() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 38,
        left: 38,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Learn a lot of\nskills now!',
            style: GoogleFonts.raleway(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: blackColor,
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Container(
              width: double.infinity,
              height: 36,
              decoration: BoxDecoration(
                color: Color(0xffF2EFFF),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 9,
                      bottom: 8,
                    ),
                    child: Text(
                      'search course',
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        color: Color(0xff808080),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff7B61FF),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/explore.png',
                        color: Colors.white,
                        width: 20,
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 26,
          ),
        ],
      ),
    );
  }

  Widget ScrollCard() {
    return Container(
      margin: EdgeInsets.only(left: 38),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ExploreLeftCard(
              title: 'Trending',
              isColorBox: true,
            ),
            ExploreLeftCard(
              title: 'Public Speaking',
              isColorBox: false,
            ),
            ExploreLeftCard(
              title: 'Documenter',
              isColorBox: false,
            ),
            ExploreLeftCard(
              title: 'Trending',
              isColorBox: false,
            ),
            ExploreLeftCard(
              title: 'Trending',
              isColorBox: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget title2() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 38,
        right: 38,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExplorePageCard(
                progress: 'In progress',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
                imageUrl: 'assets/explore_card1.png',
              ),
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
                imageUrl: 'assets/explore_card2.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
                imageUrl: 'assets/explore_card3.png',
              ),
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
                imageUrl: 'assets/explore_card4.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
                imageUrl: 'assets/explore_card5.png',
              ),
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
                imageUrl: 'assets/explore_card6.png',
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
