import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';
import 'package:upurskill/widgets/bottom_navigation_style.dart';
import 'package:upurskill/widgets/feed_container.dart';
import 'package:upurskill/widgets/homepage_card.dart';
import 'package:upurskill/widgets/homepage_card2.dart';

class FeedChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(
          top: 59,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 38,
              right: 38,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/close.png',
                    width: 24,
                  ),
                ),
                Text(
                  'Add Question',
                  style: GoogleFonts.raleway(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  width: 50,
                  height: 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff7B61FF),
                  ),
                  child: Center(
                    child: Text(
                      'Send',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 31,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 23,
              left: 37,
              right: 37,
            ),
            width: double.infinity,
            height: 155,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffF8F8F8),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/profile.png',
                  width: 32,
                ),
                SizedBox(
                  width: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Text(
                    'Start your question with “What”, “How”,\n “Why”, etc.',
                    style: GoogleFonts.raleway(
                      color: Color(0xff808080),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 69,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffF2EFFF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Public',
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: Color(0xff7B61FF),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Image.asset(
                        'assets/bottom.png',
                        width: 8,
                        color: Color(0xff7B61FF),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 21,
                ),
                Image.asset(
                  'assets/add_image.png',
                  width: 24,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'add image',
                  style: GoogleFonts.raleway(
                    color: Color(0xff7B61FF),
                    fontSize: 12,
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
