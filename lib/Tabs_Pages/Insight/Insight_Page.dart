import 'package:fitnessapp/Tabs_Pages/Insight/seeAllPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../WorkoutDetail/Detail.dart';

class Insight_Page extends StatefulWidget {
  const Insight_Page({Key? key}) : super(key: key);

  @override
  State<Insight_Page> createState() => _Insight_PageState();
}

class _Insight_PageState extends State<Insight_Page> {

  DatePickerController _controller = DatePickerController();

  DateTime _selectedDate = DateTime.now();
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        // child:
                        child:  Image.asset("Assets/welcome/Gymicon.png")
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Insight",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                      child: Icon(
                        Icons.more_horiz,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.deepPurpleAccent,
                  selectedTextColor: Colors.white,
                  deactivatedColor: Colors.grey,
                  inactiveDates: [
                    DateTime.now().add(Duration(days: 1)),
                    DateTime.now().add(Duration(days: 2)),
                  ],
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedDate = date;
                    });
                  },
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 160,
                width: 160,
                child: CircularPercentIndicator(

                  fillColor: Colors.transparent,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  progressColor: Colors.deepPurpleAccent,
                  percent: 0.75,
                  lineWidth: 12,
                  radius: 70,
                  animation: true,
                  animationDuration: 1600,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "950",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Cal",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 160,
                    width: 115,
                    child: CircularPercentIndicator(

                      fillColor: Colors.transparent,
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      progressColor: Colors.yellow,
                      percent: 0.85,
                      lineWidth: 10,
                      radius: 50,
                      animation: true,
                      animationDuration: 1600,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "64",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "workout",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 140,
                    width: 115,
                    child: CircularPercentIndicator(

                      fillColor: Colors.transparent,
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      progressColor: Colors.redAccent,
                      percent: 0.45,
                      lineWidth: 10,
                      radius: 50,
                      animation: true,
                      animationDuration: 1600,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "minutes",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 160,
                    width: 115,
                    child: CircularPercentIndicator(

                      fillColor: Colors.transparent,
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      progressColor: Colors.blueAccent,
                      percent: 0.75,
                      lineWidth: 10,
                      radius: 50,
                      animation: true,
                      animationDuration: 1600,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "72",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "bpm",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Workout Activity",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>See_All(),),);
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "see All",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                              color: Colors.deepPurpleAccent,
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Workout_Detail(),));
                },
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "Assets/home/squatmovement.jpg",
                        )),
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 60,),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          // stops: [0.35,1.0],
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.white.withOpacity(0.0),
                          ]
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "Squat Movement Exercise",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "12 minutes",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lexendDeca(
                                    textStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                height: 14,
                                width: 3,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Intermediate",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lexendDeca(
                                    textStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                child: Icon(
                                  Icons.bookmark_border_rounded,
                                  size: 26,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
