import 'dart:io';

import 'package:fitnessapp/Account_setup_screen/physical_screen.dart';
import 'package:fitnessapp/lets_in_screen/Lets_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../Model/CustomButtons.dart';
import '../Model/CustomTitle.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({Key? key}) : super(key: key);

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  File? _image;

  String? _name, _Nickname, _email;
  PhoneNumber? _phone;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Future getimage(ImageSource source) async {
    final image = await ImagePicker.platform.getImage(source: source);
    if (image == null) return;
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9,
      ],
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: "Cropper",
          toolbarColor: Colors.deepPurpleAccent,
          toolbarWidgetColor: Colors.green,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        IOSUiSettings(title: 'Cropper')
      ],
    );
    final imageTemporary = File(croppedFile!.path);
    setState(() {
      _image = imageTemporary;
    });
  }

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
                height: MediaQuery.of(context).size.height / 10,
              ),
              Container(
                  alignment: Alignment.center,
                  child: CustomTitle(
                    title: "Fill Your Profile?",
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 45,
                  right: MediaQuery.of(context).size.width / 45,
                ),
                alignment: Alignment.center,
                child: CustomSubTitle(
                    title:
                        "Don't worry, you can always change it later. or you can skip it for now"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              PopupMenuButton(
                position: PopupMenuPosition.under,
                color: Theme.of(context).unselectedWidgetColor,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      height: 40,
                      child: Text(
                        "Gallery",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      onTap: () => getimage(ImageSource.gallery),
                    ),
                    PopupMenuItem(
                      height: 40,
                      child: Text(
                        "Camera",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      onTap: () => getimage(ImageSource.camera),
                    ),
                    PopupMenuItem(
                      height: 40,
                      child: Text(
                        "Remove",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      onTap: () {
                        setState(
                          () {
                            _image = null;
                          },
                        );
                      },
                    ),
                  ];
                },
                child: Stack(
                  alignment: Alignment.centerRight,
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(80),
                              child: _image != null
                                  ? Image.file(
                                      _image!,
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    )
                                  : Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Icon(
                                        Icons.person,
                                        size: 60,
                                        color: Colors.grey,
                                      )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 35,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 40),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.edit,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 5,
                      ),
                      child: TextFormField(
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onSaved: (String? name) {
                          _name = name;
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "please Enter the name";
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 30, right: 50, top: 15, bottom: 15),
                          isDense: true,
                          fillColor: Theme.of(context).cardColor,
                          filled: true,
                          hintText: "Full Name",
                          hintStyle: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                            ),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 5,
                      ),
                      child: TextFormField(
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onSaved: (String? nickname) {
                          _Nickname = nickname;
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "please Enter the Nickname";
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 30, right: 50, top: 15, bottom: 15),
                          isDense: true,
                          fillColor: Theme.of(context).cardColor,
                          filled: true,
                          hintText: "Nickname",
                          hintStyle: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                            ),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                      ),
                      child: TextFormField(
                        onSaved: (String? email) {
                          _email = email;
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Enter the email";
                          }
                          if( !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value))
                          {
                            return "Enter the valid Email";
                          }
                          else
                            {
                              return null;
                            }
                        },
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            color: Theme.of(context).hintColor,
                          ),
                          contentPadding: EdgeInsets.only(
                              left: 30, right: 50, top: 15, bottom: 15),
                          isDense: true,
                          fillColor: Theme.of(context).cardColor,
                          filled: true,
                          hintText: "Email",
                          hintStyle: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                              // color: Colors.black.withOpacity(0.4),
                            ),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 5,
                      ),
                      child: IntlPhoneField(
                        dropdownIcon: Icon(
                            Icons.arrow_drop_down,color: Theme.of(context).textSelectionTheme.cursorColor,
                          size: 22,
                        ),
                        dropdownTextStyle: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        initialCountryCode: 'PK',
                        invalidNumberMessage: "please enter phone number",

                        onSaved: (phone){
                          _phone = phone;
                        },
                        validator: (value) {
                          if (value == 0) {
                            return "please Enter the Phone number";
                          }
                        },
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                          ),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 30, right: 50, top: 15, bottom: 15),
                          isDense: true,
                          fillColor: Theme.of(context).cardColor,
                          filled: true,
                          hintText: "Phone Number",
                          hintStyle: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                            ),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton2(
                gradient: LinearGradient(colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor,
                ]),
                title: "Skip",
                txtcolor: Theme.of(context).accentColor,
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lets_In(),
                      ));
                }),
            CustomButton2(
              gradient: LinearGradient(colors: [
                Color(0xff8567ff),
                Color(0xff6c47ff),
              ]),
              title: "Start",
              txtcolor: Colors.white,
              onTap: () {
                if(_formkey.currentState!.validate())
                  {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lets_In(),
                      ),
                    );
                  }
                else
                  {
                    print("unsuccessful");
                  }
              },
            ),
          ],
        ),
      ),
    );
  }
}
