import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';

class DataSheet extends StatelessWidget {
  const DataSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xff2855AE).withBlue(400),

          ),
          elevation: 0,
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
            "Data Sheet",
            style: TextStyle(fontSize: 18),
          ),
          titleSpacing: 0,
        ),
        backgroundColor: Color(0XFF2855AE).withBlue(400),
        body: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                  child: Image.asset("assets/images/star_pattern.png")),
            ),
            SizedBox(height: 18.35),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: 375,
                height: 650,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 40),
                    child: Container(
                      width: 313,
                      height: 460,
                      child:ImageIcon(AssetImage("assets/images/Datesheet.png")),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 520),
                    child: Container(
                        width: double.infinity,
                        height: 120,



                        child:Image.asset("assets/images/DatasheetBottom.png")),
                  ),

                  Container(
                      width: 374.7879638671875,
                      height: 131.843994140625


                  ),
                ]),

              ),
            )
          ],
        ));
  }
}
