import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';

class ExploreLeftCard extends StatelessWidget {
  String? title;

  ExploreLeftCard({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 137,
      height: 25,
      decoration: BoxDecoration(
        color: whiteGreyColor2,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          title!,
          style: GoogleFonts.raleway(
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
