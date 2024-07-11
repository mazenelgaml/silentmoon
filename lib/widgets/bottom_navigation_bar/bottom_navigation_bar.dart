import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxico/screens/Meditate_v_2/Meditate%20_v_2_screen.dart';
import 'package:taxico/screens/home1/home_screen_1.dart';

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar({super.key,this.home,this.mediate,this.music,this.profile,this.sleep});
  Widget?home;
  Widget?sleep;
  Widget?mediate;
  Widget?music;
  Widget?profile;

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if(_selectedIndex==0){
      Get.to(()=>HomeScreen1());
    }else if(_selectedIndex==1){

    }else if(_selectedIndex==2){
         Get.to(()=>MediateV2Screen());
    }else if(_selectedIndex==3){

    }else{

    }
  }

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensures all labels are always shown
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: widget.home??Image(image: AssetImage("assets/images/homeBottomIcon.png"),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:widget.sleep?? Image(image: AssetImage("assets/images/sleepIcon.png"),),
            label: 'Sleep',
          ),
          BottomNavigationBarItem(
            icon: widget.mediate?? Image(image: AssetImage("assets/images/mediateIcon.png"),),
            label: 'Meditate',
          ),
          BottomNavigationBarItem(
            icon: widget.music??Image(image: AssetImage("assets/images/muicIcon.png"),),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon:  widget.profile??Image(image: AssetImage("assets/images/profileIcon.png"),),
            label: 'Afsar',
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w800,
          color: Color(0xff8E97FD),
            fontSize: 15
        ),
        unselectedLabelStyle:  TextStyle(
            fontWeight: FontWeight.w600,
          color: Colors.grey,
          fontSize: 15
        ),
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff8E97FD),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      );
  }
}
