import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';
import 'package:upurskill/widgets/bottom_navigation_style.dart';
import 'package:upurskill/widgets/feed_container.dart';
import 'package:upurskill/widgets/homepage_card.dart';
import 'package:upurskill/widgets/homepage_card2.dart';

class FeedPage extends StatelessWidget {
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
            child: title(),
          ),
          SizedBox(
            height: 31,
          ),
          FeedContainer(
            time: '12 m ago',
            judul: 'What things that makes you can be more confident?',
            name: 'Gede Dyava',
            isi:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            like: '138k',
          ),
          FeedContainer(
            time: '14 m ago',
            judul: 'How can I become socially confident?',
            name: 'Darry Ramadhan',
            isi:
                'Two words - stop caring.\nI’m a very confident guy. Like, I’m the type of person, who could go on stage, at the Grammy Awards, and sing in front of millions of people.',
            like: '52k',
          ),
          FeedContainer(
            time: '17 m ago',
            judul: 'How can I develop self-confidence and\nself-esteem?',
            name: 'Gery Guinardi',
            isi:
                'Read book 1 hour every day.\nEarly wakeup like 5.30 A.M to 6.00 A.M. Try to 30 minute Book, Newspaper,10–15 Minutes Excise early morning.',
            like: '31k',
          ),
          FeedContainer(
            time: '25 m ago',
            judul: 'What\'s your biggest public speaking fear?',
            name: 'Cheryl Almeira',
            isi:
                'Yes I do. I teach people how to present for a living and often find myself in the catastrophic position of having to speak publicly myself. Just because something makes you massively uncomfortable is not enough of,',
            like: '21k',
          ),
          SizedBox(
            height: 125,
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
              bottom: 40,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/feed-chat');
                },
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff7B61FF),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/plus.png',
                      width: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 104,
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 52,
              right: 51,
              top: 25,
              bottom: 26,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: BottomNavigationStyle(
                    imageUrl: 'assets/home.png',
                    title: 'Home',
                    isActive: false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/explore');
                  },
                  child: BottomNavigationStyle(
                    imageUrl: 'assets/explore.png',
                    title: 'Explore',
                    isActive: false,
                  ),
                ),
                BottomNavigationStyle(
                  imageUrl: 'assets/feeds_color.png',
                  title: 'Feeds',
                  isActive: true,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/course');
                  },
                  child: BottomNavigationStyle(
                    imageUrl: 'assets/course.png',
                    title: 'My Course',
                    isActive: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/profile.png',
            width: 32,
          ),
        ),
        Text(
          'Feeds',
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        Image.asset(
          'assets/explore.png',
          width: 20,
        ),
      ],
    );
  }
}
