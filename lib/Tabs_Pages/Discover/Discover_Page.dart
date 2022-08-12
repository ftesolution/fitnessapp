import 'package:fitnessapp/Tabs_Pages/Discover/Discover_Advance.dart';
import 'package:fitnessapp/Tabs_Pages/Discover/Discover_Beginner.dart';
import 'package:fitnessapp/Tabs_Pages/Discover/Discover_Intermediate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Discover_page extends StatefulWidget {
  const Discover_page({Key? key}) : super(key: key);

  @override
  State<Discover_page> createState() => _Discover_pageState();
}

class _Discover_pageState extends State<Discover_page> {
  List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  List<String> catagory = [
    "Beginner",
    "Intermediate",
    "Advance",
  ];

  List<Widget> page = [
    Discover_beginner(),
    Discover_Intermediate(),
    Discover_Advance(),
  ];
  int current = 0;

  TextEditingController signInPassword = TextEditingController();
  bool isSearching = false;

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
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              isSearching
                  ? TextFormField(
                      autofocus: true,
                      controller: signInPassword,
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
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          size: 20,
                          color: _focusNodes[0].hasFocus
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              this.isSearching = !this.isSearching;
                              this.signInPassword.clear();
                            });
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: _focusNodes[0].hasFocus
                                ? Colors.deepPurpleAccent
                                : Colors.grey,
                            size: 20,
                          ),
                        ),
                        hintText: "Search",
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
                    )
                  : Container(
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
                              // child:
                              child: Image.asset("Assets/welcome/Gymicon.png")),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 30,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Discover",
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
                            width: MediaQuery.of(context).size.width / 2.4,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                this.isSearching = !this.isSearching;
                              });
                            },
                            icon: Icon(
                              Icons.search_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: catagory.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(5),
                                    width:
                                    MediaQuery.of(context).size.width / 3.6,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: current == index
                                          ? Colors.deepPurpleAccent
                                          : Colors.white54,
                                      borderRadius: current == index
                                          ? BorderRadius.circular(20)
                                          : BorderRadius.circular(20),
                                      border: current == index
                                          ? Border.all(
                                        color: Colors.deepPurpleAccent,
                                        width: 2,
                                      )
                                          : Border.all(
                                        color: Colors.deepPurpleAccent,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        catagory[index],
                                        style: GoogleFonts.lexendDeca(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: current == index
                                              ? Colors.white
                                              : Colors.deepPurpleAccent,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Visibility(
                                //     visible: current == index,
                                //     child: Container(
                                //       width: 5,
                                //       height: 5,
                                //       decoration: const BoxDecoration(
                                //           color: Colors.deepPurpleAccent,
                                //           shape: BoxShape.circle),
                                //     ),),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              page[current],

            ],
          ),
        ),
      ),
    );
  }
}
