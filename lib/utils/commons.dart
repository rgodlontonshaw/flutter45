import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Commons {
  static const baseURL = '';

  static const gradientBackgroundColorStart = const Color(0xFFF9434D);
  static const gradientBackgroundColorEnd = const Color(0xFFf7892b);
  static const gradientBackgroundColorWhite = const Color(0xFFf7892b);
  static const mainFlutter45 = const Color(0xFFF9434D);
  static const appBarBackGroundColor = const Color(0xFF252632);

  static Widget titleFlutter45(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Fl',
          style: GoogleFonts.alef(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Commons.mainFlutter45,
          ),
          children: [
            TextSpan(
              text: 'utter',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: '45',
              style: TextStyle(color: Commons.mainFlutter45, fontSize: 30),
            ),
          ]),
    );
  }

  static Widget titleFlutter45Home(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Fl',
          style: GoogleFonts.alef(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: 'utter',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: '45',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ]),
    );
  }
}
