import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';
import 'animation_button_effect.dart';
import 'loading.dart';


// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  Color? color;
  Gradient? gradient;
  final bool isLoading;

  CustomButton(
      {Key? key,
      required this.onTap,
      required this.title,
      this.gradient,
      this.isLoading = false,
      this.color
      
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: AnimationButtonEffect(
        disabled: !isLoading,
        child: Container(
          height: 60.h,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: gradient,
              borderRadius: BorderRadius.circular(16.r), color: color),
          child: Center(
            child: isLoading
                ? const Loading()
                : Text(
                    title,
                    style: const TextStyle(color: Style.white),
                  ),
          ),
        ),
      ),
    );
  }
}
