import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/Baby/baby_massage.dart';
import 'package:maternio_1/Main%20screens/Drawer.dart';
import 'package:maternio_1/Main%20screens/profile_selection.dart';
import 'package:maternio_1/Pregnant%20Women/pregworkoutenglish.dart';
import 'package:maternio_1/Pregnant%20Women/pregworkouthindi.dart';
import 'package:maternio_1/Pregnant%20Women/ytpage.dart';
import '../Main screens/navbar.dart';
import '../Pregnant Women/pregnantmycare.dart';
import '../doctor/doctor_profile.dart';
import '../doctor/profile.dart';


class PregWrokout extends StatefulWidget {
  PregWrokout({Key? key}) : super(key: key);

  @override
  State<PregWrokout> createState() => _PregWrokoutState();
}

class _PregWrokoutState extends State<PregWrokout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.black12,
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
                          " ENGLISH 'अंग्रेज़ी'",
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

                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  //   width: double.infinity,
                                  margin: EdgeInsets.only(top: 40, left: 15),

                                  child: Expanded(
                                    child: Text(
                                      " ENGLISH",
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
                                        const EdgeInsets.fromLTRB(75, 15, 0, 0),
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
                                                   PregExcercisePageEng()));
                                        // handle profile icon pres
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                          " HINDI 'हिंदी'",
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

                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  //   width: double.infinity,
                                  margin: EdgeInsets.only(top: 40, left: 15),

                                  child: Expanded(
                                    child: Text(
                                      " HINDI",
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
                                    const EdgeInsets.fromLTRB(118, 15, 0, 0),
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
                                                    PregExcercisePageHindi()));
                                        // handle profile icon pres
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                SizedBox(
                  height: 50,),
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
