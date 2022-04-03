
import 'package:authentication_pro/App/ForgotScreen/Controller/ForgotController.dart';
import 'package:get/get.dart';

class Forgotbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ForgotController());
  }
}
