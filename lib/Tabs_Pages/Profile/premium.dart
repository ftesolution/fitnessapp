import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Model/Custom_Premium.dart';
import 'Profile_Page.dart';

class Premium_Pakages extends StatefulWidget {
  const Premium_Pakages({Key? key}) : super(key: key);

  @override
  State<Premium_Pakages> createState() => _Premium_PakagesState();
}

class _Premium_PakagesState extends State<Premium_Pakages> {
  String? _premiumValue;

  String? _groupValue = "A";

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("Assets/premium.jpg"))),
        child: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 20,
            right: MediaQuery.of(context).size.width / 20,
            top: MediaQuery.of(context).size.height / 50,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Theme.of(context).scaffoldBackgroundColor,
                Theme.of(context).scaffoldBackgroundColor.withOpacity(0.0),
              ])),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 220,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Be Premium",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.deepPurpleAccent,
                      ),
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Get Unlimited Access",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.deepPurpleAccent,
                      ),
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enjoy workout accoss without ads and restrictions",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                      ),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomPremium(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.1,
                  value: "1 Month",
                  subValue: "pay once, cancel any time",
                  groupValue: _groupValue,
                  label: "A",
                  tailValue: "16.99",
                  onChanged: _valueChangedHandler(),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomPremium(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.1,
                  value: "6 Months",
                  tailValue: "66.99",
                  subValue: "pay once, cancel any time",
                  groupValue: _groupValue,
                  label: "B",
                  onChanged: _valueChangedHandler(),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomPremium(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.1,
                  value: "12 Months",
                  tailValue: "116.99",
                  subValue: "pay once, cancel any time",
                  groupValue: _groupValue,
                  label: "C",
                  onChanged: _valueChangedHandler(),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profile_Page(),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(
                35,
              ),
            ),
            child: Text(
              "Subscribe",
              textAlign: TextAlign.start,
              style: GoogleFonts.lexendDeca(
                textStyle: TextStyle(
                  color: Colors.white,
                ),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
