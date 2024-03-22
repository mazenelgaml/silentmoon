



import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:taxico/screens/account_setting/account.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home:Account(),
    );
  }
}





