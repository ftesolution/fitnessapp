import 'dart:io';

import 'package:fitnessapp/Tabs_Pages/Profile/Edit_Profile.dart';
import 'package:fitnessapp/Tabs_Pages/Profile/Notification.dart';
import 'package:fitnessapp/Tabs_Pages/Profile/premium.dart';
import 'package:fitnessapp/lets_in_screen/Sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../forgot _reset_password/select _contact _detail.dart';
import 'Security.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  File? _image;

  bool theme_value = false;

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
                      child: Icon(
                        Icons.sports_gymnastics,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Profile",
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
                      width: MediaQuery.of(context).size.width / 1.9,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                      child: Icon(
                        Icons.more_horiz,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              PopupMenuButton(
                position: PopupMenuPosition.under,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      height: 40,
                      child: Text(
                        "Gallery",
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
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
                            color: Colors.black,
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
                            color: Colors.black,
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
                          height: MediaQuery.of(context).size.height / 8.5,
                          width: MediaQuery.of(context).size.height / 8.5,
                          decoration: BoxDecoration(
                            color: Colors.black12,
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
                      top: MediaQuery.of(context).size.height / 30,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 40),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.mode_edit_outline_rounded,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Christina Ainsley",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "christina_ainsley@yourdomain.com",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Premium_Pakages(),));
                },
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    right: 10,
                    left: 10,
                    bottom: 20,
                  ),
                  height: 110,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "PRO",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lexendDeca(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Text(
                              "Upgrade to Premium",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lexendDeca(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            child: Icon(
                              Icons.arrow_circle_right_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Enjoy workout accoss without ads and restrictions",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lexendDeca(
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_Profile(),),);
                },
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.person_outline_rounded,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        "Edit Profile",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications(),),);
                },
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        "Notifications",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Security(),),);
                },
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.security_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Text(
                        "Security",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.live_help_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      "Help",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      "Dark Theme",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lexendDeca(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: FlutterSwitch(
                      width: 50,
                      height: 28,
                      activeColor: Colors.deepPurpleAccent,
                      value: theme_value,
                      onToggle: (bool index) {
                        setState(() {
                          theme_value = index;
                        });
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: (context),
                    builder: (context)=>Container(

                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
                    ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.drag_handle_rounded,color: Colors.grey,),
                            Container(
                              padding: EdgeInsets.only(top: 10,bottom: 20,),
                              child: Text(
                                "Logout",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lexendDeca(
                                  textStyle: TextStyle(
                                    color: Colors.red,
                                  ),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width / 1.2,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20,bottom: 20,),
                              child: Text(
                                "Are you sure you want to log out",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lexendDeca(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Sign_In(),
                                    ),
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
                                    "Yes, Logout",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.lexendDeca(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(
                                      35,
                                    ),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.lexendDeca(
                                      textStyle: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                  ),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.logout_rounded,
                        color: Colors.red,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "Logout",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.red,
                          ),
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
