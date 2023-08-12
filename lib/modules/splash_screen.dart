import 'package:flutter/material.dart';
import 'package:iti_project/modules/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/splash.png"),
                  fit: BoxFit.cover),),),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 161.1259765625,
            left: 124.609375,
          ),
          child: Container(
            width: 126.15478515625,
            height: 62.967926025390625,
            child: Image.asset("assets/images/Logo.png"),
          ),)]),

    );


  }
}
