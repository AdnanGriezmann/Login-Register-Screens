import 'package:authentication_pro/App/RegisterScreen/Controller/RegisterController.dart';
import 'package:authentication_pro/App/LocalWidgets/Textfield.dart';
import 'package:authentication_pro/App/LocalWidgets/Uppertext.dart';
import 'package:authentication_pro/App/LocalWidgets/mainbutton.dart';
import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:authentication_pro/App/Utils/Snacbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class RegisterView extends StatefulWidget {
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final regcontroller = Get.find<RegisterController>();
  final _formKey = GlobalKey<FormState>();
  bool isobscure = true;

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
                Container(
                    margin: EdgeInsets.all(8.0.sp),
                    alignment: Alignment.topLeft,
                    child: Container(
                        height: 20.0.sp,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Appcolors.green),
                        child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                            )))),
                uppertext(
                  'REGISTER',
                  'Credentials',
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.0.h),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        textfield(
                            text: 'Enter Your Name',
                            keyboard: TextInputType.name,
                            controller: regcontroller.namecontroller,
                            icon: Icon(Icons.person, color: Appcolors.white),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Name must be required';
                              } else {
                                return null;
                              }
                              // regcontroller.validateName(value!);
                            },
                            onsave: (value) {
                              regcontroller.name = value;
                            }),
                        textfield(
                            text: 'Enter Your Email',
                            keyboard: TextInputType.emailAddress,
                            controller: regcontroller.emailcontroller,
                            icon: Icon(Icons.email_rounded,
                                color: Appcolors.white),
                            validator: (value) {
                              if (!GetUtils.isEmail(value)) {
                                return 'Email is badly format';
                              } else {
                                return null;
                              }
                              //regcontroller.validateEmail(value!);
                            },
                            onsave: (value) {
                              regcontroller.email = value!;
                            }),
                        textfield(
                            text: 'Enter Your Password',
                            keyboard: TextInputType.visiblePassword,
                            controller: regcontroller.passwordcontroller,
                            sufficn: InkWell(
                              onTap: () {
                                setState(() {
                                  isobscure = !isobscure;
                                });
                              },
                              child: Icon(
                                isobscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Appcolors.white,
                              ),
                            ),
                            obscure: isobscure,
                            validator: (value) {
                              if (value.length <= 5) {
                                return 'password must be 6 characters';
                              } else {
                                return null;
                              }
                              // regcontroller.validatePassword(value);
                            },
                            onsave: (value) {
                              regcontroller.password = value!;
                            }),
                        SizedBox(
                          height: 4.0.h,
                        ),
                        mainbutton(
                          'REGISTER',
                          () {
                            //regcontroller.cleartext();
                            if (_formKey.currentState!.validate()) {
                              print('allgood');

                               Get.toNamed('/Login');

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
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0.h,
                ),
                Container(
                  height: 5.0.h,
                  width: 76.0.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Assets/Icons/facebook.png'),
                      SizedBox(
                        width: 5.0.w,
                      ),
                      Image.asset('Assets/Icons/instagram.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0.h),
                  child: Text(
                    'Registration CopyRights @2022',
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
