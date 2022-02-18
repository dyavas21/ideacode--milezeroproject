import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';

class CourseCard extends StatelessWidget {
  String? title;
  String? number;
  String? imageUrlProgress;
  String? imageUrlCourse;
  String? detail;
  bool? isGrey;

  CourseCard({
    this.number,
    this.title,
    this.imageUrlProgress,
    this.imageUrlCourse,
    this.isGrey,
    this.detail,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
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
            imageUrlCourse!,
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
                isGrey!
                    ? Text(
                        title!,
                        style: GoogleFonts.raleway(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff3A3845),
                        ),
                      )
                    : Text(
                        title!,
                        style: GoogleFonts.raleway(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff808080),
                        ),
                      ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      number!,
                      style: GoogleFonts.raleway(
                        fontSize: 12,
                        color: Color(0xff3A3845),
                      ),
                    ),
                    Spacer(),
                    isGrey!
                        ? Text(
                            detail!,
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              color: Color(0xff3A3845),
                            ),
                          )
                        : Text(
                            detail!,
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              color: Color(0xff808080),
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
                  imageUrlProgress!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
