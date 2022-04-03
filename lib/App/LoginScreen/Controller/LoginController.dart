import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  
  TextEditingController emailcontroller = TextEditingController();

  
  TextEditingController passwordcontroller = TextEditingController();
  var ispass = true.obs;
    
  var email = "";
  var password = "";
   var name = "";

  
   cleartext() {
    emailcontroller.clear();
    passwordcontroller.clear();
  }
    @override
  void onInit() {
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.onClose();
  }
 
}
