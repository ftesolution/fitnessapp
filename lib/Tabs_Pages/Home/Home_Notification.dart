import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Tab_Page.dart';

class Home_Notification extends StatelessWidget {
  const Home_Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          right: MediaQuery.of(context).size.width / 20,
          top: MediaQuery.of(context).size.height / 50,
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Tab_Page(),));
                  },
                  child: Container(
                      padding: EdgeInsets.only(left: 0,),
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.arrow_back_rounded,size: 25,)),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Notification",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexendDeca(
                      textStyle: TextStyle(
                      ),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width/8,),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).hintColor,
                        width: 1,
                      )),
                  child: Icon(
                    Icons.more_horiz,
                    size: 18,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
