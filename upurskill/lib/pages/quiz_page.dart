import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bottom_navigation_style.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Quiz',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3A3845),
                ),
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 38,
                right: 37,
              ),
              width: double.infinity,
              height: 119,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Image.asset(
                'assets/quiz.png',
                height: 119,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: Text(
                'Let’s review what you\nhave done before.',
                style: GoogleFonts.raleway(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 37,
              ),
              child: Text(
                'After you learned all the materials, now it’s the time to challenge yourself!',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(0xff3A3845),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 7,
                    left: 15,
                    bottom: 7,
                  ),
                  width: 90,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Color(0xffF2EFFF),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '10',
                        style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Questions',
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: Color(0xff3A3845),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(
                    top: 7,
                    left: 15,
                    bottom: 7,
                  ),
                  width: 90,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Color(0xffF2EFFF),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Certificate',
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: Color(0xff3A3845),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(
                    top: 7,
                    left: 15,
                    bottom: 7,
                  ),
                  width: 115,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Color(0xffF2EFFF),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Type',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Multiple-choice',
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: Color(0xff3A3845),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: Text(
                'How to do the quiz?',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 64,
                top: 15,
              ),
              child: Image.asset(
                'assets/quiz_rules.png',
                width: 171,
                height: 140,
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
            BottomNavigationStyle(
              imageUrl: 'assets/home_color.png',
              title: 'Home',
              isActive: true,
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
            BottomNavigationStyle(
              imageUrl: 'assets/feeds.png',
              title: 'Feeds',
              isActive: false,
            ),
            BottomNavigationStyle(
              imageUrl: 'assets/course.png',
              title: 'My Course',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
