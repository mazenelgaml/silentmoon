import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Color(0xffffffff),
        child: Column(
          children: [
            Container(
                width: Get.width,
                height: Get.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/backPhoto.png"))),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: Get.width*0.15,
                        height: Get.height*0.075,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color:Color(0xff3F414E),)
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
