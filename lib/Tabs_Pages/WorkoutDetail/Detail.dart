// import 'dart:html';

import 'package:fitnessapp/Tabs_Pages/Tab_Page.dart';
import 'package:fitnessapp/Tabs_Pages/WorkoutDetail/Workout_Activity.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Get_Ready.dart';
import '../Home/Home_Page.dart';

class Workout_Detail extends StatefulWidget {
  const Workout_Detail({Key? key}) : super(key: key);

  @override
  State<Workout_Detail> createState() => _Workout_DetailState();
}

class _Workout_DetailState extends State<Workout_Detail> {


  int activeindex =0;

  final urlimages = [
    'Assets/yoga body streching/Worrior.jpg',
    'Assets/yoga body streching/sideplank.jpg',
    'Assets/yoga body streching/onelegdown.jpg',
    'Assets/yoga body streching/trianglepose.jpg',
    'Assets/yoga body streching/storkpose.jpg',
  ];

  List<String> catagory = [
    "Beginner",
    "10 minutes",
    "10 workouts",
  ];

  int current = 0;

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Column(
                    children: [
                      Container(
                        child: CarouselSlider.builder(
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            onPageChanged: (index, reason)=>
                            setState((){
                              activeindex =index;
                            }),
                            height: 280,
                            aspectRatio: 16/9,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            // autoPlay: true,
                            // autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            // onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                          ),
                          itemCount: urlimages.length,
                          itemBuilder: (context, index, realIndex){
                            final urlimage = urlimages[index];
                            return buildImage(urlimage, index);
                          },

                          // items: [
                          //   // Container(
                          //   //   width: MediaQuery.of(context).size.width,
                          //   //   decoration: BoxDecoration(
                          //   //       image: DecorationImage(
                          //   //           fit: BoxFit.cover,
                          //   //           image: AssetImage('Assets/yoga body streching/Worrior.jpg')
                          //   //       )
                          //   //   ),
                          //   // ),
                          //   // Container(
                          //   //   width: MediaQuery.of(context).size.width,
                          //   //   decoration: BoxDecoration(
                          //   //       image: DecorationImage(
                          //   //           fit: BoxFit.cover,
                          //   //           image: AssetImage('Assets/yoga body streching/sideplank.jpg')
                          //   //       )
                          //   //   ),
                          //   // ),
                          //   // Container(
                          //   //   width: MediaQuery.of(context).size.width,
                          //   //   decoration: BoxDecoration(
                          //   //       image: DecorationImage(
                          //   //           fit: BoxFit.cover,
                          //   //           image: AssetImage('Assets/yoga body streching/onelegdown.jpg')
                          //   //       )
                          //   //   ),
                          //   // ),
                          //   // Container(
                          //   //   width: MediaQuery.of(context).size.width,
                          //   //   decoration: BoxDecoration(
                          //   //       image: DecorationImage(
                          //   //           fit: BoxFit.cover,
                          //   //           image: AssetImage('Assets/yoga body streching/trianglepose.jpg')
                          //   //       )
                          //   //   ),
                          //   // ),
                          //   // Container(
                          //   //   width: MediaQuery.of(context).size.width,
                          //   //   decoration: BoxDecoration(
                          //   //     image: DecorationImage(
                          //   //       fit: BoxFit.cover,
                          //   //       image: AssetImage('Assets/yoga body streching/storkpose.jpg'),
                          //   //     ),
                          //   //   ),
                          //   // ),
                          //   // Image.asset('Assets/yoga body streching/Worrior.jpg'),
                          //   // Image.asset('Assets/yoga body streching/sideplank.jpg'),
                          //   // Image.asset('Assets/yoga body streching/onelegdown.jpg'),
                          //   // Image.asset('Assets/yoga body streching/trianglepose.jpg'),
                          //   // Image.asset('Assets/yoga body streching/storkpose.jpg'),
                          // ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Tab_Page(),));
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 20),
                                alignment: Alignment.centerLeft,
                                  child: Icon(Icons.arrow_back_rounded,color: Colors.white,size: 25,)),
                            ),
                            SizedBox(width: 230,),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.centerLeft,
                                child: Icon(Icons.bookmark_outline_rounded,color: Colors.white,size: 25,)),
                            SizedBox(width: 20,),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  )),
                              child: Icon(
                                Icons.more_horiz,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 180,),
                        Container(
                          padding: EdgeInsets.only(left: 150,),
                          child: AnimatedSmoothIndicator(
                            activeIndex: activeindex,
                            effect: ExpandingDotsEffect(

                              spacing: 8,
                              dotHeight: 8,
                              dotWidth: 8,
                              dotColor: Colors.white,
                              activeDotColor: Color(0xff8567ff),
                            ),
                            count: urlimages.length,
                          ),
                        ),

                      ],
                    ),)
                ],
              ),

              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                  top: MediaQuery.of(context).size.height / 50,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                        bottom: 5,
                      ),
                      child: Text(
                        "Yoga Body Stretching",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,),
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
                                            // color: current == index
                                            //     ? Colors.deepPurpleAccent
                                            //     : Colors.white54,
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
                                                    ? Colors.deepPurpleAccent
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
                    Container(
                      margin: EdgeInsets.only(top: 10,),
                      height: 2,
                      width: MediaQuery.of(context).size.width / 1,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 25,
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Workout_Activity(),),);
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
  Widget buildImage(String urlimage, int index) =>
      Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Image.asset(urlimage,fit: BoxFit.cover,),
      );
}


