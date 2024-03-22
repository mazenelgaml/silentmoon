import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:taxico/screens/Otps/otps.dart';
import 'package:taxico/screens/account_setting/account.dart';
import 'package:taxico/screens/home/home_screen.dart';
import 'package:taxico/screens/ride_history/ride.dart';
void main() => runApp(MyApp());
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
