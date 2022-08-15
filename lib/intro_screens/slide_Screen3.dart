import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class slide_screen3 extends StatelessWidget {
  const slide_screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "Assets/welcome/slide_screen3.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 50,
                left: MediaQuery.of(context).size.width / 20,
                right: MediaQuery.of(context).size.width / 20,
              ),
              alignment: Alignment.center,
              child: Text(
                "Let's do a workout and live healthy with us",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
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
