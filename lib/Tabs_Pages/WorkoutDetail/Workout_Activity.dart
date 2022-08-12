import 'package:fitnessapp/Tabs_Pages/WorkoutDetail/Detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Get_Ready.dart';

class Workout_Activity extends StatelessWidget {
  const Workout_Activity({Key? key}) : super(key: key);

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
                    SizedBox(width: 20,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Workout Activity",
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/Worrior.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Warrior 1",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "30 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/sideplank.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Side Plank",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "20 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/onelegdown.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "One Leg Down",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "20 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/trianglepose.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Triangle Pose",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "40 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/storkpose.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Stork Pose",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "20 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/wheelpose.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Wheel Pose",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "30 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/onelegheadpose.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "One Leg Head",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "40 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/halfmoonpose.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Half Moon Pose",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "30 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/camelpose.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Camel Pose",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "30 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(left:Radius.circular(25),),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/onelegup.jpg')
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "One Leg Up",
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "40 seconds",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20,top: 20),
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Get_Ready()),);
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
              "START",
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
