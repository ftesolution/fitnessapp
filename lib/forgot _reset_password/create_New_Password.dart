import 'package:fitnessapp/Tabs_Pages/Tab_Page.dart';
import 'package:fitnessapp/forgot%20_reset_password/select%20_contact%20_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/custom_reset_detail.dart';
import '../lets_in_screen/Sign_in.dart';
import 'Pin_page.dart';

class creat_new_password extends StatefulWidget {
  const creat_new_password({Key? key}) : super(key: key);

  @override
  State<creat_new_password> createState() => _creat_new_passwordState();
}

class _creat_new_passwordState extends State<creat_new_password> {
  bool obsText = true;
  bool obsText1 = true;
  bool checkBox = false;

  TextEditingController new_Password = new TextEditingController();
  TextEditingController comform_New_Password = new TextEditingController();

  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  var confirmPass;

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
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Select_Contact(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Forgot Password",
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
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.height / 2.5,
                child: SvgPicture.asset("images/newpass.svg"),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Row(
                children: [
                  Text(
                    "Create Your New Password",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Form(
                key: _formkey,
                child: Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: new_Password,
                        obscureText: obsText,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        validator: (String? value) {
                          confirmPass = value;
                          if (value!.isEmpty) {
                            return "Enter the Password";
                          }
                          if(value.length<8)
                          {
                            return "atleast 8 digit)";
                          }
                          if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value))
                          {
                            return "Enter valid Password\ncontain(1 upercase,1 lowercase, 1 special,1 numeric";
                          }
                        },
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 40,
                            bottom: MediaQuery.of(context).size.height / 40,
                            left: MediaQuery.of(context).size.width / 10,
                            right: MediaQuery.of(context).size.width / 10,
                          ),
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            size: 20,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obsText = !obsText;
                              });
                            },
                            icon: obsText
                                ? Icon(
                                    Icons.visibility_off_sharp,
                                    color: Colors.black,
                                    size: 20,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                          ),
                          hintText: "New Password",
                          hintStyle: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                            ),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          ),
                          isDense: true,
                          isCollapsed: true,
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.05),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 60,
                      ),
                      TextFormField(
                        controller: comform_New_Password,
                        obscureText: obsText1,
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Enter the Password";
                          }
                          if(value.length<8)
                          {
                            return "atleast 8 digit";
                          }
                          if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value))
                          {
                            return "Enter valid Password\ncontain(1 upercase,1 lowercase, 1 special,1 numeric";
                          }
                          if(value != confirmPass)
                            {
                              return "Password must be same";
                            }
                        },
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 40,
                            bottom: MediaQuery.of(context).size.height / 40,
                            left: MediaQuery.of(context).size.width / 10,
                            right: MediaQuery.of(context).size.width / 10,
                          ),
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            size: 20,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obsText1 = !obsText1;
                              });
                            },
                            icon: obsText1
                                ? Icon(
                                    Icons.visibility_off_sharp,
                                    color: Colors.black,
                                    size: 20,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                          ),
                          hintText: "Conform Password",
                          hintStyle: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                            ),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          ),
                          isDense: true,
                          isCollapsed: true,
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.05),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 90,
              ),
              Container(
                alignment: Alignment.center,
                child: CheckboxListTile(
                  side: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 2,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 4.6,
                    right: MediaQuery.of(context).size.width / 20,
                  ),
                  checkColor: Colors.white,
                  activeColor: Colors.deepPurpleAccent,
                  title: Text(
                    "Remember me",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  value: checkBox,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        checkBox = value!;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 30,
          right: 30,
          bottom: 10,
        ),
        child: GestureDetector(
          onTap: () {
            if(_formkey.currentState!.validate())
            {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    actionsAlignment: MainAxisAlignment.center,
                    alignment: Alignment.center,
                    actionsPadding: EdgeInsets.only(
                      right: 10,
                      left: 10,
                    ),
                    content: Container(
                      height: 330,
                      width: 220,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/cong.png"),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Congratulations!",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.deepPurpleAccent,
                              ),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Your account is Ready to use!",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lexendDeca(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Tab_Page(),
                                ),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(
                                  35,
                                ),
                              ),
                              child: Text(
                                "Go to Homepage",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.lexendDeca(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            else
            {
              print("unsuccessful");
            }
          },
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(
                35,
              ),
            ),
            child: Text(
              "Continue",
              textAlign: TextAlign.start,
              style: GoogleFonts.lexendDeca(
                textStyle: TextStyle(
                  color: Colors.white,
                ),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
