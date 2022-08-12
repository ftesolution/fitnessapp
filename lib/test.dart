import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:fitnessapp/Tabs_Pages/WorkoutDetail/Side_Training.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class Rest_Page extends StatefulWidget {
  const Rest_Page({Key? key}) : super(key: key);

  @override
  State<Rest_Page> createState() => _Rest_PageState();
}

class _Rest_PageState extends State<Rest_Page> {
  late VideoPlayerController _controller1;

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.asset("Assets/one_leg_video.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  final CountDownController _controller = CountDownController();
  bool _isCompleted = false;

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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 25,
                bottom: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Side_Training(),
                          ));
                    },
                    child: Container(
                        padding: EdgeInsets.only(
                          left: 0,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 25,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "TAKE A REST",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.deepPurpleAccent,
                  ),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              child: CircularCountDownTimer(
                onComplete: () {
                  setState(() {
                    _isCompleted = true;
                  });
                },
                isTimerTextShown: true,
                controller: _controller,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2,
                duration: 20,
                initialDuration: 0,
                ringColor: Colors.white,
                fillColor: Colors.white,
                strokeWidth: 0,
                textFormat: CountdownTextFormat.MM_SS,
                textStyle: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Next Movement (2/10)",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "One Leg Downward",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: _controller1.value.isInitialized
                        ? AspectRatio(
                      aspectRatio: _controller1.value.aspectRatio,
                      child: VideoPlayer(_controller1),
                    )
                        : Container(),
                  ),
                ),
                Positioned(child: FloatingActionButton(
                  backgroundColor: Colors.deepPurpleAccent,
                  onPressed: () {
                    setState(() {
                      _controller1.value.isPlaying
                          ? _controller1.pause()
                          : _controller1.play();
                    });
                  },
                  child: Icon(
                    _controller1.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                ),),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
        const EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Side_Training()),
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
              "Skip Rest",
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

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
  }
}
