import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  String? title;
   CustomTitle({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title!,
        textAlign: TextAlign.center,
        style: GoogleFonts.lexendDeca(
          textStyle: TextStyle(
            color: Colors.black,
          ),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
class CustomSubTitle extends StatelessWidget {
  String? title;
  CustomSubTitle({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title!,
        textAlign: TextAlign.center,
        style: GoogleFonts.lexendDeca(
          textStyle: TextStyle(
            color: Colors.black,
          ),
          fontSize: 19,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}


