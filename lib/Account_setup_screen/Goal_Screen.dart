import 'package:fitnessapp/Account_setup_screen/Height.dart';
import 'package:fitnessapp/Account_setup_screen/physical_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/CustomButtons.dart';
import '../Model/CustomTitle.dart';

class Goal_Screen extends StatefulWidget {
  const Goal_Screen({Key? key}) : super(key: key);

  @override
  State<Goal_Screen> createState() => _Goal_ScreenState();
}

class _Goal_ScreenState extends State<Goal_Screen> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              Container(
                  alignment: Alignment.center,
                  child: CustomTitle(
                    title: "What is Your Goal?",
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 60,
                  right: MediaQuery.of(context).size.width / 60,
                ),
                alignment: Alignment.center,
                child: CustomSubTitle(
                  title:
                      "You can choose more than one. Don't worry, you can always change it later.",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                ),
                decoration: BoxDecoration(),
                child: ListTileTheme(
                  contentPadding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 30,
                  ),
                  child: CheckboxListTile(
                    tileColor: Theme.of(context).listTileTheme.tileColor,
                    side: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
                    selected: check1,
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        side: BorderSide(
                            color:
                                check1 ? Colors.deepPurpleAccent : Theme.of(context).scaffoldBackgroundColor,
                            width: 2)),
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    title: Text(
                      "Get Fitter",
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: check1 ? Theme.of(context).listTileTheme.textColor: Theme.of(context).listTileTheme.textColor,
                        ),
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    value: check1,
                    onChanged: (bool? value) {
                      setState(() {
                        check1 = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                ),
                decoration: BoxDecoration(),
                child: ListTileTheme(
                  contentPadding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 30,
                  ),
                  child: CheckboxListTile(
                    tileColor: Theme.of(context).listTileTheme.tileColor,
                    side: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
                    selected: check2,
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        side: BorderSide(
                            color:
                                check2 ? Colors.deepPurpleAccent : Theme.of(context).scaffoldBackgroundColor,
                            width: 2)),
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    title: Text(
                      "Gain Weight",
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: check2 ? Theme.of(context).listTileTheme.textColor: Theme.of(context).listTileTheme.textColor,
                        ),
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    value: check2,
                    onChanged: (bool? value) {
                      setState(() {
                        check2 = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                ),
                decoration: BoxDecoration(),
                child: ListTileTheme(
                  contentPadding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 30,
                  ),
                  child: CheckboxListTile(
                    tileColor: Theme.of(context).listTileTheme.tileColor,
                    side: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
                    selected: check3,
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        side: BorderSide(
                            color:
                                check3 ? Colors.deepPurpleAccent : Theme.of(context).scaffoldBackgroundColor,
                            width: 2)),
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    title: Text(
                      "Lose Weight",
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: check3 ? Theme.of(context).listTileTheme.textColor: Theme.of(context).listTileTheme.textColor,
                        ),
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    value: check3,
                    onChanged: (bool? value) {
                      setState(() {
                        check3 = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                ),
                decoration: BoxDecoration(),
                child: ListTileTheme(
                  contentPadding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 30,
                  ),
                  child: CheckboxListTile(
                    tileColor: Theme.of(context).listTileTheme.tileColor,
                    side: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
                    selected: check4,
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        side: BorderSide(
                            color:
                                check4 ? Colors.deepPurpleAccent : Theme.of(context).scaffoldBackgroundColor,
                            width: 2)),
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    title: Text(
                      "Building Muscles",
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: check4 ? Theme.of(context).listTileTheme.textColor: Theme.of(context).listTileTheme.textColor,
                        ),
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    value: check4,
                    onChanged: (bool? value) {
                      setState(() {
                        check4 = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                ),
                decoration: BoxDecoration(),
                child: ListTileTheme(
                  contentPadding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 30,
                  ),
                  child: CheckboxListTile(
                    tileColor: Theme.of(context).listTileTheme.tileColor,
                    side: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
                    selected: check5,
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        side: BorderSide(
                            color:
                                check5 ? Colors.deepPurpleAccent : Theme.of(context).scaffoldBackgroundColor,
                            width: 2)),
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    title: Text(
                      "Improving Endurance",
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: check5 ? Theme.of(context).listTileTheme.textColor: Theme.of(context).listTileTheme.textColor,
                        ),
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    value: check5,
                    onChanged: (bool? value) {
                      setState(() {
                        check5 = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                ),
                decoration: BoxDecoration(),
                child: ListTileTheme(
                  contentPadding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 30,
                  ),
                  child: CheckboxListTile(
                    tileColor: Theme.of(context).listTileTheme.tileColor,
                    side: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
                    selected: check6,
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        side: BorderSide(
                            color:
                                check6 ? Colors.deepPurpleAccent : Theme.of(context).scaffoldBackgroundColor,
                            width: 2)),
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    title: Text(
                      "Others",
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: check6 ? Theme.of(context).listTileTheme.textColor: Theme.of(context).listTileTheme.textColor,
                        ),
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    value: check6,
                    onChanged: (bool? value) {
                      setState(() {
                        check6 = value!;
                      });
                    },
                  ),
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     CustomButton2(
              //       gradient: LinearGradient(colors: [
              //         Color(0xfff0ecff),
              //         Color(0xfff0ecff),
              //       ]),
              //       title: "Back",
              //       txtcolor: Color(0xff6c47ff),
              //       onTap: () {
              //         Navigator.pushReplacement(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => Height_Screen(),
              //           ),
              //         );
              //       },
              //     ),
              //     CustomButton2(
              //         gradient: LinearGradient(colors: [
              //           Color(0xff8567ff),
              //           Color(0xff6c47ff),
              //         ]),
              //         title: "Continue",
              //         txtcolor: Colors.white,
              //         onTap: () {
              //           Navigator.pushReplacement(
              //               context,
              //               MaterialPageRoute(
              //                 builder: (context) => Physical_Screen(),
              //               ));
              //         }),
              //   ],
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton2(
              gradient: LinearGradient(colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor,
              ]),
              title: "Back",
              txtcolor: Theme.of(context).accentColor,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Height_Screen(),
                  ),
                );
              },
            ),
            CustomButton2(
                gradient: LinearGradient(colors: [
                  Color(0xff8567ff),
                  Color(0xff6c47ff),
                ]),
                title: "Continue",
                txtcolor: Colors.white,
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Physical_Screen(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
