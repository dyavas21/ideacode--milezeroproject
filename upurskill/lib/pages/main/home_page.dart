import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';
import 'package:upurskill/widgets/bottom_navigation_style.dart';
import 'package:upurskill/widgets/homepage_card.dart';
import 'package:upurskill/widgets/homepage_card2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(
          left: 38,
          top: 59,
          right: 38,
        ),
        children: [
          title(),
          Progress(),
          SizedBox(
            height: 26,
          ),
          title2(),
          SizedBox(
            height: 30,
          ),
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
                imageUrl: 'assets/home_color.png',
                title: 'Home',
                isActive: true,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/explore');
              },
              child: BottomNavigationStyle(
                imageUrl: 'assets/explore.png',
                title: 'Explore',
                isActive: false,
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
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/profile.png',
            width: 32,
          ),
        ),
        SizedBox(
          width: 14,
        ),
        Text(
          'Hi, Dary!',
          style: GoogleFonts.raleway(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        Image.asset(
          'assets/notif.png',
          width: 32,
        ),
      ],
    );
  }

  Widget Progress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 41,
          ),
          child: Text(
            'Your Progress',
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(
          width: double.infinity,
          height: 88,
          decoration: BoxDecoration(
            color: whiteGreyColor2,
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          child: Stack(
            children: [
              Image.asset(
                'assets/bg_course.png',
                width: double.infinity,
                height: 88,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 13,
                  left: 20,
                  right: 23,
                  bottom: 13,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Public Speaking Class',
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3A3845),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '30/60',
                          style: GoogleFonts.raleway(
                            fontSize: 12,
                            color: Color(0xff3A3845),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Continue',
                          style: GoogleFonts.raleway(
                            fontSize: 12,
                            color: Color(0xff3A3845),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/arrow_right.png',
                          width: 13,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Image.asset(
                      'assets/progress.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget title2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'What\'s new?',
              style: GoogleFonts.raleway(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'See All',
              style: GoogleFonts.raleway(),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageCard2(
                  imageUrl: ('assets/whatsnew1.png'),
                  title: 'See how other people\nthink about you!',
                ),
                HomePageCard(
                  imageUrl: ('assets/mbti1.png'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageCard2(
                  imageUrl: ('assets/whatsnew2.png'),
                  title: 'See how other people\nthink about you!',
                ),
                HomePageCard(
                  imageUrl: ('assets/mbti2.png'),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Text(
              'Trending News',
              style: GoogleFonts.raleway(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageCard2(
                  imageUrl: ('assets/trending1.png'),
                  title:
                      'Hasil Studi, Orangtua\nMilenial Lebih Suka\nAnak Belajar Soft Skill',
                ),
                HomePageCard2(
                  imageUrl: ('assets/trending2.png'),
                  title: 'Penting, Tunjukkan Soft\nkill Saat Wawancara\nKerja',
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
