import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';
import 'package:upurskill/widgets/exploreleft_card.dart';
import 'package:upurskill/widgets/explorepage_card.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
          top: 73,
        ),
        children: [
          title(),
          ScrollCard(),
          SizedBox(
            height: 29,
          ),
          title2(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffF8F8F8),
        showSelectedLabels: true,
        selectedItemColor: blackColor,
        unselectedItemColor: blackColor,
        showUnselectedLabels: true,
        onTap: (value) {
          if (value == 0) {
            Navigator.pushNamed(context, '/home');
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            label: 'Feeds',
            icon: Icon(
              Icons.feed,
            ),
          ),
          BottomNavigationBarItem(
            label: 'My Course',
            icon: Icon(
              Icons.play_lesson,
            ),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 38,
        left: 38,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Learn a lot of\nskills now!',
            style: GoogleFonts.raleway(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: blackColor,
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 16,
              top: 9,
              bottom: 8,
            ),
            width: double.infinity,
            height: 36,
            decoration: BoxDecoration(
              color: whiteGreyColor2,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'type skills here..',
              style: GoogleFonts.raleway(
                fontSize: 16,
                color: blackColor,
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }

  Widget ScrollCard() {
    return Container(
      margin: EdgeInsets.only(left: 38),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ExploreLeftCard(
              title: 'Trending',
            ),
            ExploreLeftCard(
              title: 'Public Speaking',
            ),
            ExploreLeftCard(
              title: 'Documenter',
            ),
            ExploreLeftCard(
              title: 'Trending',
            ),
            ExploreLeftCard(
              title: 'Trending',
            ),
          ],
        ),
      ),
    );
  }

  Widget title2() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 38,
        right: 38,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExplorePageCard(
                progress: 'In progress',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
              ),
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
              ),
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
              ),
              ExplorePageCard(
                progress: '',
                title: 'Public Speaking',
                enrolled: '1200 enrolled',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
