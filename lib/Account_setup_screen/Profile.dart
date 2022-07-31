import 'dart:io';

import 'package:fitnessapp/Account_setup_screen/physical_screen.dart';
import 'package:fitnessapp/lets_in_screen/Lets_in.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../Model/CustomButtons.dart';
import '../Model/CustomTitle.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({Key? key}) : super(key: key);

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  File? _image;


  TextEditingController name = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

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
                height: MediaQuery.of(context).size.height / 15,
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
                      top: 18,
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
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                decoration: BoxDecoration(),
                margin: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 15,
                ),
                child: TextFormField(
                  // validator: (String? val) => val.isEmpty || !val.contains("@")
                  //     ? "enter a valid eamil"
                  //     : null,
                  validator: (String? value) {
                     if(value == null || !value.contains('@') || !value.contains("."))
                     {
                       return "Enter a valid email";
                     }
                     else
                       {
                         return null;
                       }
                  },
                  style: GoogleFonts.lexendDeca(
                    textStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: email,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    contentPadding: EdgeInsets.only(
                        left: 30, right: 50, top: 15, bottom: 15),
                    isDense: true,
                    fillColor: Colors.black12.withOpacity(0.05),
                    filled: true,
                    hintText: "Email",
                    hintStyle: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                      ),
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton2(
                      gradient: LinearGradient(colors: [
                        Color(0xfff0ecff),
                        Color(0xfff0ecff),
                      ]),
                      title: "Skip",
                      txtcolor: Color(0xff6c47ff),
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Lets_In(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
