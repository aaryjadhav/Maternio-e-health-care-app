//--------------------------------babysitter_screens--------------------------
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Main screens/navbar.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class babyssitter_profile_other extends StatefulWidget {
  const  babyssitter_profile_other({Key? key}) : super(key: key);

  @override
  State<babyssitter_profile_other> createState() => _babyssitter_profile_otherState();
}

class _babyssitter_profile_otherState extends State<babyssitter_profile_other> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            //=============main body column---------------------------------------------------------
            body: Column(
              children: [
                //----------------------first row 40%-------------------------------------------------
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(
                        //-------------------------first container profile image----------------------------
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0, // soften the shadow
                              )
                            ],
                            color: Colors.deepPurpleAccent.shade100,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.zero,
                                topRight: Radius.zero,
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          height: double.infinity,
                          // width: 180,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //---------------back icon----------------------------------------
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    child: IconButton(
                                      iconSize: 25,
                                      icon: const Icon(Icons.arrow_back_ios),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    child: Text(
                                      //--------------------text----------------------------------------
                                      "Profile",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                              //---------------------------circleavatar-------------------------------
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white60,
                                      radius: 60,
                                      child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/babysitter.png'),
                                          radius: 55),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Ms.Babysitter",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        //----------------------------column  of first row----------------------------------
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              //-----------------------------message button-------------------------------------
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        82, 15, 25, 0),
                                    child: InkWell(onTap: (){},
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.message_rounded),
                                          Text(
                                              "Message",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500)
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              //------------------------------ container below edit button----------------------------
                                flex: 5,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(0, 0, 7, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5, // soften the shadow
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 30, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 0,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Designation",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "Babysitter",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "Contact",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "1234567890",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "Birth Date",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "24-02-2024",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "Gender",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "Female",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "Working Hours",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "9:00am - 7:00pm",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    // height: double.infinity,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  //--------------------------------2nd row ---------------------------
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                    child: Row(
                      children: <Widget>[
                        //---------------------------------2nd row (1st container)-----------------------
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.0, // soften the shadow
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Height",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "52/1.7 Feet",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text("Fees",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),),
                                              Text(
                                                "₹10,000/Month",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              // Text("Age",
                                              //     style: TextStyle(
                                              //         fontWeight:
                                              //             FontWeight.bold)),
                                              // Text(
                                              //   "21",
                                              //   style: TextStyle(
                                              //       color: Colors
                                              //           .deepPurpleAccent
                                              //           .shade200),
                                              //),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // height: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 130,
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //-------------------------2nd row(2nd container)------------------------------------
                        Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0, // soften the shadow
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Experience",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                        Text(
                                          "5 Years",
                                          style: GoogleFonts.poppins(
                                              color: Colors
                                                  .deepPurpleAccent
                                                  .shade700,
                                              //fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                        Text("Address",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),),
                                        Flexible(
                                          child: Text(
                                            "B/109, Bhanuhans C.H.S, Navghar Road, Bhayandar(east), Thane-401105",
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent
                                                    .shade700,
                                                //fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                        ),
                                        Text("Qualification",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),),
                                        Flexible(
                                          child: Text(
                                            "\u2022 P.G Diploma in Gynaecology & Obstetrics (D.G.O)\n\u2022 Doctor of Medicine (M.D)",
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent
                                                    .shade700,
                                                //fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                        ),

                                        // Text("Age",
                                        //     style: TextStyle(
                                        //         fontWeight:
                                        //             FontWeight.bold)),
                                        // Text(
                                        //   "21",
                                        //   style: TextStyle(
                                        //       color: Colors
                                        //           .deepPurpleAccent
                                        //           .shade200),
                                        //),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // height: double.infinity,
                          ),
                        ),
                      ],

                    ),
                  ),
                ),
                SizedBox(height: 5),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            //-----------------------------bottom navigation bar----------------------
           bottomNavigationBar: BottomNavBar(0),
        ));
  }
}
