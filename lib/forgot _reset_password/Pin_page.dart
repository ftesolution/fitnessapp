import 'package:fitnessapp/forgot%20_reset_password/select%20_contact%20_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';


class Pin_Page extends StatefulWidget {
  const Pin_Page({Key? key}) : super(key: key);

  @override
  State<Pin_Page> createState() => _Pin_PageState();
}

class _Pin_PageState extends State<Pin_Page> {

  final defaultPinTheme = PinTheme(
    width: 80,
    height: 60,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          right: MediaQuery.of(context).size.width / 20,
          top: MediaQuery.of(context).size.height / 50,
        ),
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
                          builder: (context) => Select_Contact(),
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Text(
              "Code has been send to +1 111 ******99",
              textAlign: TextAlign.center,
              style: GoogleFonts.lexendDeca(
                textStyle: TextStyle(
                  color: Colors.black,
                ),
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
            Pinput(
              defaultPinTheme: defaultPinTheme,
            )
          ],
        ),
      ),
    );
  }
}
