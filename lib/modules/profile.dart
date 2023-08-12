import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool x = true;

  @override
  Widget build(BuildContext context) {
    double totalgba;
    return Scaffold(
      backgroundColor: Color(0xff2855AE).withBlue(400),
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                x = !x;
              });
            },
            child: Container(
              child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Text(
                "Done",
                style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                        
              ),
                      x?Icon(Icons.error):Icon(Icons.check_circle),
                    ],
                  )),
              width: 100,
              decoration: BoxDecoration(
                  color:x?Colors.white: Colors.green, borderRadius: BorderRadius.circular(50)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
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
          "My Profile ",
          style: TextStyle(fontSize: 18),
        ),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          Container(
            //height: 20,
            child: Image.asset("assets/images/star_pattern.png"),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 618.35,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 25.0),
                      child: Container(
                        width: 340,
                        height: 130,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            border: Border.all(color: Color(0xff5278C1)),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  // border: Border.all(color: Color(0xff5278C1)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.ac_unit_rounded,
                                  size: 70,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0, left: 5),
                                      child: Text(
                                        "Mohamed Sabey",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 25.0),
                                      child: Icon(Icons.camera_alt_rounded),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 21.0, top: 20),
                                      child: Text(
                                        "Class XI-B  |  Roll no:04",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff777777)),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 80.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Adhar No:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            "1234 4325 4567 1234",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff777777)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Admission Class:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Text(
                            "VI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff777777)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Old Admission No:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "T00221 ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff777777)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Date of Admission:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "01 Apr 2018 ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff777777)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Parent Mail :",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          // SizedBox(width: 10,),
                          Text(
                            "parentboth84@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff777777)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Father name :",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            "Sabry Shehab ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff777777)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Number",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            "01055667788",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff777777)),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
