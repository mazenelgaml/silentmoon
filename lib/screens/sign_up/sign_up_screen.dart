import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taxico/screens/welcome/welcome_screen.dart';
import 'package:taxico/widgets/custom_elevated_button/custom_elevated_button.dart';

import '../../widgets/custom_elevated_button/custom_elevated_button_2.dart';
import '../../widgets/custom_text_form_field/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Color(0xffffffff),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: Get.width,
                  height: Get.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/backPhoto.png"))),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (){
                                  Get.back();
                                },
                                child: Container(
                                  width: Get.width*0.14,
                                  height: Get.height*0.07,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      width: 0.7,
                                      color:Color(0xff3F414E),)
                                  ),
                                  child: Icon(Icons.arrow_back_outlined,size: 30,),
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Text("Create your account ",
                            style: TextStyle(
                              color: Color(0xff3F414E),
                              fontWeight: FontWeight.w800,
                              fontSize: 28,
                            ),),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff7583CA) ,
                                borderRadius: BorderRadius.circular(38)
                            ),
                            child: CustomElevatedButton2(icon: "assets/images/facebook.png",onPressed: (){}, text: "CONTINUE WITH FACEBOOK", textColor: Colors.white, buttonColor: Color(0xff7583CA)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEBEAEC) ,
                                borderRadius: BorderRadius.circular(38)
                            ),
                            child: CustomElevatedButton2(icon: "assets/images/google.png",onPressed: (){}, text: "CONTINUE WITH GOOGLE", textColor: Colors.black, buttonColor: Color(0xffEBEAEC)),
                          )
                        ],
                      ),
                    ),
                  )),
              Center(
                child: Container(
                  child: Text("OR LOG IN WITH EMAIL",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffA1A4B2)
                  ),),
                ),
              ),
              Container(
                height: Get.height*0.32,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: CustomTextFormField(text: 'UserName',icon:Icon( Icons.person),),
                    ),
                    Center(
                      child: CustomTextFormField(text: 'Email Address',icon:Icon( Icons.email),),
                    ),
                    Center(
                      child: CustomTextFormField(text: 'Password',icon:Container(width: 25,child: Image(image: AssetImage("assets/images/eyeLashes.png"),)),),
                    ),
                  ],
                ),
              ),
             Container(
                 decoration: BoxDecoration(
                     color:Color(0xff8E97FD),
                     borderRadius: BorderRadius.circular(38)
                 ),
               child: CustomElevatedButton(onPressed: (){

               }, text: "GET STARTED", textColor: Colors.white, buttonColor: Color(0xff8E97FD)),
             )
            ],
          ),
        ),
      ),
    );
  }
}
