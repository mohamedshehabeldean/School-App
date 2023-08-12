import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';
class timetable3 extends StatefulWidget {
  const timetable3({Key? key}) : super(key: key);

  @override
  State<timetable3> createState() => _timetable1State();
}

class _timetable1State extends State<timetable3> {
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
            "Timetable ",
            style: TextStyle(fontSize: 18),
          ),
          titleSpacing: 0,
        ),
        body:Column(
          children: [
            Container(
              //height: 20,
              child: Image.asset("assets/images/star_pattern.png"),
            ),
            Container(
              height: 598.363,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Column(

                  children: [
                    _ass(text: "Software Engineering ",period: "Period 1",time: "08:15am-9:00am",name: "mohamed sabry"),
                    _ass(text: "Frensh",period: "Period 2",time: "09:00am-9:45am",name: "yahya hamza"),
                    _ass(text: "Physics",period: "Period 3",time: "09:45am-10:30am",name: "hadi heikal"),
                    _ass(text: "Chemistry",period: "Period 4",time: "11:00am-11:45am",name: "gamal adel"),
                    _ass(text: "Arabic",period: "Period 5",time: "11:45am-12:30am",name: "Eslam Zoghla"),
                    SizedBox(height: 40,),


                  ],
                ),
              ),
            )
          ],
        )
    );
  }

}
Widget _ass({
  required String text,
  required String period,
  required String time,
  required String name,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Container(
      width: 342,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xffE1E3E8),width: 1.3),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0,top: 10),
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
                Text(time,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff777777),
                    )),


              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(color: Color(0xffDBDBDB),thickness: 1.2),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Row(
              children: [
                Text(name,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff777777),
                    )),
                Spacer(),
                Text(period,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),

              ],
            ),
          ),




        ],
      ),
    ),
  );
}


