import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

mainbutton(String text,Function() onpress) {
  return Padding(
    padding: EdgeInsets.all(8.0.sp),
    child: Container(
      height: 6.0.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpress,
        child: Text(text,
            style: TextStyle(
                fontSize: 14.0.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.4)),
        style: ElevatedButton.styleFrom(
          onPrimary: Appcolors.white,
          primary: Appcolors.darkblue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0.sp),
          ),
        ),
      ),
    ),
  );
}
