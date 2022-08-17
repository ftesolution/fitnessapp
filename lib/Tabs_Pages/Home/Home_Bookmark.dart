import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Model/CustomButtons.dart';
import '../Tab_Page.dart';
import '../WorkoutDetail/Detail.dart';

class Home_Bookmark extends StatelessWidget {
  const Home_Bookmark({Key? key}) : super(key: key);

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
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Tab_Page(),));
                  },
                  child: Container(
                      padding: EdgeInsets.only(left: 0,),
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.arrow_back_rounded,size: 25,)),
                ),
                SizedBox(width: MediaQuery.of(context).size.width/20,),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My BookMark",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                      ),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width/5,),
                Container(
                  child: Icon(
                    Icons.list_alt_rounded,size: 25,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width/20,),
                Container(
                  child: Icon(
                    Icons.grid_view_rounded,color: Colors.deepPurpleAccent,size: 25,
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width /2.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "Assets/home/fullbodystrech.jpg",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 100,),
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
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            bottom: 5,
                          ),
                          child: Text(
                            "Full Body Streching",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "10 minutes",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lexendDeca(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                                width: 2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Intermediate",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lexendDeca(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              GestureDetector(
                                onTap: (){
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: (context),
                                    builder: (context)=>Container(

                                      height: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.drag_handle_rounded,color: Colors.grey,),
                                            Container(
                                              padding: EdgeInsets.only(top: 10,bottom: 20,),
                                              child: Text(
                                                "Remove From Bookmark?",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.lexendDeca(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 2,
                                              width: MediaQuery.of(context).size.width / 1.2,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.2),
                                              ),
                                            ),
                                            SizedBox(height: 15,),
                                            Padding(
                                              padding: EdgeInsets.only(left: 20,right: 20),
                                              child: GestureDetector(
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
                                            ),
                                            SizedBox(height: 20,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                CustomButton2(
                                                  gradient: LinearGradient(colors: [
                                                    Color(0xfff0ecff),
                                                    Color(0xfff0ecff),
                                                  ]),
                                                  title: "Cancel",
                                                  txtcolor: Color(0xff6c47ff),
                                                  onTap: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => Home_Bookmark(),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                CustomButton2(
                                                    gradient: LinearGradient(colors: [
                                                      Color(0xff8567ff),
                                                      Color(0xff6c47ff),
                                                    ]),
                                                    title: "Yes, Remove",
                                                    txtcolor: Colors.white,
                                                    onTap: () {
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) => Home_Bookmark(),
                                                          ));
                                                    }),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Icon(
                                    Icons.bookmark,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width /2.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "Assets/home/fullbodystrech.jpg",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 100,),
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
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            bottom: 5,
                          ),
                          child: Text(
                            "Full Body Streching",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "10 minutes",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lexendDeca(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                                width: 2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Intermediate",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lexendDeca(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              GestureDetector(
                                onTap: (){
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: (context),
                                    builder: (context)=>Container(

                                      height: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.drag_handle_rounded,color: Colors.grey,),
                                            Container(
                                              padding: EdgeInsets.only(top: 10,bottom: 20,),
                                              child: Text(
                                                "Remove From Bookmark?",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.lexendDeca(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 2,
                                              width: MediaQuery.of(context).size.width / 1.2,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.2),
                                              ),
                                            ),
                                            SizedBox(height: 15,),
                                            Padding(
                                              padding: EdgeInsets.only(left: 20,right: 20),
                                              child: GestureDetector(
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
                                            ),
                                            SizedBox(height: 20,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                CustomButton2(
                                                  gradient: LinearGradient(colors: [
                                                    Color(0xfff0ecff),
                                                    Color(0xfff0ecff),
                                                  ]),
                                                  title: "Cancel",
                                                  txtcolor: Color(0xff6c47ff),
                                                  onTap: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => Home_Bookmark(),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                CustomButton2(
                                                    gradient: LinearGradient(colors: [
                                                      Color(0xff8567ff),
                                                      Color(0xff6c47ff),
                                                    ]),
                                                    title: "Yes, Remove",
                                                    txtcolor: Colors.white,
                                                    onTap: () {
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) => Home_Bookmark(),
                                                          ));
                                                    }),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Icon(
                                    Icons.bookmark,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
