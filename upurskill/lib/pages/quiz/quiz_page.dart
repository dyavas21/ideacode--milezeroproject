import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/bottom_navigation_style.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
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
                  color: Color(0xffF2EFFF),
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                Navigator.pushNamed(context, '/quiz1');
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
                    'Let’s start the quiz!',
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
