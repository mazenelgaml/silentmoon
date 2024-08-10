import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_elevated_button/custom_elevated_button.dart';

class WelcomeScreenn extends StatelessWidget {
  const WelcomeScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgrounddd.png'),
            fit: BoxFit.fill,
          ),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "Wecome to Sleep",
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffE6E7F2),
                  ),
                ),
                Text(
                  "Explore the new king of sleep. It uses\n                          sound\n   and vesualization to create perfect\n       conditions for refreshing sleep.",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff8E97FD),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
                decoration: BoxDecoration(
                    color:Color(0xff8E97FD) ,
                    borderRadius: BorderRadius.circular(38)
                ),
                child: CustomElevatedButton(onPressed:(){}, text: 'GET STARTED', textColor: Colors.white, buttonColor: Color(0xff8E97FD),)),
          ],
        ),
      ),
    );
  }
}
