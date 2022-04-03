import 'package:authentication_pro/App/LoginScreen/Controller/LoginController.dart';
import 'package:authentication_pro/App/LocalWidgets/Textfield.dart';
import 'package:authentication_pro/App/LocalWidgets/Uppertext.dart';
import 'package:authentication_pro/App/LocalWidgets/mainbutton.dart';
import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:authentication_pro/App/Utils/Snacbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatelessWidget {
  final Logincontroller = Get.find<LoginController>();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.darkblue,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff25242D),
              Color(0xff22202A),
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                uppertext(
                  'LOGIN',
                  'Credentials',
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.0.h),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        textfield(
                            text: 'Enter Your Email',
                            keyboard: TextInputType.emailAddress,
                            controller: Logincontroller.emailcontroller,
                            icon: Icon(
                              Icons.email_rounded,
                              color: Appcolors.white,
                            ),
                            validator: (value) {
                              if (!GetUtils.isEmail(value)) {
                              return  'Email is badly format';
                              } else {
                                return null;
                              }
                            },
                            onsave: (value) {
                              Logincontroller.name = value;
                            }),
                        Obx(
                          () => textfield(
                              text: 'Enter Your Password',
                              keyboard: TextInputType.visiblePassword,
                              controller: Logincontroller.passwordcontroller,
                              sufficn: InkWell(
                                onTap: () {
                                  Logincontroller.ispass.value =
                                      !Logincontroller.ispass.value;
                                },
                                child: Icon(
                                  Logincontroller.ispass.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Appcolors.white,
                                ),
                              ),
                              obscure: Logincontroller.ispass.value,
                              validator: (value) {
                                if (value.length <= 5) {
                                return  'Password must be 6 characters';
                                } else {
                                  return null;
                                }
                              },
                              onsave: (value) {
                                Logincontroller.password = value!;
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 28.0.h),
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed('/Forgot');
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Appcolors.green,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13.0.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.0.h,
                        ),
                        mainbutton('LOGIN', () {
                         // Logincontroller.cleartext();
                     if (_formKey.currentState!.validate()) {
                              print('allgood');

                               Get.toNamed('/Register');

                              return Snackbar.snacbar(
                                  title: 'Sucessfull',
                                  message: 'Validate',
                                  backgroundcolor: Appcolors.green);
                            } else {
                              print('bad');
                                 return Snackbar.snacbar(
                                  title: 'Opps',
                                  message: ' Not Validate',
                                  backgroundcolor: Appcolors.red);
                            }
                           
                          
                        }),
                         SizedBox(height: 2.0.h,),
                     Container(
                      
                       height: 5.0.h,
                       width: 76.0.h,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image.asset('Assets/Icons/facebook.png'),
                           SizedBox(width: 5.0.w,),
                           Image.asset('Assets/Icons/instagram.png'),
                     
                     
                         ],
                     
                       ),
                     ),
                        SizedBox(height: 2.0.h),
                        InkWell(
                            onTap: () {
                              Get.toNamed('/Register');
                            },
                            child: Text(
                              'Don,t have an account?\t Register',
                              style: TextStyle(
                                  color: Appcolors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0.h),
                  child: Text(
                    'Logins CopyRights @2022',
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
        ),
      ),
    );
  }
}
