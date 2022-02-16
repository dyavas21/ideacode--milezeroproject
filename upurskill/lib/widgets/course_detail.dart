import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetail extends StatelessWidget {
  String? title;
  bool? isDone;
  bool? isBottom;
  CourseDetail({
    this.isDone,
    this.title,
    this.isBottom,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title!,
          style: GoogleFonts.raleway(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Spacer(),
        isDone!
            ? Image.asset(
                'assets/done.png',
                width: 20,
              )
            : Container(),
        SizedBox(
          width: 10,
        ),
        isBottom!
            ? Image.asset(
                'assets/bottom.png',
                width: 9,
              )
            : Container(),
      ],
    );
  }
}
