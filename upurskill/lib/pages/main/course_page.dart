import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';
import 'package:upurskill/widgets/bottom_navigation_style.dart';
import 'package:upurskill/widgets/course_card.dart';
import 'package:upurskill/widgets/feed_container.dart';
import 'package:upurskill/widgets/homepage_card.dart';
import 'package:upurskill/widgets/homepage_card2.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 44,
            right: 43,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 38,
                  right: 38,
                ),
                child: title(),
              ),
              SizedBox(
                height: 33,
              ),
              Text(
                'On Progress (2)',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  color: Color(0xff3A3845),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/public-speaking');
                },
                child: CourseCard(
                  title: 'Public Speaking Class',
                  number: '30/60',
                  imageUrlProgress: 'assets/progress4.png',
                  imageUrlCourse: 'assets/bg_course.png',
                  isGrey: true,
                  detail: 'Continue',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                title: 'Cooking Class',
                number: '12/25',
                imageUrlProgress: 'assets/progress3.png',
                imageUrlCourse: 'assets/bg_course.png',
                isGrey: true,
                detail: 'Continue',
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                'Completed (2)',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  color: Color(0xff3A3845),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                title: 'Public Speaking Class',
                number: 'Completed',
                imageUrlProgress: 'assets/progress5.png',
                imageUrlCourse: 'assets/bg_course_complete.png',
                isGrey: false,
                detail: 'Detail',
              ),
              SizedBox(
                height: 10,
              ),
              CourseCard(
                title: 'Cooking Class',
                number: 'Completed',
                imageUrlProgress: 'assets/progress5.png',
                imageUrlCourse: 'assets/bg_course_complete.png',
                isGrey: false,
                detail: 'Detail',
              ),
            ],
          ),
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
                imageUrl: 'assets/course_color.png',
                title: 'My Course',
                isActive: true,
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'My Course',
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
