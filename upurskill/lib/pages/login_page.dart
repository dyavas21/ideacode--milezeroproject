import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/splash_screen.png',
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/splash_screen2.png',
            ),
          ),
          ListView(
            children: [
              title(),
              emailInput(),
              passwordInput(),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: loginButton()),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      'Forgot Password',
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        color: Color(0xff000000),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(
                      height: 110,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: GoogleFonts.raleway(
                            color: Color(0xff3A3845),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff3A3845),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 260,
        left: 45,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: GoogleFonts.raleway(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Hi, let’s upgrade your\nskills here!',
            style: GoogleFonts.raleway(
              fontSize: 22,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 38,
        left: 39,
        right: 38,
      ),
      height: 52,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xffF5F5F5),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
          hintText: 'username or email',
          hintStyle: GoogleFonts.raleway(
            fontSize: 18,
            color: Color(0xff808080),
          ),
        ),
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
        left: 39,
        right: 38,
      ),
      height: 52,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xffF5F5F5),
      ),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration.collapsed(
          hintText: 'password',
          hintStyle: GoogleFonts.raleway(
            fontSize: 18,
            color: Color(0xff808080),
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
        left: 39,
        right: 38,
      ),
      height: 52,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 15,
        bottom: 14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xff3A3845),
      ),
      child: Center(
        child: Text(
          'Login',
          style: GoogleFonts.raleway(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget Gambar() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            'assets/splash_screen.png',
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            'assets/splash_screen2.png',
          ),
        ),
      ],
    );
  }
}
