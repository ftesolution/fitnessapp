import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Profile_Page.dart';

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool Face_value = false;
  bool Remember_value = false;
  bool Touch_value = false;
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
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(
                top: 25,
                bottom: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_Page(),));
                    },
                    child: Container(
                        padding: EdgeInsets.only(left: 0,),
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.arrow_back_rounded,color: Colors.black,size: 25,)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Security",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Face ID",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: FlutterSwitch(
                    width: 40,
                    height: 22,
                    toggleSize: 15,
                    activeColor: Colors.deepPurpleAccent,
                    value: Face_value,
                    onToggle: (bool index) {
                      setState(() {
                        Face_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Remember me",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: FlutterSwitch(
                    width: 40,
                    height: 22,
                    toggleSize: 15,
                    activeColor: Colors.deepPurpleAccent,
                    value: Remember_value,
                    onToggle: (bool index) {
                      setState(() {
                        Remember_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Touch ID",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: FlutterSwitch(
                    width: 40,
                    height: 22,
                    toggleSize: 15,
                    activeColor: Colors.deepPurpleAccent,
                    value: Touch_value,
                    onToggle: (bool index) {
                      setState(() {
                        Touch_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Google Authenticator",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.arrow_forward_ios,color: Colors.deepPurpleAccent,
                    size: 20,
                  )
                )
              ],
            ),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(
                    35,
                  ),
                ),
                child: Text(
                  "Change Password",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.deepPurpleAccent,
                    ),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}