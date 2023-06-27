import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Style {
  Style._();

  static const Color primaryColor = Colors.blue;
  static const Color primaryDarkColor = Color(0xfff4f4f4);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color textColor = Colors.black;
  static const Color transparent = Colors.transparent;
  static const Color errorLight = Colors.red;
  static const Color errorDark = Colors.white;

  static const linearGradient = LinearGradient(
    begin: Alignment(1.00, 0.00),
    end: Alignment(-1, 0),
    colors: [Color(0xFF1DA1F2), Color(0xFF003CC5)],
  );
  static const buttonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF1DA1F2), Color(0xFF003CC5)],
  );

  static regular({int size = 16, Color color = textColor}) {
    return GoogleFonts.inter(
      fontSize: size.sp,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static normal({int size = 16, Color color = textColor}) {
    return GoogleFonts.inter(
      fontSize: size.sp,
      color: color,
      fontWeight: FontWeight.normal,
    );
  }

  static bold({int size = 16, Color color = textColor}) {
    return GoogleFonts.inter(
      fontSize: size.sp,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }
}
