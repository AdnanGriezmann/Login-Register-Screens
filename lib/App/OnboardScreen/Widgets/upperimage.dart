
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

UpperImage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0.sp, vertical: 8.0.sp),
      height: 27.0.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4.0.h),
          bottomRight: Radius.circular(4.0.h),
        ),
        image: DecorationImage(
            image: AssetImage('Assets/Images/onbord.png'), fit: BoxFit.cover),
      ),
    );
  }