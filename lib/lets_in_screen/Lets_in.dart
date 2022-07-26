import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Account_setup_screen/age.dart';
import '../Model/CustomButtons.dart';

class Lets_In extends StatefulWidget {
  const Lets_In({Key? key}) : super(key: key);

  @override
  State<Lets_In> createState() => _Lets_InState();
}

class _Lets_InState extends State<Lets_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          right: MediaQuery.of(context).size.width / 20,
          top: MediaQuery.of(context).size.height / 40,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Let's you in",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    border: Border.all(
                      color: Colors.black12,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/Facebook.png"))),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 60,
                    ),
                    Text(
                      "Continue with Facebook",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    border: Border.all(
                      color: Colors.black12,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/Google.png"))),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 60,
                    ),
                    Text(
                      "Continue with Google",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    border: Border.all(
                      color: Colors.black12,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/Apple.png"))),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 60,
                    ),
                    Text(
                      "Continue with Apple",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                    ),
                    Text(
                      "or",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(
                      35,
                    ),
                   ),
                child: Text(
                  "Sign in with Password",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                        ),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 60,
                    ),
                    Text(
                      "Sign up",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.deepPurpleAccent,
                        ),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
