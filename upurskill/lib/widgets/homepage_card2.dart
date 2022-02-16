import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shimmer/shimmer.dart';
import 'package:upurskill/pages/main/home_page.dart';
import 'package:upurskill/theme.dart';

class HomePageCard extends StatelessWidget {
  String? imageUrl;
  HomePageCard({
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color(0xffF2EEED),
          ),
          width: (MediaQuery.of(context).size.width - 106) / 2,
          height: 156,
          margin: EdgeInsets.only(top: 12),
          child: Image.asset(
            imageUrl!,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          'Do the MBTI test!',
          style: GoogleFonts.raleway(),
        )
      ],
    );
  }
}
