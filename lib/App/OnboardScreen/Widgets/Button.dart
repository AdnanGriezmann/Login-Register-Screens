
 import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

button() {
    return Container(
      child: MaterialButton(
        onPressed: () {
          Get.offNamed('/Register');
        },
        child: Text('Get Started',
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ))),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0.sp),
          side: BorderSide(width: 2, color: Appcolors.Pinkpurple),
        ),
        color: Appcolors.white,
        textColor: Appcolors.darkblue,
        minWidth: 50.0.w,
        height: 5.0.h,
      ),
    );
  }