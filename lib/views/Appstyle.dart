import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size, Color color, FontWeight Fontwaight) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: Fontwaight);
}

TextStyle appstylewithHeight(
    double size, Color color, FontWeight Fontwaight, double het) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: Fontwaight, height: het);
}
