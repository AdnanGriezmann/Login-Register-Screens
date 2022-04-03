import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar {
  static void snacbar({required String title, required String message,required Color backgroundcolor}) {
    Get.snackbar(
      title,
      message,
      colorText: Appcolors.white,
      backgroundColor: backgroundcolor,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),

      

    );
  }
}
