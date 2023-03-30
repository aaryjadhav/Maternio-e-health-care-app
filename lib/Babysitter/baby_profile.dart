//--------------------------------baby_screens--------------------------
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:maternio_1/Baby/BabyFormPageGradient.dart';

import '../Main screens/navbar.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class baby_profile extends StatefulWidget {
  const baby_profile({Key? key}) : super(key: key);

  @override
  State<baby_profile> createState() => _baby_profileState();
}

class _baby_profileState extends State<baby_profile> {
  String name = '';
  void initState() {
    super.initState();
    getData();
  }
  Future getData() async{
    await FirebaseFirestore.instance.collection("usersData").doc(FirebaseAuth.instance.currentUser!.uid.toString()).get().then((value) async{
      setState(() {
        name=value['Pregnant Women Name'];


      });
    });
    // int currentValue=consumed;
  }

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
                                bottomRight: Radius.circular(20)),
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
                                              AssetImage('assets/baby.png'),
                                          radius: 55),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(85, 40, 0, 0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xff6DAC67),
                                      radius: 14,
                                      child: IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => BabyFormPage()));},
                                        color: Colors.white,
                                        iconSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                  name,
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
                                    child: InkWell(onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => BabyFormPage()));
                                    },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.edit,size: 20,),
                                          Text(
                                              "Edit",
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
                                                "Profile",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "Baby",
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
                                                "Age",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "1 Month",
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
                                flex: 9,
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.0, // soften the shadow
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20
                                        ),
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
                                                "52cm/1.7 feet",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text("Weight",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),),
                                              Text(
                                                "3.2 kg",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text("Allergy",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),),
                                              Text(
                                                "No allergy",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text("Blood Group",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),),
                                              Text(
                                                "B +ve",
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
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
                                height: 50,
                              ),
                              Expanded(
                                flex: 1,
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
                              borderRadius: BorderRadius.circular(20
                              ),
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
                                          "Parents Contact No.",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                        Text(
                                          "+91 1234567890",
                                          style: GoogleFonts.poppins(
                                              color: Colors
                                                  .deepPurpleAccent
                                                  .shade700,
                                              //fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                        Text("Mother's Name",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),),
                                        Text(
                                          "Mrs.Sofia Angad",
                                          style: GoogleFonts.poppins(
                                              color: Colors
                                                  .deepPurpleAccent
                                                  .shade700,
                                              //fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                         Text("Father's Name",
                                           style: GoogleFonts.poppins(
                                               fontWeight: FontWeight.w500,
                                               fontSize: 17),),
                                        Text(
                                          "Mr. Raj Angad",
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
                                            "B/109, Bhanuhans C.H.S,Navghar Road, Bhayandar(east), Thane-401105",
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
            bottomNavigationBar: BottomNavBar(3),
        )
    );
  }
}
