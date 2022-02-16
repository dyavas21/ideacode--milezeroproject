import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/splash_screen2.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 36,
              top: 245,
              bottom: 38,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/result_quiz.png',
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Thanks for completing\nthe public speaking quiz!',
                  style: GoogleFonts.raleway(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor.',
                  style: GoogleFonts.raleway(
                    fontSize: 12,
                    color: Color(0xff3A3845),
                    height: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(
                        0xff808080,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      'View the score',
                      style: GoogleFonts.raleway(
                        color: Color(
                          0xff808080,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text(
                    'back to home',
                    style: GoogleFonts.raleway(
                      color: Color(0xff808080),
                      textStyle: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
