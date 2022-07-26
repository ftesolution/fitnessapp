import 'dart:async';
import 'package:fitnessapp/intro_screens/onboarding_screen.dart';
import 'package:fitnessapp/welcome_screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2), ((){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => welcome_screen(),));
    }
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*1,
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 320,),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.centerRight,
              // stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Color(0xff8567ff),
                Color(0xff6c47ff),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.integration_instructions_rounded,size: 150,color: Colors.white,),
              SizedBox(height: 220,),
              SpinKitCircle(color: Colors.white,duration: Duration(seconds: 2,)),
            ],
          )
        ),
    );
  }
}
