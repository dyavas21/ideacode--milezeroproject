import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/widgets/quiz_container.dart';

import '../../widgets/bottom_navigation_style.dart';

class QuizLastPage extends StatelessWidget {
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
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 38,
                right: 36,
              ),
              child: Image.asset(
                'assets/progress2.png',
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Container(),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 36,
                  ),
                  child: Text(
                    '10/10',
                    style: GoogleFonts.raleway(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 37,
              ),
              child: Text(
                'Let’s review what you\nhave done before.',
                style: GoogleFonts.raleway(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3A3845),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 45,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(0xff3A3845),
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: 63,
            ),
            QuizContainer(
              isPurple: true,
            ),
            SizedBox(
              height: 10,
            ),
            QuizContainer(
              isPurple: false,
            ),
            SizedBox(
              height: 10,
            ),
            QuizContainer(
              isPurple: false,
            ),
            SizedBox(
              height: 10,
            ),
            QuizContainer(
              isPurple: false,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 94,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 50,
          right: 36,
          top: 27,
          bottom: 27,
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
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/side');
              },
              child: Image.asset(
                'assets/side_bar.png',
                width: 19,
                height: 12,
              ),
            ),
            SizedBox(
              width: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/result');
              },
              child: Container(
                width: 248,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xff3A3845),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
