import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';
import 'package:upurskill/widgets/homepage_card.dart';
import 'package:upurskill/widgets/homepage_card2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffF8F8F8),
        showSelectedLabels: true,
        selectedItemColor: blackColor,
        unselectedItemColor: blackColor,
        showUnselectedLabels: true,
        onTap: (value) {
          if (value == 1) {
            Navigator.pushNamed(context, '/explore');
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            label: 'Feeds',
            icon: Icon(
              Icons.feed,
            ),
          ),
          BottomNavigationBarItem(
            label: 'My Course',
            icon: Icon(
              Icons.play_lesson,
            ),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: greyColor,
            shape: BoxShape.circle,
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
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(
          padding: EdgeInsets.only(
            top: 13,
            bottom: 13,
            left: 20,
          ),
          width: double.infinity,
          height: 77,
          decoration: BoxDecoration(
            color: whiteGreyColor2,
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Public Speaking Class',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '30/60',
                style: GoogleFonts.raleway(),
              ),
              SizedBox(
                height: 12,
              ),
              Image.asset(
                'assets/progress.png',
                width: 195,
                height: 4,
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
        Text(
          'What\'s new?',
          style: GoogleFonts.raleway(
            fontSize: 16,
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageCard2(),
                HomePageCard(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageCard(),
                HomePageCard2(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageCard2(),
                HomePageCard(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
