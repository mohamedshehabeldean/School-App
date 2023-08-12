import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';

class assignment extends StatefulWidget {
  const assignment({Key? key}) : super(key: key);

  @override
  State<assignment> createState() => _assignmentState();
}

class _assignmentState extends State<assignment> {
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
        leading: InkWell(onTap: (){
          Navigator.pop(context,
              MaterialPageRoute(
                  builder: (context) => HomeScreen()//arrow method
              )
          );
        },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Text(
          "Assignment ",
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
          Container(
            height: 668.35,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: [
                _ass(title: "Mathematics",text: "Surface area and Volumes",stdate: "10 Nov 20",endate: "10 Dec 20",button: true,height: 230),
                _ass(title: "Science",text: "Structure of Atoms",stdate: "10 Oct 20",endate: "30 Oct 20",button: false,height: 190),
                _ass(title: "English",text: "My Bestfriend Essay",stdate: "10 Sep 20",endate: "30 Sep 20",button: false,height: 190),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _ass({
  required String title,
  required String text,
  required String stdate,
  required double height,
  required String endate,
  required bool button,
}) {
    return Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  width: 342,
                  height: height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE1E3E8)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, top: 18),
                            child: Container(
                              child: Center(
                                  child: Text(
                                    title,
                                style: TextStyle(
                                    color: Color(0xff6789CA),
                                    fontWeight: FontWeight.bold),
                              )),
                              width: 160,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xffE6EFFF),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Row(
                          children: [
                            Text(
                              text,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Row(
                          children: [
                            Text("Assign Data",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff777777),
                                )),
                            Spacer(),
                            Text(stdate,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Row(
                          children: [
                            Text("Last submission Data",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff777777),
                                )),
                            Spacer(),
                            Text(endate,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),button?
                      Container(
                        width: 318,
                        height: 50,
                        decoration: BoxDecoration(
                            color:  Color(0xff2855AE).withBlue(400),
                            borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("TO BE SUBMITTED",style: TextStyle(color: Colors.white),)),
                      ):Container(
                        color: Colors.white,
                      )


                    ],
                  ),
                ),
              );
  }
}
