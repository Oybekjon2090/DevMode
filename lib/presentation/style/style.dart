import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Style {
  Style._();

  static const Color primaryColor = Colors.blue;
  static const Color primaryDarkColor = Color(0xFF003CC5);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color textColor = Colors.black;
  static const Color errorDark = Colors.white;
  static const Color iconsColor = Color(0xFF7F92A0);
  static const Color buttonColor = Color(0xFF2BCBBA);

  static const linearGradient = LinearGradient(
    begin: Alignment(1.00, 0.00),
    end: Alignment(-1, 0),
    colors: [Color(0xFF1DA1F2), Color(0xFF003CC5)],
  );
  static const rgadient = LinearGradient(
    begin: Alignment(1.00, 0.00),
    end: Alignment(-1, 0),
    colors: [
      Color.fromARGB(255, 125, 189, 228),
      Color.fromARGB(255, 143, 169, 229)
    ],
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
    return const TextStyle(
      color: Color(0xFF7F92A0),
      fontSize: 12,
      fontFamily: 'Golos',
      fontWeight: FontWeight.w400,
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
