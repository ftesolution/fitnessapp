import 'package:fitnessapp/forgot%20_reset_password/create_New_Password.dart';
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
    width: 70,
    height: 55,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.1),
      border: Border.all(color: Colors.white,),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 70,
    height: 55,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.deepPurpleAccent.withOpacity(0.1),
      border: Border.all(color: Colors.deepPurpleAccent,),
      borderRadius: BorderRadius.circular(10),
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
                height: 280,
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
              SizedBox(
                height: 30,
              ),
              Pinput(
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10,left: 30,right: 30,bottom: 10,),
        child: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => creat_new_password()),);
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
              "Verify",
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
      ),
    );
  }
}
