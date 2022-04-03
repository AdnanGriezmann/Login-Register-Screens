
import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class textfield extends StatelessWidget {
  String text;
  bool? obscure;
  Widget? icon;
  TextInputType keyboard;
  TextEditingController controller;
  Widget? sufficn;
  final onsave;
  final validator;
  textfield({
    
    required this.text,
    this.obscure,
    this.icon,
    required this.keyboard,
    required this.controller,
    this.sufficn,
    this.onsave,

    this.validator,
  });
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0.sp),
      child: TextFormField(
        
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        onSaved: onsave,
        controller: controller,
        keyboardType: keyboard,
        keyboardAppearance: Brightness.dark,
        obscureText: obscure = false,
        cursorColor: Appcolors.white,
        cursorWidth: 1.0.w,
        cursorHeight: 20.0.sp,
        style: TextStyle(
          color: Appcolors.white,
          fontSize: 13.0.sp,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(

          prefixIcon: icon,
          suffixIcon: sufficn,
          helperText: text,
          helperStyle: TextStyle(
              color: Appcolors.white,
              fontSize: 10.0.sp,
              fontWeight: FontWeight.w900),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.sp),
            borderSide: BorderSide(
              width: 2,
              color: Appcolors.green,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.sp),
            borderSide: BorderSide(
              width: 2,
              color: Appcolors.green,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.sp),
            borderSide: BorderSide(
              width: 2,
              color: Appcolors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.sp),
            borderSide: BorderSide(
              width: 2,
              color: Appcolors.red,
            ),
          ),
        ),
        
        
      ),
    );
  }
}
