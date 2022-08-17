import 'package:fitnessapp/Tabs_Pages/Tab_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Advance.dart';
import 'Beginner.dart';
import 'intermediate.dart';

class Home_SeeAll extends StatefulWidget {
  const Home_SeeAll({Key? key}) : super(key: key);

  @override
  State<Home_SeeAll> createState() => _Home_SeeAllState();
}

class _Home_SeeAllState extends State<Home_SeeAll> {

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
                    "Workout Levels",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                      ),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width/3.7,),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).hintColor,
                        width: 1,
                      )),
                  child: Icon(
                    Icons.more_horiz,
                    size: 18,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
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
                                        : Theme.of(context).scaffoldBackgroundColor,
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
          ],
        ),
      ),
    );
  }
}
