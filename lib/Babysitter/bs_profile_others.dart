//--------------------------------babysitter_screens--------------------------
import 'dart:ui';
import 'package:flutter/material.dart';
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
                                  IconButton(
                                    iconSize: 25,
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  Text(
                                    //--------------------text----------------------------------------
                                    "Profile",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                              //---------------------------circleavatar-------------------------------
                              Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white60,
                                    radius: 50,
                                    child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/babysitter.png'),
                                        radius: 45),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Ms.Babysitter",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                //-----------------------------edit button-------------------------------------
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        child: Icon(Icons.message_rounded),
                                        onTap: () {},
                                      ),
                                      InkWell(
                                        child: Text(
                                          "Message",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                                //------------------------------ container below edit button----------------------------
                                flex: 8,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 7, 0),
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
                                          topLeft: Radius.zero,
                                          topRight: Radius.zero,
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 5, 0, 0),
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
                                                  "Designation",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Babysitter",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors
                                                          .deepPurpleAccent
                                                          .shade200),
                                                ),
                                                Text("Contact",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  "+91 1234567890",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors
                                                          .deepPurpleAccent
                                                          .shade200),
                                                ),
                                                Text("Blood Group",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  "B+",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors
                                                          .deepPurpleAccent
                                                          .shade200),
                                                ),
                                                Text("Gender",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  "Female",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors
                                                          .deepPurpleAccent
                                                          .shade200),
                                                ),
                                                Text("Age",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  "21",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors
                                                          .deepPurpleAccent
                                                          .shade200),
                                                ),
                                              ],
                                            ),
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
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8)),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 7, 0, 0),
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
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "52/1.7 Feet",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
                                              ),
                                              Text("Weight",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                "5 kg 300g",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
                                              ),
                                              Text("Fees",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                "10,000/Month",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
                                              ),
                                              Text("Working Hours",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                "10:00am - 8:00pm",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
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
                                height: 5,
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
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 7, 0, 0),
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
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "5 Years",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors
                                                  .deepPurpleAccent.shade200),
                                        ),
                                        Text("Address",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          "B/109, Bhanuhans C.H.S,\nNavghar Road, Bhayandar(east),\nThane-401105",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors
                                                  .deepPurpleAccent.shade200),
                                        ),
                                        Text("Qualification",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          "\u2022 P.G Diploma in Gynaecology & Obstetrics (D.G.O)\n\u2022 Doctor of Medicine (M.D)",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors
                                                  .deepPurpleAccent.shade200),
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
