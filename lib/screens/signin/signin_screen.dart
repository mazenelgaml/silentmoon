import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxico/screens/sign_up/sign_up_screen.dart';


import '../../widgets/custom_back_button/cutom_back_button.dart';
import '../../widgets/custom_elevated_button/custom_elevated_button.dart';
import '../../widgets/custom_elevated_button/custom_elevated_button_2.dart';
import '../../widgets/custom_text_form_field/custom_text_form_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            CustomBackButton(),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child:   Container(
                decoration: BoxDecoration(
                    color: Color(0xff7583CA) ,
                    borderRadius: BorderRadius.circular(38)
                ),
                child: CustomElevatedButton2(icon: "assets/images/facebook.png",onPressed: (){}, text: "CONTINUE WITH FACEBOOK", textColor: Colors.white, buttonColor: Color(0xff7583CA)),
              ),
            ), SizedBox(height: 20),
            Center(
              child:  Container(
                decoration: BoxDecoration(
                    color: Color(0xffEBEAEC) ,
                    borderRadius: BorderRadius.circular(38)
                ),
                child: CustomElevatedButton2(icon: "assets/images/google.png",onPressed: (){}, text: "CONTINUE WITH GOOGLE", textColor: Colors.black, buttonColor: Color(0xffEBEAEC)),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "OR LOG IN WITH EMAIL",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: CustomTextFormField(
                text: 'Email address',
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: CustomTextFormField(
                text: "Password",
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xff8E97FD),
                  borderRadius: BorderRadius.circular(38),
                ),
                child: CustomElevatedButton(
                  onPressed: () {},
                  text: 'LOG IN',
                  textColor: Colors.white,
                  buttonColor: Color(0xff8E97FD),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Forgot Password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't HAVE AN ACCOUNT?",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: (){
                    Get.to(()=>SignUpScreen());
                  },
                  child: Text(
                    " SIGN UP",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff8E97FD),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
