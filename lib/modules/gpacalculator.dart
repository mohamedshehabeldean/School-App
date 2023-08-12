import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/cubit/gpacalculate_cubit.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';


class gpaCalculator extends StatefulWidget {
  const gpaCalculator({Key? key}) : super(key: key);

  @override
  State<gpaCalculator> createState() => _gpaCalculatorState();
}

class _gpaCalculatorState extends State<gpaCalculator> {
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
          onTap: (){
            Navigator.pop(context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen()//arrow method
                )
            );
          },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Text(
          "GPA Calculator",
          style: TextStyle(fontSize: 18),
        ),
        titleSpacing: 0,
      ),
      body: BlocBuilder<GpacalculateCubit, GpacalculateState>(
        builder: (context, state) {
          final cubit = context.read<GpacalculateCubit>();
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                  // height: 20,
                  child: Image.asset("assets/images/star_pattern.png"),
                ),
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        sizbox(),
                        Row(
                          children: [
                            Text(
                              "subject 1",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpadecr();
                              },
                              heroTag: ('gpa-'),
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpaincr();
                              },
                              heroTag: ('gpa+'),
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('${cubit.gpa.toStringAsFixed(1)}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        sizbox(),
                        Row(
                          children: [
                            Text(
                              "subject 2",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa2decr();
                              },
                              heroTag: ('gpa-'),
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa2inc();
                              },
                              heroTag: ('gpa+'),
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('${cubit.gpa2.toStringAsFixed(1)}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        sizbox(),
                        Row(
                          children: [
                            Text(
                              "subject 3",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa3dec();
                              },
                              heroTag: ('gpa-'),
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa3incr();
                              },
                              heroTag: ('gpa+'),
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('${cubit.gpa3.toStringAsFixed(1)}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        sizbox(),
                        Row(
                          children: [
                            Text(
                              "subject 4",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa4decr();
                              },
                              heroTag: ('gpa-'),
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa4incr();
                              },
                              heroTag: ('gpa+'),
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('${cubit.gpa4.toStringAsFixed(1)}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        sizbox(),
                        Row(
                          children: [
                            Text(
                              "subject 5",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa5decr();
                              },
                              heroTag: ('gpa-'),
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa5incr();
                              },
                              heroTag: ('gpa+'),
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('${cubit.gpa5.toStringAsFixed(1)}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        sizbox(),
                        Row(
                          children: [
                            Text(
                              "subject 6",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa6decr();
                              },
                              heroTag: ('gpa-'),
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa6incr();
                              },
                              heroTag: ('gpa+'),
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('${cubit.gpa6.toStringAsFixed(1)}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        sizbox(),
                        Row(
                          children: [
                            Text(
                              "subject 7",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa7_decr();
                              },
                              heroTag: ('gpa-'),
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa7_incr();
                              },
                              heroTag: ('gpa+'),
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('${cubit.gpa7.toStringAsFixed(1)}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        sizbox(),
                        Row(
                          children: [
                            Text(
                              "subject 8",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa8_decr();
                              },
                              heroTag: ('gpa-'),
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                cubit.gpa8_incr();
                              },
                              heroTag: ('gpa+'),
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('${cubit.gpa8.toStringAsFixed(1)}',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900)),
                          ],
                        ),
                        sizbox(),
                        Row(
                          children: [
                            Container(
                              width: 310,
                              height: 60.0,
                              decoration: BoxDecoration(
                                  color: Color(0xff6789CA),
                                  borderRadius: BorderRadius.circular(10)),
                              child: InkWell(
                                onTap: () {
                                  cubit.totalgba = (cubit.gpa * 3 +
                                          cubit.gpa2 * 3 +
                                          cubit.gpa3 * 3 +
                                          cubit.gpa4 * 3 +
                                          cubit.gpa5 * 3 +
                                          cubit.gpa6 * 3 +
                                          cubit.gpa7 * 3 +
                                          cubit.gpa8 * 3) /
                                      24;

                                  cubit.totalgpaa();
                                },
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 90, top: 10),
                                    child: Text(
                                      "Calculate",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),
                                    ),
                                  ),

                                  // print(totalgpa.toStringAsFixed(2));
                                  // print(gpa8);
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0),
                      child: Row(
                        children: [
                          Text(
                            "Result :",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${cubit.totalgba.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(height: 30,)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox sizbox() => SizedBox(
        height: 15,
      );
}
