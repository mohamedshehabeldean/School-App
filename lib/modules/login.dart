import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/components/components.dart';
import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordContrroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xff2855AE).withBlue(400),

          ),
          elevation: 0,
          backgroundColor: Color(0xff2855AE).withBlue(400),

        ),

        backgroundColor: Color(0XFF2855AE).withBlue(400),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 56,
                ),
                child: Container(
                  width: 294.5924987792969,
                  height: 180,
                  child: Image.asset("assets/images/login.png"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Hi Student",
                    style: TextStyle(fontSize: 31, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(
                        fontSize: 17, color: Color(0xFFFFFFFF).withOpacity(.6)),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  width: 375,
                  height: 450,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Form(
                      key: formkey,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            textFormField(
                              controller: emailController,
                              label: "Email address",
                              type: TextInputType.emailAddress,
                              validate: (value) {
                                if (value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!)) {
                                  return 'Enter a valid Email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            textFormField(
                              controller: passwordContrroller,
                              label: "Password",
                              type: TextInputType.visiblePassword,
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return 'password must not be empty';
                                }
                                if (value!.length < 8) {
                                  return 'password is shorter than 8';
                                }
                                return null;
                              },
                              isobsecure: isPassword,
                              suffix: isPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              sffpressed: () {
                                setState(() {
                                  isPassword = !isPassword;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            defaultButton(
                              text: 'SIGN IN',
                              function: () {
                                if (formkey.currentState!.validate()) {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()//arrow method
                                      )
                                  );
                                }
                              },
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                                SizedBox(
                                  width: 15,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
