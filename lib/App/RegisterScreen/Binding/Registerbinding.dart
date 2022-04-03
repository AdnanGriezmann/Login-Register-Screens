
import 'package:authentication_pro/App/RegisterScreen/Controller/RegisterController.dart';
import 'package:get/get.dart';

class Registerbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterController());
  }
}
