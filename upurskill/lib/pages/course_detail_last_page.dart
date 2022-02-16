import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';

class CourseDetailLastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          title(),
        ],
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
                Navigator.pushNamed(context, '/quiz');
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
                    'Next',
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

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 44,
        left: 38,
        right: 36,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Public Speaking',
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
          Image.asset(
            'assets/progress2.png',
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'In progress',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(
                    0xff3A3845,
                  ),
                ),
              ),
              Text(
                '60/60',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(
                    0xff3A3845,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 27,
          ),
          Text(
            'Why is confidence important\nin public speaking?',
            style: GoogleFonts.raleway(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xff3A3845),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            'Exhibiting confidence in public speaking is a skill that anyone can possess with the proper mindset and preparation. When you look, sound, and feel your best, you are more likely to connect with your audience, convey your key points with conviction, and get the results you seek.',
            style: GoogleFonts.raleway(
              fontSize: 12,
              color: Color(0xff3A3845),
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Confident speakers focus on clarity and conviction in their delivery and display the right body language. They also focus on their audience, rather than dwelling on their flaws and potential slip-ups.',
            style: GoogleFonts.raleway(
              fontSize: 12,
              color: Color(0xff3A3845),
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Tips to Gain Confidence',
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff3A3845),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blackColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Rehearse When You’re Alone',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(0xff3A3845),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blackColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Record Videos of Yourself and Critique Them',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(0xff3A3845),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blackColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Practice Speaking in Front of Family and Friends',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(0xff3A3845),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blackColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Attend Public Speaking Events and Ask Questions',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(0xff3A3845),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '#ExpertTips',
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff3A3845),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blackColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Beat your nearvous',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: blackColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blackColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Manage your breath',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: blackColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                width: 2,
                height: 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blackColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Focus on your presentation',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: blackColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
