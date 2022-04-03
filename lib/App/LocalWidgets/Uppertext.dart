import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

uppertext(String text , texttwo) {
  return Column(
    children: [
     
      Padding(
        padding: EdgeInsets.only(right: 120.0.sp, top: 2.0.h),
        child: Text(
          text,
          style: GoogleFonts.abel(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0.sp,
                color: Appcolors.red),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 30.0.sp),
        child: Text(texttwo,
            style: GoogleFonts.ptSansCaption(
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0.sp,
                  color: Appcolors.white),
            )),
      ),
    ],
  );
}
