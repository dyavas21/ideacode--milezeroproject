import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/widgets/course_detail.dart';

class CourseSideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 42,
          right: 42,
          top: 54,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'Public Speaking',
                  style: GoogleFonts.raleway(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/close.png',
                    width: 24,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            CourseDetail(
              title: 'I. Introduction',
              isDone: true,
              isBottom: true,
            ),
            SizedBox(
              height: 26,
            ),
            CourseDetail(
              title: 'II. Basic Speaking',
              isDone: true,
              isBottom: true,
            ),
            SizedBox(
              height: 26,
            ),
            CourseDetail(
              title: 'III. Implementing',
              isDone: true,
              isBottom: true,
            ),
            SizedBox(
              height: 26,
            ),
            CourseDetail(
              title: 'IV. Practice',
              isDone: false,
              isBottom: true,
            ),
            SizedBox(
              height: 26,
            ),
            CourseDetail(
              title: 'Quiz',
              isDone: false,
              isBottom: false,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/explore');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/exit.png',
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Leave Class',
                    style: GoogleFonts.raleway(
                      color: Color(0xff3A3845),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
