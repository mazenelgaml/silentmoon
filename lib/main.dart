import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:taxico/screens/account_setting/account.dart';
import 'package:taxico/screens/sign_up/sign_up_screen.dart';
import 'package:taxico/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home:SignUpScreen(),
    );
  }
}