import 'package:fitnessapp/Model/CustmGenderButton.dart';
import 'package:fitnessapp/Model/CustomButtons.dart';
import 'package:fitnessapp/Account_setup_screen/age.dart';
import 'package:fitnessapp/Model/CustomTitle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gender_screen extends StatefulWidget {
  const gender_screen({Key? key}) : super(key: key);

  @override
  State<gender_screen> createState() => _gender_screenState();
}

class _gender_screenState extends State<gender_screen> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 30,
          right: MediaQuery.of(context).size.width / 30,
        ),
        child: SingleChildScrollView(
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
                    title: "Tell Us About Yourself",
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 70,
              ),
              Container(
                alignment: Alignment.center,
                child: CustomSubTitle(
                  title:
                      "To give you a better experience and results we need to know your gender.",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              CustomRadio(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.height/5,
                value: "Male",
                groupValue: _groupValue,
                label: "A",
                onChanged: _valueChangedHandler(),
                icn: Icon(
                  Icons.male,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              // Container(
              //   height: 160,
              //   width: 160,
              //   decoration: BoxDecoration(
              //     color: Colors.grey,
              //     shape: BoxShape.circle,
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Icon(
              //         Icons.male,
              //         size: 50,
              //         color: Colors.white,
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              //         alignment: Alignment.center,
              //         child: Text(
              //           "Male",
              //           textAlign: TextAlign.center,
              //           style: GoogleFonts.lexendDeca(
              //             textStyle: TextStyle(
              //               color: Colors.white,
              //             ),
              //             fontSize: 20,
              //             fontWeight: FontWeight.w400,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              CustomRadio(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.height/5,
                value: "Female",
                groupValue: _groupValue,
                label: "B",
                onChanged: _valueChangedHandler(),
                icn: Icon(
                  Icons.male,
                  size: 50,
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              // CustomButton1(
              //   title: "Continue",
              //   onTap: () {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => age_Screen(),
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10,),
        child: CustomButton1(
          title: "Continue",
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => age_Screen(),
              ),
            );
          },
        ),
      ),

    );
  }
}
