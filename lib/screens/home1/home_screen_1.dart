import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen1 extends StatelessWidget {
  HomeScreen1({super.key});
  List<String>photos=["assets/images/focus.png","assets/images/hapiness2.png","assets/images/focus.png",];
  List<String>names=["Focus","Happiness ","Focus"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height*0.1,
        title: Center(child: Container(
          child: Image(image: AssetImage("assets/images/logoHome.png"),),
        )),
      ),body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                child: Text("Good Morning, Afsar",style: TextStyle(
                  color: Color(0xff3F414E),
                  fontWeight: FontWeight.bold,
                  fontSize: 28
                ),),
              ),
              Container(
                child: Text("We Wish you have a good day",style: TextStyle(
                    color: Color(0xffA1A4B2),
                    fontWeight: FontWeight.w300,
                    fontSize: 20
                ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                width: Get.width*0.43,
                height: Get.height*0.24,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/first.png")),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff8E97FD)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 100,
                                height: 90,

                              )
                            ],
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: Text("Basics",
                                  style: TextStyle(
                                  color: Color(0xffFFECCC),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                              Container(

                                child: Text("COURSE",
                                  style: TextStyle(
                                      color: Color(0xffFFECCC),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text("3-10 MIN",
                              style: TextStyle(
                                  color: Color(0xffEBEAEC),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                              ),),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: Get.width*0.18,
                              height: Get.height*0.04,
                              decoration: BoxDecoration(
                                color: Color(0xffEBEAEC),
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Text("START", style: TextStyle(
                                    color: Color(0xff3F414E),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600
                                ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: Get.width*0.43,
                height: Get.height*0.24,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/second.png")),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFDB9D)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                          width: 180,
                          height: 90,
                         
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                child: Text("Relaxation",
                                  style: TextStyle(
                                      color: Color(0xff263238),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                              Container(

                                child: Text("MUSIC",
                                  style: TextStyle(
                                      color: Color(0xff263238),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text("3-10 MIN",
                              style: TextStyle(
                                  color: Color(0xff263238),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                              ),),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: Get.width*0.18,
                              height: Get.height*0.04,
                              decoration: BoxDecoration(
                                  color: Color(0xff263238),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Text("START", style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600
                                ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              width: Get.width*0.92,
              height: Get.height*0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("assets/images/daily.png"))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Daily Thought",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("MEDITATION",style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w600
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5,right: 5),
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                          Container(
                            child: Text("3-10 MIN",style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w600
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Center(child: Icon(Icons.play_arrow,size: 30,color: Color(0xff333242),),),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("Recomended for you",
            style: TextStyle(
              color: Color(0xff3F414E),
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: Get.width,
            height: Get.height*0.2,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return InkWell(
                onTap: (){},
                child: Container(
                  width: 162,
                  height: 159.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 162,
                        height: 113.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(photos[index]))
                        ),
                      ),
                      Container(
                        child: Text(names[index],
                        style: TextStyle(
                          color: Color(0xff3F414E),
                          fontSize:18,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("MEDITATION",style: TextStyle(
                                color: Color(0xffA1A4B2),
                                fontSize: 11,
                                fontWeight: FontWeight.w600
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5,right: 5),
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Color(0xffA1A4B2),
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                          Container(
                            child: Text("3-10 MIN",style: TextStyle(
                                color: Color(0xffA1A4B2),
                                fontSize: 11,
                                fontWeight: FontWeight.w600
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }, separatorBuilder: (context,index){
              return SizedBox(width: 10,);
            } , itemCount:3),
          )
        ],
            ),
      ),
    );
  }
}
