import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';

class School_gallery extends StatefulWidget {
  const School_gallery({Key? key}) : super(key: key);

  @override
  State<School_gallery> createState() => _School_galleryState();
}

class _School_galleryState extends State<School_gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2855AE).withBlue(400),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff2855AE).withBlue(400),
        ),
        elevation: 0,
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
          "School Gallery",
          style: TextStyle(fontSize: 18),
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: 20,
              child: Image.asset("assets/images/star_pattern.png"),
            ),
            Container(
                height: 1850,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => _row(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 0.0,
                  ),
                  itemCount: 8,
                ))
          ],
        ),
      ),
    );
  }

  Widget _row() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image: AssetImage("assets/images/sabry.jpg"),
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0, //right and left
                    vertical: 10.0, //Top and bottom
                  ),
                  color: Colors.black.withOpacity(0.7),
                  width: double.infinity,
                  child: Text(
                    'Mohamed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 1),
          child: Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image: AssetImage("assets/images/sabry.jpg"),
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0, //right and left
                    vertical: 10.0, //Top and bottom
                  ),
                  color: Colors.black.withOpacity(0.7),
                  width: double.infinity,
                  child: Text(
                    'Mohamed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
