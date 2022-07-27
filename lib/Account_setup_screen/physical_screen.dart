import 'package:fitnessapp/Account_setup_screen/Goal_Screen.dart';
import 'package:fitnessapp/Account_setup_screen/Profile.dart';
import 'package:fitnessapp/Model/CustomPhysicalButton.dart';
import 'package:flutter/material.dart';

import '../Model/CustomButtons.dart';
import '../Model/CustomTitle.dart';

class Physical_Screen extends StatefulWidget {
  const Physical_Screen({Key? key}) : super(key: key);

  @override
  State<Physical_Screen> createState() => _Physical_ScreenState();
}

class _Physical_ScreenState extends State<Physical_Screen> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            ),
            Container(
                alignment: Alignment.center,
                child: CustomTitle(
                  title: "Physical Activity Level?",
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height/60,
            ),
            Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 45,
                right: MediaQuery.of(context).size.width / 45,
              ),
              alignment: Alignment.center,
              child: CustomSubTitle(
                  title:
                      "Choose your regular activity level. This will help us to personalize plans for you."),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/5.55,
            ),
            CustomPhysical(
              value: "Beginner",
              groupValue: _groupValue,
              label: "A",
              onChanged: _valueChangedHandler(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            CustomPhysical(
              value: "Intermediate",
              groupValue: _groupValue,
              label: "B",
              onChanged: _valueChangedHandler(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            CustomPhysical(
              value: "Advance",
              groupValue: _groupValue,
              label: "C",
              onChanged: _valueChangedHandler(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/5.55,
            ),
            Row(
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
                            builder: (context) => Goal_Screen(),
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
                            builder: (context) => Profile_screen(),
                          ));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
