import 'package:fitnessapp/Tabs_Pages/WorkoutDetail/Detail.dart';
import 'package:fitnessapp/Tabs_Pages/WorkoutDetail/Side_Training.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Get_Ready extends StatelessWidget {
  const Get_Ready({Key? key}) : super(key: key);

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
                top: 25,
                bottom: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Workout_Detail(),));
                    },
                    child: Container(
                        padding: EdgeInsets.only(left: 0,),
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.arrow_back_rounded,color: Colors.black,size: 25,)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100,),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Get Ready!",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.deepPurpleAccent,
                  ),
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: CircularCountDownTimer(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 3,
                duration: 10,
                initialDuration: 0,
                ringColor: Colors.grey,
                fillColor: Colors.deepPurpleAccent,
                strokeWidth: 20,
                textStyle: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
                strokeCap: StrokeCap.round,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20,top: 20),
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Side_Training()),);
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
              "START OVER",
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
