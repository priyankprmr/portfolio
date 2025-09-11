import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle size30TealW600() {
    return GoogleFonts.lato(
      color: Colors.teal.shade700,
      fontWeight: FontWeight.w600,
      fontSize: 30.0,
    );
  }

  static TextStyle size16TealW600() {
    return GoogleFonts.lato(
      color: Colors.teal.shade700,
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    );
  }

  static TextStyle size12Black() {
    return GoogleFonts.lato(fontSize: 12.0);
  }

  static TextStyle size14Black() {
    return GoogleFonts.lato(fontSize: 14.0);
  }
}
