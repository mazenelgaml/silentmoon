import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxico/widgets/custom_elevated_button/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            color: Color(0xff8E97FD),
            image: DecorationImage(
                image: AssetImage("assets/images/welcomeScreenPhoto.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Get.height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Hi Afsar, Welcome",
                            style: TextStyle(
                                color: Color(0xffFFECCC),
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Center(
                          child: Container(
                            child: Text(
                              "to Silent Moon",
                              style: TextStyle(
                                  color: Color(0xffFFECCC),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          "Explore the app, Find some peace of ",
                          style: TextStyle(
                              color: Color(0xffFFECCC),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Center(
                          child: Container(
                        child: Text(
                          "mind to prepare for meditation.",
                          style: TextStyle(
                              color: Color(0xffFFECCC),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
           Container(
             decoration: BoxDecoration(
               color:Color(0xffEBEAEC) ,
               borderRadius: BorderRadius.circular(38)
             ),
             child: CustomElevatedButton(onPressed: (){}, text: "Get Started", textColor: Color(0xff3F414E),
               buttonColor: Color(0xffEBEAEC),),
           )
          ],
        ),
      ),
    );
  }
}
