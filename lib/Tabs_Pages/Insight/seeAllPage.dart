import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../WorkoutDetail/Detail.dart';

class See_All extends StatelessWidget {
  const See_All({Key? key}) : super(key: key);

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
          SizedBox(height: 40,),
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
          SizedBox(height: 10,),
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
        ],
      ),
    ),
    );
  }
}
