import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotController extends GetxController {
  
  
  TextEditingController passwordcontroller = TextEditingController();


  cleartext() {
    
   
    passwordcontroller.clear();
  }
}
