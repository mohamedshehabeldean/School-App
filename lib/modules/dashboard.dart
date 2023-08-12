import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iti_project/modules/profile.dart';
import 'package:iti_project/modules/school_gallery.dart';
import 'package:iti_project/modules/support.dart';
import 'package:iti_project/modules/timetable.dart';

import '../Notes/note_screen.dart';
import 'ask_doubts.dart';
import 'assignment.dart';
import 'attendance.dart';
import 'data_sheet.dart';
import 'events.dart';
import 'gpacalculator.dart';
import 'holiday.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/images/sabry.jpg"),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => profile()//arrow method
                              )
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Moahmed Sabry",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down_rounded,size: 35,),
                    ],
                  ),
                  Divider(

                    color: Colors.black87,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.phone,size: 30,),
                      SizedBox(width: 15,),
                      Text("01069494171",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.location_on_rounded,size: 30,),
                      SizedBox(width: 15,),
                      Text("Cairo",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.save_rounded,size: 30,),
                      SizedBox(width: 15,),
                      Text("saved Messages",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.settings,size: 30,),
                      SizedBox(width: 15,),
                      Text("Settings",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ],
              ),
            )
          ],


        ),








      ),

      backgroundColor: Color(0xff2855AE).withBlue(400),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi Mohamed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w400,
                          height: 1.27,
                        ),
                      ),
                      const Opacity(
                        opacity: 0.61,
                        child: Text(
                          'Class XI-B  |  Roll no: 04',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.w400,
                            height: 1.7,
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Text(
                          '2020-2021',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF6184C7),
                            fontSize: 14,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 62,
                        height: 62,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => profile()//arrow method
                                )
                            );
                          },
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/sabry.jpg'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              // height: 86,
              child: Image.asset('assets/images/star_pattern.png'),
            ),
            Container(
              width: double.infinity,
              height: 589.45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          gpaCalculator() //arrow method
                                      ));
                            },
                            child: MyContainer(
                                data: 'GPA',
                                image: 'assets/images/calculator.png')),
                        const SizedBox(
                          height: 150,
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          assignment() //arrow method
                                      ));
                            },
                            child: MyContainer(
                                data: 'Assignment',
                                image: 'assets/images/assignment.png')),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          noteScreen() //arrow method
                                  ));
                            },

                            child: MyContainer(
                                data: 'Notes',
                                image: 'assets/images/post-it.png')),
                        const SizedBox(
                          height: 150,
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          timetable() //arrow method
                                      ));
                            },
                            child: MyContainer(
                                data: 'Time Table',
                                image: 'assets/images/worksheet.png')),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          events() //arrow method
                                  ));
                            },
                            child: MyContainer(
                                data: 'Events',
                                image: 'assets/images/event.png')),
                        const SizedBox(
                          height: 150,
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DataSheet() //arrow method
                                      ));
                            },
                            child: MyContainer(
                                data: 'Data Sheet',
                                image: 'assets/images/file.png')),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AskDoubts() //arrow method
                                      ));
                            },
                            child: MyContainer(
                                data: 'Ask Doubts',
                                image: 'assets/images/doubt.png')),
                        const SizedBox(
                          height: 150,
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          School_gallery() //arrow method
                                      ));
                            },
                            child: MyContainer(
                                data: 'Gallery',
                                image: 'assets/images/picture.png')),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => attendancePage()//arrow method
                                )
                            );
                          },
                            child: MyContainer(
                                data: 'Attendance',
                                image: 'assets/images/attendance.png')),
                        const SizedBox(
                          height: 150,
                          width: 30,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => HolidayPage()//arrow method
                                )
                            );
                          },
                            child: MyContainer(
                                data: 'Holidays',
                                image: 'assets/images/holiday.png')),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => Support()//arrow method
                                )
                            );
                          },
                            child: MyContainer(
                                data: 'support',
                                image: 'assets/images/customer-service.png')),
                        const SizedBox(
                          height: 150,
                          width: 30,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()//arrow method
                                )
                            );
                          },
                            child: MyContainer(
                                data: 'Logout',
                                image: 'assets/images/log-out.png')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String data;
  final String image;

  MyContainer({required this.data, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xffF5F6FC),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset('${image}', height: 60),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                '${data}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
