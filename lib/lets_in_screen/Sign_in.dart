import 'package:fitnessapp/lets_in_screen/Sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../forgot _reset_password/select _contact _detail.dart';


class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {

  bool signIncheckBox = false;
  bool obsText = true;
  TextEditingController signInEmail = new TextEditingController();
  TextEditingController signInPassword = new TextEditingController();
  List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    _focusNodes.forEach((node) {
      node.addListener(() {
        setState(() {});
      });
    });
    super.initState();
  }
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sign_Up(),
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
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login to your Account",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              TextFormField(
                controller: signInEmail,
                cursorColor: Colors.black,
                cursorHeight: 20,
                focusNode: _focusNodes[0],
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
                  prefixIcon: Icon(Icons.email_rounded,
                      size: 20,
                      color: _focusNodes[0].hasFocus
                          ? Colors.deepPurpleAccent
                          : Colors.grey),
                  hintText: "Email",
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
                  fillColor: _focusNodes[0].hasFocus
                      ? Colors.deepPurpleAccent.withOpacity(0.1)
                      : Colors.black.withOpacity(0.05),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              TextFormField(
                controller: signInPassword,
                obscureText: obsText,
                cursorColor: Colors.black,
                cursorHeight: 20,
                focusNode: _focusNodes[1],
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
                    color: _focusNodes[1].hasFocus
                        ? Colors.deepPurpleAccent
                        : Colors.grey,
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
                      color: _focusNodes[1].hasFocus
                          ? Colors.deepPurpleAccent
                          : Colors.grey,
                      size: 20,
                    )
                        : Icon(
                      Icons.visibility,
                      color: _focusNodes[1].hasFocus
                          ? Colors.deepPurpleAccent
                          : Colors.grey,
                      size: 20,
                    ),
                  ),
                  hintText: "password",
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
                  fillColor: _focusNodes[1].hasFocus
                      ? Colors.deepPurpleAccent.withOpacity(0.1)
                      : Colors.black.withOpacity(0.05),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 2,
                    ),
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
                  value: signIncheckBox,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(
                          () {
                        signIncheckBox = value!;
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 90,
              ),
              Container(
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
                  "Sign in",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Select_Contact()),);
                  },
                  child: Text(
                    "Forgot the password?",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.deepPurpleAccent,
                      ),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    Text(
                      "or continue with",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                        ),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 11,
                      width: MediaQuery.of(context).size.width / 4.6,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          border: Border.all(
                            color: Colors.black12,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("images/Facebook.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 11,
                      width: MediaQuery.of(context).size.width / 4.6,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          border: Border.all(
                            color: Colors.black12,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("images/Google.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 11,
                      width: MediaQuery.of(context).size.width / 4.6,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          border: Border.all(
                            color: Colors.black12,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("images/Apple.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                        ),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 60,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sign_Up()),);
                      },
                      child: Text(
                        "Sign up",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.deepPurpleAccent,
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
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
    );;
  }
}
