import 'package:flutter/material.dart';

class Ride extends StatelessWidget {
  const Ride({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 342,
                height: 186,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Row(
                            children:[
                              Container(
                                width: 8,
                                height:8 ,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "From - Kamieńskiego 11, Cracow",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xffD6D6D6)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bonarka City Center",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff303030)),
                              ),
                              SizedBox(height: 3,),
                              Container(
                                width: 273,
                                height: 1,
                                child: Divider(
                                    color: Color(0xffF6F6F6),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Row(
                            children:[
                              Container(
                                width: 8,
                                height:8 ,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "To - Kobierzyńska Street, Cracow",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xffD6D6D6)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Home",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff303030)),
                              ),
                              SizedBox(height: 3,),
                              Container(
                                width: 273,
                                height: 1,
                                child: Divider(
                                  color: Color(0xffF6F6F6),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                          child: Text(
                              "ID: 5431443675434214",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color(0xffD6D6D6)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 25, 15, 0),
                          child: Text(
                            "Today: 5:15 pm",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color(0xffD6D6D6)),
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 342,
                height: 186,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      10
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Row(
                            children:[
                              Container(
                                width: 8,
                                height:8 ,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "From - Kamieńskiego 11, Cracow",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xffD6D6D6)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bonarka City Center",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff303030)),
                              ),
                              SizedBox(height: 3,),
                              Container(
                                width: 273,
                                height: 1,
                                child: Divider(
                                  color: Color(0xffF6F6F6),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Row(
                            children:[
                              Container(
                                width: 8,
                                height:8 ,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "To - Kobierzyńska Street, Cracow",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xffD6D6D6)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Home",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff303030)),
                              ),
                              SizedBox(height: 3,),
                              Container(
                                width: 273,
                                height: 1,
                                child: Divider(
                                  color: Color(0xffF6F6F6),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                          child: Text(
                            "ID: 5431443675434214",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color(0xffD6D6D6)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 25, 15, 0),
                          child: Text(
                            "Today: 5:15 pm",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color(0xffD6D6D6)),
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 342,
                height: 186,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      10
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Row(
                            children:[
                              Container(
                                width: 8,
                                height:8 ,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "From - Kamieńskiego 11, Cracow",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xffD6D6D6)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bonarka City Center",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff303030)),
                              ),
                              SizedBox(height: 3,),
                              Container(
                                width: 273,
                                height: 1,
                                child: Divider(
                                  color: Color(0xffF6F6F6),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Row(
                            children:[
                              Container(
                                width: 8,
                                height:8 ,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "To - Kobierzyńska Street, Cracow",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xffD6D6D6)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Home",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff303030)),
                              ),
                              SizedBox(height: 3,),
                              Container(
                                width: 273,
                                height: 1,
                                child: Divider(
                                  color: Color(0xffF6F6F6),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                          child: Text(
                            "ID: 5431443675434214",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color(0xffD6D6D6)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 25, 15, 0),
                          child: Text(
                            "Today: 5:15 pm",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color(0xffD6D6D6)),
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),

            ],
          ),
        ),
      ) ,
    );
  }
}
