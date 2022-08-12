import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Profile_Page.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool Notification_value = false;
  bool Sound_value = false;
  bool Vibrate_value = false;
  bool Update_value = false;
  bool Services_value = false;
  bool Tips_value = false;
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
                      "Notifications",
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "General Notification",
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
                    value: Notification_value,
                    onToggle: (bool index) {
                      setState(() {
                        Notification_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Sound",
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
                    value: Sound_value,
                    onToggle: (bool index) {
                      setState(() {
                        Sound_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Vibrate",
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
                    value: Vibrate_value,
                    onToggle: (bool index) {
                      setState(() {
                        Vibrate_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "App Updates",
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
                    value: Update_value,
                    onToggle: (bool index) {
                      setState(() {
                        Update_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "New Services Available",
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
                    value: Services_value,
                    onToggle: (bool index) {
                      setState(() {
                        Services_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "New Tips Available",
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
                    value: Tips_value,
                    onToggle: (bool index) {
                      setState(() {
                        Tips_value = index;
                      });
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}