import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Discover/Discover_Page.dart';
import 'Home/Home_Page.dart';
import 'Insight/Insight_Page.dart';
import 'Profile/Profile_Page.dart';

class Tab_Page extends StatelessWidget {
  const Tab_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            Home_Page(),
            Discover_page(),
            Insight_Page(),
            Profile_Page(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: TabBar(

            labelColor: Colors.deepPurpleAccent,
            unselectedLabelColor: Colors.black.withOpacity(0.4),
            indicatorColor: Colors.white,
            labelStyle:  GoogleFonts.lexendDeca(
              textStyle: TextStyle(
                color: Colors.deepPurpleAccent,
              ),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelStyle:  GoogleFonts.lexendDeca(
              textStyle: TextStyle(
                color: Colors.black.withOpacity(0.7),
              ),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home),),
              Tab(text: 'Discover', icon: Icon(Icons.auto_graph),),
              Tab(text: 'Insight', icon: Icon(Icons.insights),),
              Tab(text: 'Profile', icon: Icon(Icons.person_outline_rounded),),
            ],
          ),
        ),
      ),
    );
  }
}
