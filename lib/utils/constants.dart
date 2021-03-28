import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_ORANGE = Colors.orange;
const COLOR_ORANGE_DARK = Color.fromRGBO(255, 99, 71, 0.85);
const COLOR_BLACK = Colors.black87;
const COLOR_GREY = Colors.grey;
const COLOR_GREY_LIGHT = Color.fromRGBO(105, 105, 105, 0.9);
const COLOR_Red = Colors.red;
const COLOR_WHITE = Color.fromRGBO(255, 255, 255, 0.9);

const String IMAGE_PROFILE = 'assets/images/profile.png';

const String STRING_WELCOME = 'Welocome To Sudan';
const String STRING_BUTTON_TRAVEL = 'Let\'s GO';
const String STRING_TEXT_TRAVEL = 'Travel Guide';
const String STRING_TEXT_COLL = 'Show more';
const String STRING_TEXT_EXPAN = 'Show less';

var textTheme = TextTheme(
  headline1: GoogleFonts.playfairDisplay(
    textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: COLOR_BLACK,
        letterSpacing: 0),
  ),
  headline2: GoogleFonts.playfairDisplay(
    textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: COLOR_BLACK,
        letterSpacing: 0),
  ),
  headline3: GoogleFonts.playfairDisplay(
    textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: COLOR_BLACK,
        letterSpacing: 0),
  ),
  headline4: GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: COLOR_BLACK,
        letterSpacing: 0),
  ),
  headline5: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: COLOR_WHITE,
      letterSpacing: 0),
  bodyText1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: COLOR_BLACK,
      letterSpacing: 0),
  bodyText2: GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: COLOR_BLACK.withOpacity(0.7),
        letterSpacing: 0),
  ),
);
