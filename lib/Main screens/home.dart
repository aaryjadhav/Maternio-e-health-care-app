import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/Baby/baby_massage.dart';
import 'package:maternio_1/Babysitter/babysitter_profile.dart';
import 'package:maternio_1/Babysitter/babysittersearch.dart';
import 'package:maternio_1/Babysitter/bs_profile_others.dart';
import 'package:maternio_1/Main%20screens/Drawer.dart';
import 'package:maternio_1/doctor/doctorsearch.dart';
import 'package:maternio_1/Main%20screens/profile_selection.dart';
import 'package:maternio_1/Pregnant%20Women/ytpage.dart';
import '../Pregnant Women/pregnantmycare.dart';
import '../Pregnant Women/pregworkout.dart';
import '../doctor/doctor_profile.dart';
import '../doctor/profile.dart';
import 'navbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer_screen(),
        appBar: AppBar(

          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
                // handle profile icon pres
              },
            ),
          ],
        ),
        body: //
            Scrollbar(
          child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) =>
                //
                Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 0),
                      child: InkWell(onTap: (){},
                        child: Text(
                          " Doctors ",
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 160,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 160,
                        width: 430,
                        margin: EdgeInsets.only(left: 15, top: 10),

                        // color: Colors.blue,

                        child: InkWell(onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    doctorsearch()));},
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 12, top: 30),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/doctorpp.png'),
                                      radius: 50,
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    //   width: double.infinity,
                                    margin: EdgeInsets.only(top: 40, left: 15),

                                    child: Expanded(
                                      child: Text(
                                        " DOCTOR'S",
                                        style: GoogleFonts.poppins(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        //  maxLines: null,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(75, 10, 0, 0),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 30,
                                          color: Colors.black,
                                        ),
                                        color: Colors.black,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      doctorsearch()));
                                          // handle profile icon pres
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/abstract.jpg"),
                              fit: BoxFit.cover),
                          // color: Colors.deepPurpleAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                //color: Color.fromRGBO(193, 188, 188, 1),
                                // offset: const Offset(0, 12),
                                // blurRadius: 13,
                                // spreadRadius: 3, //New
                                )
                          ],
                        ),
                      ),
                    ],
                  ),

                  // listview.builder(horizontal end)
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 0),
                      child: InkWell( onTap: (){},
                        child: Text(
                          " Babysitters ",
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 160,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 160,
                        width: 430,
                        margin: EdgeInsets.only(left: 15, top: 10),

                        // color: Colors.blue,

                        child: InkWell(onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    babysittersearch()));},
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 12, top: 30),
                                    child: CircleAvatar(
                                      backgroundImage:
                                      AssetImage('assets/doctorpp.png'),
                                      radius: 50,
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    //   width: double.infinity,
                                    margin: EdgeInsets.only(top: 40, left: 15),

                                    child: Expanded(
                                      child: Text(
                                        " BABYSITTER'S",
                                        style: GoogleFonts.poppins(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        //  maxLines: null,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(30, 10, 0, 0),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 30,
                                          color: Colors.black,
                                        ),
                                        color: Colors.black,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      doctor_profile()));
                                          // handle profile icon pres
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/abstract.jpg"),
                              fit: BoxFit.cover),
                          // color: Colors.deepPurpleAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              //color: Color.fromRGBO(193, 188, 188, 1),
                              // offset: const Offset(0, 12),
                              // blurRadius: 13,
                              // spreadRadius: 3, //New
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  // listview.builder(horizontal end)
                ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pregnantmycare()));
                        },
                        child: Text(
                          " My Care ",
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 180,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 170,
                        width: 170,
                        margin: EdgeInsets.only(left: 15, top: 10),

                        // color: Colors.blue,

                        child: InkWell(onTap: (){  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PregWrokout()));},
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 40, top: 20),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/pregwork.png'),
                                      radius: 45,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 50,
                                    //   width: double.infinity,

                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(10, 0, 29, 0),
                                      child: Center(
                                        child: Expanded(
                                          child: Text(
                                            "Pre-Pregnancy\n      Workout",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                            //  maxLines: null,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                //  color: Color.fromRGBO(193, 188, 188, 1),
                                //  offset: const Offset(0, 12),
                                //  blurRadius: 13,
                                // spreadRadius: 3, //New
                                )
                          ],
                        ),
                      ),
                      Container(
                        height: 170,
                        width: 170,
                        margin: EdgeInsets.only(left: 15, top: 10),

                        // color: Colors.blue,

                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => massage_pg()));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 40, top: 20),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/babyex.png'),
                                      radius: 45,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  //   width: double.infinity,

                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 40, 0),
                                    child: Center(
                                      child: Expanded(
                                        child: Text(
                                          "Massage for\n        Baby",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                          //  maxLines: null,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                //  color: Color.fromRGBO(193, 188, 188, 1),
                                //  offset: const Offset(0, 12),
                                //  blurRadius: 13,
                                // spreadRadius: 3, //New
                                )
                          ],
                        ),
                      ),
                      Container(
                        height: 170,
                        width: 170,
                        margin: EdgeInsets.only(left: 15, top: 10),

                        // color: Colors.blue,

                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 40, top: 20),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/todaytip.png'),
                                    radius: 45,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  //   width: double.infinity,

                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 40, 0),
                                    child: Center(
                                      child: Expanded(
                                        child: Text(
                                          "Additional\nInformation",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                          //  maxLines: null,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                // color: Color.fromRGBO(193, 188, 188, 1),
                                // offset: const Offset(0, 12),
                                // blurRadius: 13,
                                //spreadRadius: 3, //New
                                )
                          ],
                        ),
                      ),
                      Container(
                        height: 170,
                        width: 170,
                        margin: EdgeInsets.only(left: 15, top: 10),

                        // color: Colors.blue,

                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 40, top: 20),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/diet.png'),
                                    radius: 45,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  //   width: double.infinity,

                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 70, 0),
                                    child: Center(
                                      child: Expanded(
                                        child: Text(
                                          "Diet",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                          //  maxLines: null,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                //color: Color.fromRGBO(193, 188, 188, 1),
                                //offset: const Offset(0, 12),
                                //blurRadius: 13,
                                //spreadRadius: 3, //New
                                )
                          ],
                        ),
                      ),
                    ],
                  ),

                  // listview.builder(horizontal end)
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ), // column
          ),
          // listview.builder(vertical end)
        ),
        bottomNavigationBar: BottomNavBar(0),
      ),
    );
  }
}
