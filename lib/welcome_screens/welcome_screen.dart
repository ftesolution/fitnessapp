import 'dart:async';

import 'package:fitnessapp/intro_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      (() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => onboarding_screen(),
            ));
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                  opacity: 0.7,
                  child: Image.asset(
                    "Assets/welcome/welcome.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 1.7,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 15,
                        ),
                        Text("Welcome to",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 15,
                        ),
                        Icon(
                          FontAwesomeIcons.hand,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 60,
                        left: MediaQuery.of(context).size.width / 15,
                        right: MediaQuery.of(context).size.width /15,
                      ),
                      child: Text(
                        "Gofit",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                          fontSize: 90,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 60,
                        left: MediaQuery.of(context).size.width / 15,
                        right: MediaQuery.of(context).size.width /15,
                      ),
                      child: Text(
                        "The best fitness app in this century to accompany your sports.",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
