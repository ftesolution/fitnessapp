import 'package:fitnessapp/intro_screens/slide_Screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class slide_screen1 extends StatelessWidget {
  const slide_screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/slide1.jpg",),fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20,left: 25,right: 25,),
            alignment: Alignment.center,
            child: Text(
                "Find the right workout for what you need",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ],
      ),
    );
  }
}
