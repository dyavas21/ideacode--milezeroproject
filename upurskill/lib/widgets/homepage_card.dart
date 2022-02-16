import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:upurskill/theme.dart';

class HomePageCard2 extends StatelessWidget {
  String? imageUrl;
  HomePageCard2({
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          width: (MediaQuery.of(context).size.width - 106) / 2,
          height: 120,
          margin: EdgeInsets.only(top: 12),
          child: Image.asset(imageUrl!),
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
