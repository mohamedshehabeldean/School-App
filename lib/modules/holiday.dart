import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

import 'dashboard.dart';
class HolidayPage extends StatelessWidget {
  const HolidayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2855AE).withBlue(400),
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff2855AE).withBlue(400),
          // systemNavigationBarColor: Colors.white,

          systemNavigationBarDividerColor: Colors.white,
        ),
        backgroundColor: Color(0xff2855AE).withBlue(400),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen()//arrow method
                  )
              );
            },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Text(
          "Holiday ",
          style: TextStyle(fontSize: 18),
        ),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset('assets/images/star_pattern.png'),
          ),
          Container(
            width: double.infinity,
            height: 657.1,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.arrow_back_ios_new_sharp),
                    Text(
                      'NOVEMBER 2020',
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ), ),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                ),

                SizedBox(height: 10,),
                Container(
                    width: 330,
                    child: Image.asset('assets/images/CalendarHoliday.png')
                ),

                const SizedBox(height: 10,),
                Row(
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'List of Holiday',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black,width: 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 10 ,),
                          Text(
                            'Diwali',
                            style: TextStyle(
                              color: Color(0xFF3A3A3A),
                              fontSize: 16,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600,
                              height: 1.44,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '14th November',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 14,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400,
                              height: 1.29,
                            ),
                          ),
                          SizedBox(width: 130,),
                          Text(
                            'Saturday',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 14,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400,
                              height: 1.29,
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black,width: 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 10 ,),
                          Text(
                            'Govardhan Puja',
                            style: TextStyle(
                              color: Color(0xFF3A3A3A),
                              fontSize: 16,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600,
                              height: 1.44,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '15th November',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 14,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400,
                              height: 1.29,
                            ),
                          ),
                          SizedBox(width: 130,),
                          Text(
                            'Sunday',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 14,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400,
                              height: 1.29,
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black,width: 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 10 ,),
                          Text(
                            'Bhaiya Dooj',
                            style: TextStyle(
                              color: Color(0xFF3A3A3A),
                              fontSize: 16,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600,
                              height: 1.44,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '16th November',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 14,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400,
                              height: 1.29,
                            ),
                          ),
                          SizedBox(width: 130,),
                          Text(
                            'Monday',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 14,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400,
                              height: 1.29,
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
        ],
      ),
    );
  }
}