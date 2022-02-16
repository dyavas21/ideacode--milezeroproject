import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedContainer extends StatelessWidget {
  String? name;
  String? time;
  String? judul;
  String? isi;
  String? like;
  FeedContainer({
    this.isi,
    this.like,
    this.name,
    this.time,
    this.judul,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 19,
        right: 38,
        left: 38,
        bottom: 14,
      ),
      width: double.infinity,
      height: 223,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(
            0xffF8F8F8,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/profile2.png',
                width: 30,
              ),
              SizedBox(
                width: 17,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name!,
                    style: GoogleFonts.raleway(
                      color: Color(0xff2C2C2C),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Undergraduate Student',
                    style: GoogleFonts.raleway(
                      color: Color(0xff2C2C2C),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    width: 53,
                    height: 19,
                    decoration: BoxDecoration(
                      color: Color(0xffE5DFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        '+follow',
                        style: GoogleFonts.raleway(
                          fontSize: 10,
                          color: Color(0xff7B61FF),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    time!,
                    style: GoogleFonts.raleway(
                      fontSize: 10,
                      color: Color(0xffC4C4C4),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            judul!,
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w600,
              color: Color(0xff3A3845),
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            isi!,
            style: GoogleFonts.raleway(
              color: Color(0xff3A3845),
              fontSize: 12,
              height: 1.5,
            ),
          ),
          Spacer(),
          Row(
            children: [
              Image.asset(
                'assets/arrow_up.png',
                width: 24,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                like!,
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(0xff3A3845),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/arrow_down.png',
                width: 24,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/chat.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/more.png',
                width: 24,
              ),
            ],
          )
        ],
      ),
    );
  }
}
