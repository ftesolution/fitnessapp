import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class slide_screen2 extends StatelessWidget {
  const slide_screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.57,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/slide2.jpg",),fit: BoxFit.cover),
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height/50,
                left: MediaQuery.of(context).size.width/20,
                right: MediaQuery.of(context).size.width/20,
              ),
              alignment: Alignment.center,
              child: Text("Make suitable workouts and great results",textAlign: TextAlign.center,style: GoogleFonts.lexendDeca(textStyle: TextStyle(color: Colors.black,),fontSize: 40,fontWeight: FontWeight.w500,),)),
        ],
      ),
    );
  }
}
