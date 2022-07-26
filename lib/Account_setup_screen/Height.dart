import 'package:fitnessapp/Account_setup_screen/Goal_Screen.dart';
import 'package:fitnessapp/Account_setup_screen/weight.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../Model/CustomButtons.dart';
import '../Model/CustomTitle.dart';

class Height_Screen extends StatefulWidget {
  const Height_Screen({Key? key}) : super(key: key);

  @override
  State<Height_Screen> createState() => _Height_ScreenState();
}

class _Height_ScreenState extends State<Height_Screen> {
  int _current_valueH = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                  alignment: Alignment.center,
                  child: CustomTitle(
                    title: "What is Your Height?",
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                alignment: Alignment.center,
                child: CustomSubTitle(
                  title:
                      "Height in cm. This will Help us to personalize an exercise program plan that suits you.",
                ),
              ),
              SizedBox(
                height: 80,
              ),
              NumberPicker(
                haptics: true,
                itemHeight: 70,
                itemWidth: 70,
                itemCount: 5,
                // step: 3,
                infiniteLoop: false,
                axis: Axis.vertical,
                textStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                ),
                selectedTextStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold),
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    width: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  bottom: BorderSide(
                    width: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                )),
                minValue: 0,
                maxValue: 300,
                value: _current_valueH,
                onChanged: (value) => setState(() => _current_valueH = value),
              ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton2(
                      gradient: LinearGradient(colors: [
                        Color(0xfff0ecff),
                        Color(0xfff0ecff),
                      ]),
                      title: "Back",
                      txtcolor: Color(0xff6c47ff),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => weight_screen(),
                            ));
                      }),
                  SizedBox(
                    width: 25,
                  ),
                  CustomButton2(
                      gradient: LinearGradient(colors: [
                        Color(0xff8567ff),
                        Color(0xff6c47ff),
                      ]),
                      title: "Continue",
                      txtcolor: Colors.white,
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Goal_Screen(),
                            ));
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
