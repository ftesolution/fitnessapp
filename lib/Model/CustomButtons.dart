import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  String? title;
  var onTap;
  CustomButton({Key? key,this.title,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:ElevatedButton(
            onPressed: onTap,
          child:  Text(title!,
            textAlign: TextAlign.center,
            style: GoogleFonts.lexendDeca(
              textStyle: TextStyle(
                color: Colors.black,
              ),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
    );
  }
}



class CustomButton1 extends StatelessWidget {
  String? title;
  var onTap;
  CustomButton1({Key? key,this.title,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
              margin: EdgeInsets.only(left: 30,right: 30),
              alignment: Alignment.center,
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff8567ff),
                        Color(0xff6c47ff),
                      ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.9),
                      spreadRadius: 3,
                      offset: Offset(0,3),
                      blurRadius: 15,
                    )
                  ]
              ),
              child: Text(title!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),)),
        ),
    );
  }
}


class CustomButton2 extends StatelessWidget {
  String? title;
  Gradient? gradient;
  var onTap;
  Color? txtcolor;
  CustomButton2({Key? key,this.title,this.onTap,this.txtcolor,this.gradient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: BorderRadius.all(Radius.circular(40),),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.blueGrey.withOpacity(0.9),
                //     spreadRadius: 3,
                //     offset: Offset(0,3),
                //     blurRadius: 15,
                //   )
                // ]
            ),
            child: Text(title!,style: TextStyle(color: txtcolor,fontWeight: FontWeight.bold,fontSize: 17),)),
      ),
    );
  }
}