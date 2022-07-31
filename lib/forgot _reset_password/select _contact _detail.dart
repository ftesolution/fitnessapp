import 'package:fitnessapp/Model/CustomTitle.dart';
import 'package:fitnessapp/Model/custom_reset_detail.dart';
import 'package:fitnessapp/forgot%20_reset_password/create_New_Password.dart';
import 'package:fitnessapp/lets_in_screen/Sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Pin_page.dart';


class Select_Contact extends StatefulWidget {
  const Select_Contact({Key? key}) : super(key: key);

  @override
  State<Select_Contact> createState() => _Select_ContactState();
}

class _Select_ContactState extends State<Select_Contact> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          right: MediaQuery.of(context).size.width / 20,
          top: MediaQuery.of(context).size.height / 50,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sign_In(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Forgot Password",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
               Container(
                 height: MediaQuery.of(context).size.height/2.5,
                 width: MediaQuery.of(context).size.height/2.5,
                 child: SvgPicture.asset("images/img.svg"),
                 decoration: BoxDecoration(
                   color: Colors.white,
                 ),
               ),

              Text(
                "Select which contact detail should we use to reset your password",
                textAlign: TextAlign.start,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              CustomReset(
                height: MediaQuery.of(context).size.height/5.8,
                width: MediaQuery.of(context).size.width/1,
                value: "via SMS",
                subvalue: "+1 111******99",
                groupValue: _groupValue,
                label: "A",
                onChanged: _valueChangedHandler(),
                icn: Icon(
                  Icons.sms_rounded,
                  size: 25,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              CustomReset(
                height: MediaQuery.of(context).size.height/5.8,
                width: MediaQuery.of(context).size.width/1,
                value: "via Email",
                subvalue: "fahadkhan@gmail.com",
                groupValue: _groupValue,
                label: "A",
                onChanged: _valueChangedHandler(),
                icn: Icon(
                  Icons.email_rounded,
                  size: 25,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pin_Page()),);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(
                      35,
                    ),
                  ),
                  child: Text(
                    "Continue",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
