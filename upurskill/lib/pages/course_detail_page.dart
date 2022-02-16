import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';

class CourseDetailPage extends StatelessWidget {
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
            Container(
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
            'assets/sylabus_progress.png',
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
                '30/60',
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
            'Knowing your audience.',
            style: GoogleFonts.raleway(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xff3A3845),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Incididunt ut labore et dolore magna aliqua',
            style: GoogleFonts.raleway(
              fontSize: 12,
              color: Color(0xff3A3845),
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            'Implementation',
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff3A3845),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Image.asset(
            'assets/implementation.png',
          ),
          SizedBox(
            height: 7,
          ),
          Center(
            child: Text(
              'Great Speech from Cheryl',
              style: GoogleFonts.raleway(
                fontSize: 10,
                color: Color(0xff3A3845),
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Incididunt ut labore et dolore magna aliqua tempor incididunt ut labore et dolore magna aliqua.',
            style: GoogleFonts.raleway(
              fontSize: 12,
              color: Color(0xff3A3845),
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 22,
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
