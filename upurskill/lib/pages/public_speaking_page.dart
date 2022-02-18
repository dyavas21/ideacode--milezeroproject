import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';

class PublicSpeakingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 267,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color(0xffF2EFFF),
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/course_detail.png',
                  height: 267,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 42,
                      top: 70,
                    ),
                    child: Image.asset(
                      'assets/back-btn.png',
                      width: 24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 48,
                    ),
                    child: Image.asset(
                      'assets/share.png',
                      width: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Header2(),
        ],
      ),
      floatingActionButton: Container(
        height: 117,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 38,
          right: 36,
          top: 13,
          bottom: 27,
        ),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ]),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'In Progress',
                  style: GoogleFonts.raleway(
                    fontSize: 12,
                    color: Color(0xff3A3845),
                  ),
                ),
                Spacer(),
                Text(
                  '30/60',
                  style: GoogleFonts.raleway(
                    fontSize: 12,
                    color: Color(0xff3A3845),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Image.asset(
              'assets/sylabus_progress.png',
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/course-detail');
              },
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xff242328),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget Header2() {
    return Container(
      margin: EdgeInsets.only(
        top: 23,
        left: 38,
        right: 47,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Public Speaking',
                style: GoogleFonts.raleway(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3A3845),
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/star.png',
                width: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '4.5',
                style: GoogleFonts.raleway(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3A3845),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text(
                '1200 users was enrolled this class',
                style: GoogleFonts.raleway(
                  fontSize: 10,
                  color: greyColor,
                ),
              ),
              Spacer(),
              Text(
                '(1119)',
                style: GoogleFonts.raleway(
                  color: greyColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 27,
          ),
          Text(
            'Our Goals',
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff3A3845),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: GoogleFonts.raleway(
              fontSize: 12,
              color: Color(0xff3A3845),
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Our Learning Method',
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff3A3845),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: GoogleFonts.raleway(
              fontSize: 12,
              color: Color(0xff3A3845),
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Class Sylabus',
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff3A3845),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Image.asset(
            'assets/sylabus.png',
            width: 110,
          ),
        ],
      ),
    );
  }
}
