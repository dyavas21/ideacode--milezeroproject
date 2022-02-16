import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizContainer extends StatelessWidget {
  bool? isPurple;
  String? question;

  QuizContainer({
    this.isPurple,
    this.question,
  });
  @override
  Widget build(BuildContext context) {
    return isPurple!
        ? Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.only(
              left: 39,
              right: 38,
            ),
            padding: EdgeInsets.only(
              left: 25,
              top: 16,
              bottom: 16,
              right: 24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xffF2EFFF),
              border: Border.all(
                color: Color(0xff7B61FF),
              ),
            ),
            child: Row(
              children: [
                Text(
                  question!,
                  style: GoogleFonts.raleway(
                    color: Color(0xff2C2C2C),
                  ),
                ),
                Spacer(),
                Container(
                  width: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xff7B61FF),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff7B61FF),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        : Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.only(
              left: 39,
              right: 38,
            ),
            padding: EdgeInsets.only(
              left: 25,
              top: 16,
              bottom: 16,
              right: 24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
              border: Border.all(
                color: Color(0xffE5E5E5),
              ),
            ),
            child: Row(
              children: [
                Text(
                  question!,
                  style: GoogleFonts.raleway(
                    color: Color(0xff2C2C2C),
                  ),
                ),
                Spacer(),
                Container(
                  width: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xffE5E5E5),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
