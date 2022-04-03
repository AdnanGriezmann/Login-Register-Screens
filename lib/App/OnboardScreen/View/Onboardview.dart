import 'package:authentication_pro/App/OnboardScreen/Widgets/Button.dart';
import 'package:authentication_pro/App/OnboardScreen/Widgets/upperimage.dart';
import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Appcolors.darkblue,
        body: Column(
          children: [
            UpperImage(),
            Spacer(),
            button(),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 2.0.h),
              child: Text(
                'Authentication with Django Plus Flutter 2022',
                style: TextStyle(
                    color: Appcolors.grey,
                    fontSize: 9.0.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
