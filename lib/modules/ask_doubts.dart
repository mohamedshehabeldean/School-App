import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';

class AskDoubts extends StatefulWidget {
  const AskDoubts({super.key});

  @override
  State<AskDoubts> createState() => _AskDoubtsState();
}

class _AskDoubtsState extends State<AskDoubts> {
  bool x=false;
  List<String> teachers = ['Esraa', 'sabry', 'Ahmed ', 'hadi', 'Dalia'];
  String selectedTeacher = 'sabry';
  List<String> subjects = ['French', 'Math', 'Arabic', 'English', 'Italian'];
  String selectedsubject = 'Math';

  // Option 2

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
            "Ask Doubts",
            style: TextStyle(fontSize: 18),
          ),
          titleSpacing: 0,
        ),
        backgroundColor: Color(0XFF2855AE).withBlue(400),
        body: SingleChildScrollView(
            child: Column(children: [

              Container(

                  child: Image.asset("assets/images/star_pattern.png")),
              Padding(
                padding: const EdgeInsets.only(top:18.2),
                child: Container(
                  width: 400,
                  height: 650,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                        child: Form(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        labelText: "Select Teacher",
                                        labelStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: UnderlineInputBorder(),
                                      ),
                                      value: selectedTeacher,
                                      items: teachers
                                          .map(
                                            (item) => DropdownMenuItem(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      )
                                          .toList(),
                                      onChanged: (item) => setState(
                                            () => selectedTeacher = item as String,
                                      )),
                                  DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        labelText: "Select Subject",
                                        labelStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: UnderlineInputBorder(),
                                      ),
                                      value: selectedsubject,
                                      items: subjects
                                          .map(
                                            (item) => DropdownMenuItem(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      )
                                          .toList(),
                                      onChanged: (item) => setState(
                                            () => selectedsubject = item as String,
                                      )),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      labelText: "Title",
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                      border: UnderlineInputBorder(),
                                    ),
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    //controller: _passContrroller,
                                    decoration: InputDecoration(
                                      labelText: "Doubt Description",
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                      border: UnderlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        width: 315,
                                        height: 54,
                                        child: Center(
                                            child: InkWell(
                                              onTap: (){
                                                setState(() {
                                                  x=!x;
                                                });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 120.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      x?"sent":"send",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                    x?Icon(Icons.check_circle):Container(width: 1,)
                                                  ],
                                                ),
                                              ),
                                            )),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: x?Colors.green:Color(0XFF2855AE).withBlue(400),
                                        )),
                                  ),

                                ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                            width: double.infinity,
                            height: 120,



                            child:Image.asset("assets/images/DatasheetBottom.png")),
                      ),
                    ]),
                  ),
                ),
              )
            ])));
  }
}
