import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:fitnessapp/Tabs_Pages/WorkoutDetail/Get_Ready.dart';
import 'package:fitnessapp/Tabs_Pages/WorkoutDetail/Rest_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class Side_Training extends StatefulWidget {
  const Side_Training({Key? key}) : super(key: key);

  @override
  State<Side_Training> createState() => _Side_TrainingState();
}

class _Side_TrainingState extends State<Side_Training> {
  bool _isPause = false;
  bool _isCompleted = false;
  double _value = 4;

  final CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.black,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/yoga body streching/sideplank.jpg'),
                          ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  child:  Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    child: SfSliderTheme(
                      data: SfSliderThemeData(
                        trackCornerRadius: 10,
                        thumbColor: Colors.orange,
                        thumbRadius: 12,
                        thumbStrokeWidth: 4,
                        thumbStrokeColor: Colors.white,

                      ),
                      child: SfSlider(
                        // thumbShape: SfThumbShape(),
                        min: 0.0,
                        max: 10.0,
                        value: _value,
                        trackShape: SfTrackShape(),
                        activeColor: Colors.deepPurpleAccent,
                        inactiveColor: Colors.white.withOpacity(1),
                        interval: 2,
                        // showLabels: true,
                        onChanged: (dynamic newValue) {
                          setState(
                                () {
                              _value = newValue;
                            },
                          );
                        },
                      ),
                    ),
                  ),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Side Plank",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                  ),
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              child: CircularCountDownTimer(
                onComplete: (){
                  setState(() {
                    _isCompleted =true;
                  });
                },
                controller: _controller,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 4,
                duration: 20,
                initialDuration: 0,
                ringColor: Colors.grey,
                fillColor: Colors.deepPurpleAccent,
                strokeWidth: 12,
                textStyle: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                  ),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
                strokeCap: StrokeCap.round,
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  if(_isPause){
                    _isPause = false;
                    _controller.resume();
                  }else{
                    _isPause = true;
                    _controller.pause();
                  }
                });
              },
              child: Container(
                height: 40,
                width: 110,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(_isPause ? Icons.play_arrow : Icons.pause,color: Colors.white,),
                     SizedBox(width: 5,),
                     Text(_isPause ? 'RESUME' : 'PAUSE',style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                     ),),
                  ],
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 40,right: 40,),
            //   alignment: Alignment.center,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       GestureDetector(
            //         onTap: (){
            //
            //         },
            //         child: Container(
            //           height: 50,
            //           width: 150,
            //           alignment: Alignment.center,
            //           decoration: BoxDecoration(
            //             color: Colors.deepPurpleAccent.withOpacity(0.2),
            //             borderRadius: BorderRadius.circular(30),
            //           ),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Icon(Icons.subdirectory_arrow_left_rounded,color: Colors.deepPurpleAccent,size: 25,),
            //               SizedBox(width: 15,),
            //               Text( 'Previous',style: TextStyle(
            //                 color: Colors.deepPurpleAccent,
            //                 fontWeight: FontWeight.bold,
            //               ),),
            //             ],
            //           ),
            //         ),
            //       ),
            //       GestureDetector(
            //         onTap: (){
            //
            //         },
            //         child: Container(
            //           height: 50,
            //           width: 150,
            //           alignment: Alignment.center,
            //           decoration: BoxDecoration(
            //             color: Colors.deepPurpleAccent.withOpacity(0.2),
            //             borderRadius: BorderRadius.circular(30),
            //           ),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text(_isCompleted ? 'Next' : 'Skip',style: TextStyle(
            //                 color: Colors.deepPurpleAccent,
            //                 fontWeight: FontWeight.bold,
            //               ),),
            //               SizedBox(width: 15,),
            //               Icon( Icons.arrow_right_alt_rounded,color: Colors.deepPurpleAccent,size: 30,),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,bottom: 10,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Get_Ready()),);
              },
              child: Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.subdirectory_arrow_left_rounded,color: Theme.of(context).accentColor,size: 25,),
                    SizedBox(width: 15,),
                    Text( 'Previous',style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Rest_Page()),);
              },
              child: Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_isCompleted ? 'Next' : 'Skip',style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 15,),
                    Icon( Icons.arrow_right_alt_rounded,color: Theme.of(context).accentColor,size: 30,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
