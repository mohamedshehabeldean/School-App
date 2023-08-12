import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';
class events extends StatefulWidget {
  const events({Key? key}) : super(key: key);

  @override
  State<events> createState() => _eventsState();
}

class _eventsState extends State<events> {
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
          "Events ",
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
          SizedBox(height: 20,),
          Container(
            height: 648.363,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                _event(text1: 'Sleepover Night',text2:'06 jan 21,09:00am',
                    text3: 'A sleepover is agreat threat',text4: 'for kids '
                        'many school use',text5: 'this event as activity',
                    x:Icons.ac_unit),
                SizedBox(height: 10,),
                _event(text1: 'Fishing Tournament',text2:'12 jan 21,09:00am',
                    text3: 'Silver Sands Middle School',text4: 'in Port Orange, Florida, ',text5: 'offers many special events, ',
                    x:Icons.star),
                SizedBox(height: 10,),
                _event(text1: 'Rhyme Time: A Night of Poetry',text2:'24 jan '
                    '21,09:00am',
                    text3: 'April is also National Poetry',text4: 'Now there is a great theme'
                        ,text5: ' for a fun family night!',
                    x:Icons.icecream_sharp),


              ],
            ),
          )
        ],
      ),

    );
  }

  Widget _event({
  required String text1,
  required String text2,
  required String text3,
  required String text4,
  required String text5,
  required IconData x,
}) {
    return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 25.0),
                    child: Container(
                      width: 340,
                      height: 160,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                          border: Border.all(color: Color(0xff5278C1)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:8.0,
                                    left:8),
                                child: Text(text1,style:
  TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,
                                    top: 15),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    // border: Border.all(color: Color(0xff5278C1)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    x ,
                                    size: 70,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Center(
                                    child: Text(
                                      text2,
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,top:10),
                                    child: Text(
                                      text3,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff777777)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,top:2),
                                    child: Text(
                                      text4,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff777777)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,top:2),
                                    child: Text(
                                      text5,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff777777)),
                                    ),
                                  ),



                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )

                ],
              );
  }
}
