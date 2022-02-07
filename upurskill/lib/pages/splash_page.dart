import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 50,
          top: 50,
        ),
        child: Center(
          child: Text(
            'Up Ur Skill',
            style: GoogleFonts.raleway(
              fontSize: 27,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
          ),
        ),
      ),
    );
  }
}
