import 'package:fitnessapp/Account_setup_screen/Height.dart';
import 'package:fitnessapp/Account_setup_screen/age.dart';
import 'package:fitnessapp/Model/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

import '../Model/CustomButtons.dart';
import '../Model/CustomTitle.dart';

class weight_screen extends StatefulWidget {
  const weight_screen({Key? key}) : super(key: key);

  @override
  State<weight_screen> createState() => _weight_screenState();
}

class _weight_screenState extends State<weight_screen> {
  int _current_value = 18;

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
                    title: "What is Your Weight?",
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
                      "Weight in kg. Don't worry, you can always change it later.",
                ),
              ),
              SizedBox(
                height: 230,
              ),
              NumberPicker(
                axis: Axis.horizontal,
                haptics: true,
                itemHeight: 50,
                itemWidth: 80,
                itemCount: 5,
                // step: 3,
                infiniteLoop: false,
                textStyle: TextStyle(
                  fontSize: 30,
                  color: allColors.primaryColor.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                ),
                selectedTextStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold),
                minValue: 0,
                maxValue: 200,
                value: _current_value,
                onChanged: (value) => setState(() => _current_value = value),
              ),
              Icon(
                Icons.arrow_drop_up_rounded,
                size: 100,
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(height: 180,),
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
                              builder: (context) => age_Screen(),
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
                              builder: (context) => Height_Screen(),
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
