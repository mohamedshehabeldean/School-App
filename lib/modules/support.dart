import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';

class Support extends StatelessWidget {
  const Support({super.key});

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
            "Support",
            style: TextStyle(fontSize: 18),
          ),
          titleSpacing: 0,
        ),
        backgroundColor: Color(0XFF2855AE).withBlue(400),
        body: Column(
          children: [
            Container(
                child: Image.asset("assets/images/star_pattern.png")),
            SizedBox(height: 53.9,),
            Container(
              height: 614.44,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Container(
                  width: 277,
                  height: 482.364501953125,
                  child: Column(children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Container(
                        width: 161.81503295898438,
                        height: 170.47755432128906,
                        child:
                        Image.asset("assets/images/p20_image1.png"),
                      ),
                    ),
                    SizedBox(height: 30,),

                    Text("Get Support",style: TextStyle(fontSize: 27,color: Colors.black,),),
                    SizedBox(height: 30,),
                    Text("For any support request regards your orders or deliveries please feel free to speak with us at below.",style: TextStyle(fontSize: 15,color: Colors.grey,),textAlign: TextAlign.center,)
                    ,SizedBox(height: 54,)
                    ,Text("Call us - +91 7838XXXXXX\nMail us - syalfreelance@gmail.com",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(.65),),textAlign: TextAlign.center,)

                  ],

                  ),

                ),
              ),
            ),


          ],
        ));
  }
}
