import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

//final registerFormKey = GlobalKey<FormState>();

  var ispass = true.obs;
  var email = "";
  var password = "";
   var name = "";

  cleartext() {
    namecontroller.clear();
    emailcontroller.clear();
    passwordcontroller.clear();
  }

  @override
  void onInit() {
    namecontroller = TextEditingController();
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.onClose();
  }

  // validateEmail(String value) {
  //   if (!GetUtils.isEmail(value)) {
  //     return 'Email is badly format';
  //   } else {
  //     return null;
  //   }
  //}
  //   validateName(String value) {
  //   if (value.isEmpty) {
  //     return 'Fill must this field';
  //   } else {
  //     return null;
  //   }
  // }

  // validatePassword(String value) {
  //   if (value.length <= 5) {
  //     return 'Validate please';
  //   } else {
  //     return null;
  //   }
  // }

  // void checkLogin() {
  //   final isValid = registerFormKey.currentState!.validate();
  //   if (!isValid) {
  //     return null;
  //   }
  //   registerFormKey.currentState!.save();
  // }
}
