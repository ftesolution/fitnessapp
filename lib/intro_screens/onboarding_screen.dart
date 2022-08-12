import 'package:fitnessapp/Account_setup_screen/gender%20screen.dart';
import 'package:fitnessapp/intro_screens/slide_Screen1.dart';
import 'package:fitnessapp/intro_screens/slide_Screen2.dart';
import 'package:fitnessapp/intro_screens/slide_Screen3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding_screen extends StatefulWidget {
  const onboarding_screen({Key? key}) : super(key: key);

  @override
  State<onboarding_screen> createState() => _onboarding_screenState();
}

class _onboarding_screenState extends State<onboarding_screen> {
  PageController _controller = PageController();
  bool onlastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlastpage = (index == 2);
              });
            },
            children: [
              slide_screen1(),
              slide_screen2(),
              slide_screen3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.1),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 670,
                    ),
                    SmoothPageIndicator(
                        effect: ExpandingDotsEffect(
                          spacing: 8,
                          dotHeight: 8,
                          dotWidth: 8,
                          dotColor: Colors.grey,
                          activeDotColor: Color(0xff8567ff),
                        ),
                        controller: _controller,
                        count: 3),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    // onlastpage
                    //     ? GestureDetector(
                    //         onTap: () {
                    //           Navigator.pushReplacement(
                    //               context,
                    //               MaterialPageRoute(
                    //                 builder: (Context) => gender_screen(),
                    //               ));
                    //         },
                    //         child: Container(
                    //             margin: EdgeInsets.only(left: 30, right: 30),
                    //             alignment: Alignment.center,
                    //             height: MediaQuery.of(context).size.height / 15,
                    //             width: MediaQuery.of(context).size.width / 1,
                    //             decoration: BoxDecoration(
                    //                 gradient: LinearGradient(colors: [
                    //                   Color(0xff8567ff),
                    //                   Color(0xff6c47ff),
                    //                 ]),
                    //                 borderRadius: BorderRadius.all(
                    //                   Radius.circular(30),
                    //                 ),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.blueGrey.withOpacity(0.9),
                    //                     spreadRadius: 3,
                    //                     offset: Offset(0, 3),
                    //                     blurRadius: 15,
                    //                   )
                    //                 ]),
                    //             child: Text(
                    //               "Done",
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 17),
                    //             )),
                    //       )
                    //     : GestureDetector(
                    //         onTap: () {
                    //           _controller.nextPage(
                    //             duration: Duration(microseconds: 500),
                    //             curve: Curves.easeIn,
                    //           );
                    //         },
                    //         child: Container(
                    //             margin: EdgeInsets.only(left: 30, right: 30),
                    //             alignment: Alignment.center,
                    //             height: MediaQuery.of(context).size.height / 15,
                    //             width: MediaQuery.of(context).size.width / 1,
                    //             decoration: BoxDecoration(
                    //                 gradient: LinearGradient(colors: [
                    //                   Color(0xff8567ff),
                    //                   Color(0xff6c47ff),
                    //                 ]),
                    //                 borderRadius: BorderRadius.all(
                    //                   Radius.circular(30),
                    //                 ),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.blueGrey.withOpacity(0.9),
                    //                     spreadRadius: 3,
                    //                     offset: Offset(0, 3),
                    //                     blurRadius: 15,
                    //                   )
                    //                 ]),
                    //             child: Text(
                    //               "Next",
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 17),
                    //             )),
                    //       ),
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
        child: onlastpage
            ? GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (Context) => gender_screen(),
                      ));
                },
                child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xff8567ff),
                          Color(0xff6c47ff),
                        ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.9),
                            spreadRadius: 3,
                            offset: Offset(0, 3),
                            blurRadius: 15,
                          )
                        ]),
                    child: Text(
                      "Done",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
              )
            : GestureDetector(
                onTap: () {
                  _controller.nextPage(
                    duration: Duration(microseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
                child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xff8567ff),
                          Color(0xff6c47ff),
                        ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.9),
                            spreadRadius: 3,
                            offset: Offset(0, 3),
                            blurRadius: 15,
                          )
                        ]),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
              ),
      ),
    );
  }
}
