import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

import 'dashboard.dart';

class attendancePage extends StatelessWidget {
  const attendancePage({super.key});

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
            onTap: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen() //arrow method
                      ));
            },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Text(
          "Attendance ",
          style: TextStyle(fontSize: 18),
        ),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 56,
            child: Image.asset('assets/images/star_pattern.png'),
          ),
          SizedBox(
            height: 25.36,
          ),
          Container(
            width: double.infinity,
            height: 651,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.arrow_back_ios_new_sharp),
                    Text(
                      'NOVEMBER 2020',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    width: 330,
                    child: Image.asset('assets/images/Calendar.png')),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 25,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Absent',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFFB1B1),
                          shape: OvalBorder(),
                        ),
                        child: const Center(
                          child: Text(
                            '02',
                            style: TextStyle(
                              color: Color(0xFFE92020),
                              fontSize: 13,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w700,
                              height: 1.23,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 25,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Festival_Holidays',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFA9F2A4),
                          shape: OvalBorder(),
                        ),
                        child: const Center(
                          child: Text(
                            '02',
                            style: TextStyle(
                              color: Color(0xFF0BAC00),
                              fontSize: 13,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w700,
                              height: 1.23,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/vector.png',
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
