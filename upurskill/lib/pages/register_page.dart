import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upurskill/theme.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
          right: 42,
          left: 45,
        ),
        children: [
          title(),
          emailInput(),
          passwordInput(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: registerButton(),
          ),
          SizedBox(
            height: 101,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text(
              'Login',
              style: GoogleFonts.raleway(
                fontSize: 18,
                color: blackColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 260),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Register',
            style: GoogleFonts.raleway(
              fontSize: 44,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Register',
            style: GoogleFonts.raleway(
              fontSize: 32,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 51),
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
            )),
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 16),
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
            )),
      ),
    );
  }

  Widget registerButton() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 52,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 15,
        bottom: 14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xff000000),
      ),
      child: Center(
        child: Text(
          'Register',
          style: GoogleFonts.raleway(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget createButton() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 52,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 15,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: darkGreyColor,
      ),
      child: Center(
        child: Text(
          'create a new account',
          style: GoogleFonts.raleway(
            fontSize: 18,
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
