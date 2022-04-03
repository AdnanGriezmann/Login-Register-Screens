
import 'package:authentication_pro/App/LoginScreen/Controller/LoginController.dart';


import 'package:get/get.dart';

class Loginbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
