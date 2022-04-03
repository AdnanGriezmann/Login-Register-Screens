
import 'package:authentication_pro/App/ForgotScreen/Binding/Forgotbinding.dart';
import 'package:authentication_pro/App/ForgotScreen/View/ForgotView.dart';
import 'package:authentication_pro/App/LoginScreen/Binding/Loginbinding.dart';
import 'package:authentication_pro/App/OnboardScreen/View/Onboardview.dart';
import 'package:authentication_pro/App/RegisterScreen/Binding/Registerbinding.dart';
import 'package:authentication_pro/App/RegisterScreen/view/Resgisterview.dart';
import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'App/LoginScreen/view/LoginView.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false, 
        title: 'Authentication Pro',
        theme: ThemeData.dark().copyWith(
          backgroundColor: Appcolors.darkblue,
),
        
           initialRoute: '/onboard',
           getPages: [
              GetPage(name: '/onboard', page: ()=> OnboardView(),),
              GetPage(name: '/Register', transition: Transition.fade,  page: ()=> RegisterView(),binding: Registerbinding(),transitionDuration: Duration(seconds: 2)),
              GetPage(name: '/Login', transition: Transition.fadeIn,  page: ()=> LoginView(),binding: Loginbinding(),transitionDuration: Duration(seconds: 2)),
              GetPage(name: '/Forgot',transition: Transition.fadeIn , page: ()=> ForgotView(),binding: Forgotbinding()),
           ],
          
          
          );
    });
  }
}
