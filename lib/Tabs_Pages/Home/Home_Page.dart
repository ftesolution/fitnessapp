import 'package:fitnessapp/Tabs_Pages/Home/Advance.dart';
import 'package:fitnessapp/Tabs_Pages/Home/Beginner.dart';
import 'package:fitnessapp/Tabs_Pages/Home/Home_Bookmark.dart';
import 'package:fitnessapp/Tabs_Pages/Home/Home_Notification.dart';
import 'package:fitnessapp/Tabs_Pages/Home/Home_SeeAll.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'intermediate.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<String> catagory = [
    "Beginner",
    "Intermediate",
    "Advance",
  ];

  List<Widget> page = [
    Beginner_Class(),
    Intermediate_Class(),
    Advance_class(),
  ];
  int current = 0;

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Gofit",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.1,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Notification(),));
                      },
                      child: Container(
                        child: Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 30,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Bookmark(),));
                      },
                      child: Container(
                        child: Icon(
                          Icons.bookmark_border_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Morning, Christina",
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 30,
                  ),
                  Icon(
                    FontAwesomeIcons.hand,
                    color: Colors.yellow,
                    size: 30,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Featured Workout",
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
                    Container(
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
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width / 1.5,
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
                        padding: EdgeInsets.only(top: 170,),
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
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 5,),
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.bookmark_border_rounded,
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "Assets/home/body.jpg",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(top: 170,),
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
                                "Body Streching",
                                style: GoogleFonts.lexendDeca(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 5,),
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
                                      "8 minutes",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lexendDeca(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 20,
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.bookmark_border_rounded,
                                      size: 24,
                                      color: Colors.white,
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
              ), //Picture Row
              Container(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Workout Levels",
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_SeeAll(),),);
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
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: catagory.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(5),
                                    width:
                                        MediaQuery.of(context).size.width / 3.6,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: current == index
                                          ? Colors.deepPurpleAccent
                                          : Colors.white54,
                                      borderRadius: current == index
                                          ? BorderRadius.circular(20)
                                          : BorderRadius.circular(20),
                                      border: current == index
                                          ? Border.all(
                                              color: Colors.deepPurpleAccent,
                                              width: 2,
                                            )
                                          : Border.all(
                                              color: Colors.deepPurpleAccent,
                                              width: 2,
                                            ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        catagory[index],
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: current == index
                                              ? Colors.white
                                              : Colors.deepPurpleAccent,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Visibility(
                                //     visible: current == index,
                                //     child: Container(
                                //       width: 5,
                                //       height: 5,
                                //       decoration: const BoxDecoration(
                                //           color: Colors.deepPurpleAccent,
                                //           shape: BoxShape.circle),
                                //     ),),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              page[current],
              // current == 1?
              // Container(
              //   padding: EdgeInsets.only(
              //     bottom: 15,
              //   ),
              //   height: MediaQuery.of(context).size.height / 5.5,
              //   width: MediaQuery.of(context).size.width / 1,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         fit: BoxFit.cover,
              //         image: AssetImage(
              //           "Assets/home/squatmovement.jpg",
              //         )),
              //     borderRadius: BorderRadius.circular(
              //       20,
              //     ),
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Container(
              //         padding: EdgeInsets.only(
              //           left: 20,
              //           bottom: 5,
              //         ),
              //         child: Text(
              //           "Squat Movement Exercise",
              //           textAlign: TextAlign.center,
              //           style: GoogleFonts.lexendDeca(
              //             textStyle: TextStyle(
              //               color: Colors.white,
              //             ),
              //             fontSize: 20,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(
              //           left: 0,
              //         ),
              //         child: Row(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             Container(
              //               alignment: Alignment.centerLeft,
              //               child: Text(
              //                 "12 minutes",
              //                 textAlign: TextAlign.center,
              //                 style: GoogleFonts.lexendDeca(
              //                   textStyle: TextStyle(
              //                     color: Colors.white,
              //                   ),
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               height: 14,
              //               width: 3,
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //               ),
              //             ),
              //             Container(
              //               alignment: Alignment.centerRight,
              //               child: Text(
              //                 "Intermediate",
              //                 textAlign: TextAlign.center,
              //                 style: GoogleFonts.lexendDeca(
              //                   textStyle: TextStyle(
              //                     color: Colors.white,
              //                   ),
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               width: 60,
              //             ),
              //             Container(
              //               child: Icon(
              //                 Icons.bookmark_border_rounded,
              //                 size: 22,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ):
              // Container(
              //   padding: EdgeInsets.only(
              //     bottom: 15,
              //   ),
              //   height: MediaQuery.of(context).size.height / 5.5,
              //   width: MediaQuery.of(context).size.width / 1,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         fit: BoxFit.cover,
              //         image: AssetImage(
              //           "Assets/home/yogamovement.jpg",
              //         )),
              //     borderRadius: BorderRadius.circular(
              //       20,
              //     ),
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Container(
              //         padding: EdgeInsets.only(
              //           left: 20,
              //           bottom: 5,
              //         ),
              //         child: Text(
              //           "Squat Movement Exercise",
              //           textAlign: TextAlign.center,
              //           style: GoogleFonts.lexendDeca(
              //             textStyle: TextStyle(
              //               color: Colors.white,
              //             ),
              //             fontSize: 20,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(
              //           left: 0,
              //         ),
              //         child: Row(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             Container(
              //               alignment: Alignment.centerLeft,
              //               child: Text(
              //                 "12 minutes",
              //                 textAlign: TextAlign.center,
              //                 style: GoogleFonts.lexendDeca(
              //                   textStyle: TextStyle(
              //                     color: Colors.white,
              //                   ),
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               height: 14,
              //               width: 3,
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //               ),
              //             ),
              //             Container(
              //               alignment: Alignment.centerRight,
              //               child: Text(
              //                 "Intermediate",
              //                 textAlign: TextAlign.center,
              //                 style: GoogleFonts.lexendDeca(
              //                   textStyle: TextStyle(
              //                     color: Colors.white,
              //                   ),
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               width: 60,
              //             ),
              //             Container(
              //               child: Icon(
              //                 Icons.bookmark_border_rounded,
              //                 size: 22,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
