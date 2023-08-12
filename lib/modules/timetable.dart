import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iti_project/modules/timetable1.dart';
import 'package:iti_project/modules/timetable2.dart';
import 'package:iti_project/modules/timetable3.dart';
import 'package:iti_project/modules/timetable4.dart';
class timetable extends StatefulWidget {
  const timetable({Key? key}) : super(key: key);

  @override
  State<timetable> createState() => _timetableState();
}

class _timetableState extends State<timetable> {
  int ind=0;
  List<Widget> _screens=[
    timetable1(),
    timetable2(),
    timetable3(),
    timetable4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        color: Colors.white,
        animationDuration: Duration(milliseconds: 350),
        items: [
          CurvedNavigationBarItem(
            child:  Text("Mon",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            // label: 'Mon',
          ),
          CurvedNavigationBarItem(
            child:  Text("Tue",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            // label: 'Tue',
          ),
          CurvedNavigationBarItem(
            child:  Text("Wed",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            // label: 'Wed',
          ),
          CurvedNavigationBarItem(
            child:  Text("Thu",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            // label: 'Thu',
          ),

        ],
        onTap: (index) {
          // Handle button tap
          ind=index;
          setState(() {

          });
        },
      ),

      body: _screens[ind],
    );
  }
}
