import 'package:fitnessapp/Account_setup_screen/gender%20screen.dart';
import 'package:fitnessapp/Account_setup_screen/weight.dart';
import 'package:fitnessapp/Model/CustomButtons.dart';
import 'package:fitnessapp/Model/CustomTitle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class age_Screen extends StatefulWidget {
  const age_Screen({Key? key}) : super(key: key);

  @override
  State<age_Screen> createState() => _age_ScreenState();
}

class _age_ScreenState extends State<age_Screen> {
  int _current_valueA = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
                alignment: Alignment.center,
                child: CustomTitle(
                  title: "How Old Are You?",
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 45,
                right: MediaQuery.of(context).size.width / 45,
              ),
              alignment: Alignment.center,
              child: CustomSubTitle(
                title:
                    "Age in years. This will Help us to personalize an exercise program plan that suits you.",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8.8,
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
                  fontSize: 45,
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
              maxValue: 100,
              value: _current_valueA,
              onChanged: (value) => setState(() => _current_valueA = value),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     CustomButton2(
            //         gradient: LinearGradient(colors: [
            //           Color(0xfff0ecff),
            //           Color(0xfff0ecff),
            //         ]),
            //         title: "Back",
            //         txtcolor: Color(0xff6c47ff),
            //         onTap: () {
            //           Navigator.pushReplacement(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => gender_screen(),
            //               ));
            //         }),
            //     CustomButton2(
            //       gradient: LinearGradient(colors: [
            //         Color(0xff8567ff),
            //         Color(0xff6c47ff),
            //       ]),
            //       title: "Continue",
            //       txtcolor: Colors.white,
            //       onTap: () {
            //         Navigator.pushReplacement(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => weight_screen(),
            //           ),
            //         );
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        builder: (context) => gender_screen(),
                      ));
                }),
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
                    builder: (context) => weight_screen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
