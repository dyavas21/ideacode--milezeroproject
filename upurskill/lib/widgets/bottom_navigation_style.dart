import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationStyle extends StatelessWidget {
  String? imageUrl;
  String? title;
  bool? isActive;

  BottomNavigationStyle({
    this.imageUrl,
    this.isActive,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl!,
          width: 24,
        ),
        SizedBox(
          height: 7,
        ),
        isActive!
            ? Container(
                width: 12,
                height: 1,
                decoration: BoxDecoration(
                  color: Color(0xff7B61FF),
                  borderRadius: BorderRadius.circular(
                    1000,
                  ),
                ),
              )
            : Container(),
        SizedBox(
          height: 7,
        ),
        Text(
          title!,
          style: GoogleFonts.raleway(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
