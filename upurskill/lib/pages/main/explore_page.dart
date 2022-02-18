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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            top: 29,
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
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color(0xffF2EFFF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 23,
                              top: 13,
                              bottom: 13,
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
            Padding(
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
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/public-speaking');
                        },
                        child: ExplorePageCard(
                          progress: 'In progress',
                          title: 'Public Speaking',
                          enrolled: '1200 enrolled',
                          imageUrl: 'assets/explore_card1.png',
                        ),
                      ),
                      ExplorePageCard(
                        progress: '',
                        title: 'Time Management',
                        enrolled: '890 enrolled',
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
                        title: 'Leadership',
                        enrolled: '810 enrolled',
                        imageUrl: 'assets/explore_card3.png',
                      ),
                      ExplorePageCard(
                        progress: '',
                        title: 'Critical Thinking',
                        enrolled: '763 enrolled',
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
                        title: 'Interview',
                        enrolled: '625 enrolled',
                        imageUrl: 'assets/explore_card5.png',
                      ),
                      ExplorePageCard(
                        progress: '',
                        title: 'Portfolio',
                        enrolled: '523 enrolled',
                        imageUrl: 'assets/explore_card6.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
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
            SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
