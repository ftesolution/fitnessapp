import 'package:fitnessapp/Tabs_Pages/Profile/Profile_Page.dart';
import 'package:fitnessapp/Tabs_Pages/Tab_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:intl/intl.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {

  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  var check = false;
  var check2 = false;
  var val;
  String? newval = "";

  String? _name, _Nickname, _email;
  PhoneNumber? _phone;


  String dropdownvalue = 'Select Gender';


  var gender = [
  'Select Gender',
  ' Male',
  'Female',
  'Other',
  ];


  String dropdownvalue1 = 'Select Country';


  var Contry = [
    'Select Country',
    ' Pakistan',
    'India',
    'United States',
  ];



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
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_Page(),));
                      },
                      child: Container(
                          padding: EdgeInsets.only(left: 0,),
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.arrow_back_rounded,color: Colors.black,size: 25,)),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Edit Profile",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lexendDeca(
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextFormField(
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 17,
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
                  fillColor: Colors.black12.withOpacity(0.05),
                  filled: true,
                  hintText: "Full Name",
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
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
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
                  fillColor: Colors.black12.withOpacity(0.05),
                  filled: true,
                  hintText: "Nickname",
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
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Container(
                    child: TextFormField(

                      controller: dateinput,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 30, right: 50, top: 15, bottom: 15),
                        isDense: true,
                        fillColor: Colors.black12.withOpacity(0.05),
                        filled: true,
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
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        hintText: 'Date of Birth',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                        ),
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          print(pickedDate);
                          String formattedDate =
                          DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(formattedDate);

                          setState(() {
                            dateinput.text = formattedDate;
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
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
                    color: Colors.black,
                  ),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: dropdownvalue1,
                    isExpanded: true,
                    iconSize: 20,
                    iconEnabledColor: Color.fromARGB(255, 145, 143, 143),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: Contry.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue1 = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
              IntlPhoneField(
                initialCountryCode: 'IN',
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
                    color: Colors.black,
                  ),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      left: 30, right: 50, top: 15, bottom: 15),
                  isDense: true,
                  fillColor: Colors.black12.withOpacity(0.05),
                  filled: true,
                  hintText: "Phone Number",
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
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: dropdownvalue,
                    isExpanded: true,
                    iconSize: 20,
                    iconEnabledColor: Color.fromARGB(255, 145, 143, 143),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: gender.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
        const EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 10),
        child: GestureDetector(
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
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(
                35,
              ),
            ),
            child: Text(
              "Update",
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
}
