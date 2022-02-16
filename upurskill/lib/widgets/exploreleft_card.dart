import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';

class ExploreLeftCard extends StatelessWidget {
  String? title;
  bool? isColorBox;

  ExploreLeftCard({
    this.title,
    this.isColorBox,
  });
  @override
  Widget build(BuildContext context) {
    return isColorBox!
        ? Container(
            margin: EdgeInsets.only(right: 8),
            width: 137,
            height: 25,
            decoration: BoxDecoration(
              color: Color(0xff7B61FF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                title!,
                style: GoogleFonts.raleway(
                  color: Colors.white,
                ),
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.only(right: 8),
            width: 137,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color(0xffC4C4C4),
              ),
            ),
            child: Center(
              child: Text(
                title!,
                style: GoogleFonts.raleway(
                  color: Color(0xffC4C4C4),
                ),
              ),
            ),
          );
  }
}
