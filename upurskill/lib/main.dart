import 'package:flutter/material.dart';
import 'package:upurskill/pages/course_detail_last_page.dart';
import 'package:upurskill/pages/course_detail_page.dart';
import 'package:upurskill/pages/course_side_menu.dart';
import 'package:upurskill/pages/main/course_page.dart';
import 'package:upurskill/pages/main/explore_page.dart';
import 'package:upurskill/pages/main/feed_page.dart';
import 'package:upurskill/pages/main/home_page.dart';
import 'package:upurskill/pages/login_page.dart';
import 'package:upurskill/pages/public_speaking_page.dart';
import 'package:upurskill/pages/quiz/quiz_last_page.dart';
import 'package:upurskill/pages/quiz/quiz_page.dart';
import 'package:upurskill/pages/main/register_page.dart';
import 'package:upurskill/pages/main/search_page.dart';
import 'package:upurskill/pages/quiz/quiz_result_page.dart';
import 'package:upurskill/pages/quiz/quiz_start_page.dart';
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
        '/quiz1': (context) => QuizStartPage(),
        '/quiz2': (context) => QuizLastPage(),
        '/result': (context) => QuizResultPage(),
        '/feed': (context) => FeedPage(),
        '/course': (context) => CoursePage(),
        '/course-last': (context) => CourseDetailLastPage(),
      },
    );
  }
}
