import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:upurskill/theme.dart';

class HomePageCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: whiteGreyColor2,
          ),
          width: (MediaQuery.of(context).size.width - 106) / 2,
          height: 120,
          padding: EdgeInsets.all(14),
          margin: EdgeInsets.only(top: 12),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'Try Now!',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          'See how other people \nthink about you!',
          style: GoogleFonts.raleway(),
        )
      ],
    );
  }
}
