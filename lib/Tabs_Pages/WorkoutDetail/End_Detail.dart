import 'package:fitnessapp/Tabs_Pages/Home/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class End_Detail extends StatelessWidget {
  const End_Detail({Key? key}) : super(key: key);

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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("Assets/trofy.png"),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Congretulation!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.deepPurpleAccent,
                    ),
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "You have completed the workout!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "10",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                            ),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Workouts",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 2,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "340",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                            ),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Cal",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 2,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "10:00",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                            ),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Minutes",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
        const EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
        child:  Container(
          height: 130,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_Page(),),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(
                      35,
                    ),
                  ),
                  child: Text(
                    "Next to Another Workout",
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
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_Page(),),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(
                      35,
                    ),
                  ),
                  child: Text(
                    "Home",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
