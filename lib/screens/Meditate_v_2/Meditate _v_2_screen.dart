import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../widgets/bottom_navigation_bar/bottom_navigation_bar.dart';

class MediateV2Screen extends StatefulWidget {
  MediateV2Screen({super.key});

  int selectedIndex = 0;

  @override
  State<MediateV2Screen> createState() => _MediateV2ScreenState();
}

class _MediateV2ScreenState extends State<MediateV2Screen> {
  @override
  Widget build(BuildContext context) {
    List<String> photos = [
      "assets/images/all.png",
      "assets/images/My.png",
      "assets/images/Anxious.png",
      "assets/images/sleepIconTop.png",
      "assets/images/kids.png"
    ];
    List<String> names = ["All", "My", "Anxious", "Sleep", "Kids"];
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: MyBottomNavigationBar(mediate: Image(image: AssetImage("assets/images/mediateIconSelected.png"),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Column(

              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Text(
                      "Meditate",
                      style: TextStyle(
                          color: Color(0xff3F414E),
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    child: Text(
                      "we can learn how to recognize when our\n  minds are doing their normal everyday\n                           acrobatics.",
                      style: TextStyle(
                          color: Color(0xffA0A3B1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                width: Get.width,
                height: Get.height * 0.15,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            widget.selectedIndex = index;
                          });
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                    color: widget.selectedIndex == index
                                        ? Color(0xff8E97FD)
                                        : Color(0xffA0A3B1),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Image(
                                    image: AssetImage(photos[index]),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  child: Text(
                                    names[index],
                                    style: TextStyle(
                                        fontWeight: widget.selectedIndex == index
                                            ? FontWeight.w800
                                            : FontWeight.w600,
                                        fontSize: 16,
                                        color: widget.selectedIndex == index
                                            ? Color(0xff3F414E)
                                            : Color(0xffA0A3B1)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 15,
                      );
                    },
                    itemCount: 5),
              ),
              Center(
                child: Container(
                  width: Get.width * 0.9,
                  height: Get.height * 0.1,
                  decoration: BoxDecoration(
                      color: Color(0xffF1DDCF),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("assets/images/dailyCalm.png"),
                          fit: BoxFit.fill)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Daily Calm",
                              style: TextStyle(
                                  color: Color(0xff3F414E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "APR 30",
                                  style: TextStyle(
                                      color: Color(0xff5A6175),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Color(0xff5A6175),
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              Container(
                                child: Text(
                                  "PAUSE PRACTICE",
                                  style: TextStyle(
                                      color: Color(0xff5A6175),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff3F414E),
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: Get.width*0.9,
            height: Get.height*0.4,
            child:  StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: [
            StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/Mask Group.png"),fit: BoxFit.fill)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height:50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5)
                        ,bottomRight: Radius.circular(5)),
                    boxShadow: [BoxShadow(
                      color: Colors.white.withOpacity(0.25),
                      blurRadius: 20
                    )]
                  ),
                  child: Center(
                    child: Text(
                      '7 Days of Calm',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            ),
            ),
            StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.75,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/relaxing.png"),fit: BoxFit.fill)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height:40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5)
                            ,bottomRight: Radius.circular(5)),
                        boxShadow: [BoxShadow(
                            color: Colors.white.withOpacity(0.25),
                            blurRadius: 20
                        )]
                    ),
                    child: Center(
                      child: Text(
                        'Anxiet Release',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            ),
            StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/forest.png"),fit: BoxFit.fill)
              ),

            ),
            ),
            StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 0.75,
            child:Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/beach.png"),fit: BoxFit.fill)
              ),

            ),
            ),
            ],
            ),
    ),



        ],
      ),
    ));
  }
}
