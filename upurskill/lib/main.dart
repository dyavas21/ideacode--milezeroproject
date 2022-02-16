import 'package:flutter/material.dart';
import 'package:upurskill/pages/course_detail_page.dart';
import 'package:upurskill/pages/course_side_menu.dart';
import 'package:upurskill/pages/explore_page.dart';
import 'package:upurskill/pages/home_page.dart';
import 'package:upurskill/pages/login_page.dart';
import 'package:upurskill/pages/public_speaking_page.dart';
import 'package:upurskill/pages/quiz_page.dart';
import 'package:upurskill/pages/register_page.dart';
import 'package:upurskill/pages/search_page.dart';
import 'package:upurskill/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/explore': (context) => ExplorePage(),
        '/public-speaking': (context) => PublicSpeakingPage(),
        '/course-detail': (context) => CourseDetailPage(),
        '/side': (context) => CourseSideMenu(),
        '/search': (context) => SearchPage(),
        '/quiz': (context) => QuizPage(),
      },
    );
  }
}
