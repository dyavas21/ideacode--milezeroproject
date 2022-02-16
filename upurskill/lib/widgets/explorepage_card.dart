import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:upurskill/theme.dart';

class ExplorePageCard extends StatelessWidget {
  String? title;
  String? enrolled;
  String? progress;

  ExplorePageCard({
    this.enrolled,
    this.title,
    this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: whiteGreyColor2,
          ),
          width: (MediaQuery.of(context).size.width - 106) / 2,
          height: 120,
          child: Stack(
            children: [
              Image.asset(
                'assets/trending.png',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 11,
                  left: 16,
                ),
                child: Text(
                  progress!,
                  style: GoogleFonts.raleway(
                    color: Color(0xff3A3845),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: GoogleFonts.raleway(
                fontSize: 16,
                color: blackColor,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              enrolled!,
              style: GoogleFonts.raleway(
                color: greyColor,
              ),
            ),
            SizedBox(
              height: 27,
            ),
          ],
        )
      ],
    );
  }
}
