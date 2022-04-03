
import 'package:authentication_pro/App/ForgotScreen/Controller/ForgotController.dart';
import 'package:authentication_pro/App/LocalWidgets/Textfield.dart';
import 'package:authentication_pro/App/LocalWidgets/Uppertext.dart';
import 'package:authentication_pro/App/LocalWidgets/mainbutton.dart';
import 'package:authentication_pro/App/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ForgotView extends StatelessWidget {
 ForgotView({ Key? key }) : super(key: key);
 final Forgotcontroller = Get.find<ForgotController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        
        body: 
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff25242D),
              Color(0xff22202A),
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: Column(
            children: [
                Container(
            margin: EdgeInsets.all(8.0.sp),
            alignment: Alignment.topLeft,
            child: Container(
                height: 20.0.sp,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Appcolors.green),
                child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                    )))),
                    Column(
                      children: [
                        uppertext('Forgot', 'Password'),
               SizedBox(height: 12.0.h,),
            
                      textfield(
                        text: 'Enter Your Password',
                        keyboard: TextInputType.visiblePassword,
                        controller: Forgotcontroller.passwordcontroller,
                        sufficn: Icon(Icons.visibility),
                        obscure: true,
                        
                      ), 
             SizedBox(height: 3.0.h,),
              mainbutton('Enter', (){})
        
                      ],
                    ),
              
        
            ],
        
            
            
          ),
        ),
        
      ),
    );
  }
}