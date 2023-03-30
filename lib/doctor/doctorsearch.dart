import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/doctor/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'doctor_profile.dart';
import '../Main screens/navbar.dart';
import 'doctr_profile_for_mother.dart';

class doctorsearch extends StatefulWidget {
  doctorsearch({Key? key,}) : super(key: key);


  @override
  State<doctorsearch> createState() => _doctorsearchState();
}

class _doctorsearchState extends State<doctorsearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: IconButton(
            iconSize: 30,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body:Column(
    children: [
    SizedBox(height: 10,),
    Container(
    child: Center(
    child: Text(
    'Doctor',
    style: GoogleFonts.poppins(
    fontWeight: FontWeight.w500, fontSize: 25),
    ),
    ),
    ),
    SizedBox(height: 10,),
    Expanded(
    flex: 9,
    child: ListView(
    scrollDirection: Axis.vertical,
    children: [
    Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: Colors.deepPurpleAccent,
    boxShadow: [
    BoxShadow(blurRadius: 5),
    ]),
    child: Row(
    children: [
    //Padding(padding: EdgeInsets.only(left: 20)),
    Container(
    margin:
    EdgeInsets.only(left: 10, bottom: 50, top: 20),
    height: 100,
    width: 90,
    // color: Colors.blue,
    child: CircleAvatar(
    backgroundColor: Colors.black,
    radius: 80,
    // child: CircleAvatar(
    child: Image.asset('assets/doctorpp.png'),
    //   radius: 22,
    // ),
    ),
    //
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Container(
    margin: EdgeInsets.only(top: 25, left: 10),
    child: Text("Dr. Zain Blossom",
    style: GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.white)),
    ),
    ],
    ),
    Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    height: 20,
    margin: EdgeInsets.only(bottom: 11, top: 10),
    padding: EdgeInsets.only(left: 10),
    child: Text(
    ' Gynecologist, Mumbai ',
    style: TextStyle(
    fontSize: 18,
    color: Colors.white,
    ),
    ),
    ),

    //
    //
    ],
    ),
    //
    Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
    child: Row(
    //crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Container(
    height: 50,
    // color: Colors.white,
    margin: EdgeInsets.only(top: 14, right: 15),
    padding: EdgeInsets.only(left: 15),
    child: Text(
    ' Show Profile ',
    style: TextStyle(
    fontSize: 20,
    color: Colors.white,
    ),
    ),
    ),

    //
    //

    Container(
    height: 45,

    margin:
    EdgeInsets.only(bottom: 10, right: 15),
    child: ElevatedButton(
    child: Icon(
    Icons.arrow_circle_right_outlined,
    size: 30,
    ),
    style: ElevatedButton.styleFrom(
    primary:
    Colors.deepPurpleAccent.shade700,
    elevation: 0,
    ),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => doctor_profile_message()));
    },
    ),
    // ),
    ),
    ],
    ),
    ),
    //
    ],
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: Colors.deepPurpleAccent,
    boxShadow: [
    BoxShadow(blurRadius: 5),
    ]),
    child: Row(
    children: [
    //Padding(padding: EdgeInsets.only(left: 20)),
    Container(
    margin:
    EdgeInsets.only(left: 10, bottom: 50, top: 20),
    height: 100,
    width: 90,
    // color: Colors.blue,
    child: CircleAvatar(
    backgroundColor: Colors.black,
    radius: 80,
    // child: CircleAvatar(
    child: Image.asset('assets/doctorpp.png'),
    //   radius: 22,
    // ),
    ),
    //
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Container(
    margin: EdgeInsets.only(top: 25, left: 10),
    child: Text("Dr. Zain Blossom",
    style: GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.white)),
    ),
    ],
    ),
    Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    height: 20,
    margin: EdgeInsets.only(bottom: 11, top: 10),
    padding: EdgeInsets.only(left: 10),
    child: Text(
    ' Gynecologist, Mumbai ',
    style: TextStyle(
    fontSize: 18,
    color: Colors.white,
    ),
    ),
    ),

    //
    //
    ],
    ),
    //
    Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
    child: Row(
    //crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Container(
    height: 50,
    // color: Colors.white,
    margin: EdgeInsets.only(top: 14, right: 15),
    padding: EdgeInsets.only(left: 15),
    child: Text(
    ' Show Profile ',
    style: TextStyle(
    fontSize: 20,
    color: Colors.white,
    ),
    ),
    ),

    //
    //

    Container(
    height: 45,

    margin:
    EdgeInsets.only(bottom: 10, right: 15),
    child: ElevatedButton(
    child: Icon(
    Icons.arrow_circle_right_outlined,
    size: 30,
    ),
    style: ElevatedButton.styleFrom(
    primary:
    Colors.deepPurpleAccent.shade700,
    elevation: 0,
    ),
    onPressed: () {},
    ),
    // ),
    ),
    ],
    ),
    ),
    //
    ],
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: Colors.deepPurpleAccent,
    boxShadow: [
    BoxShadow(blurRadius: 5),
    ]),
    child: Row(
    children: [
    //Padding(padding: EdgeInsets.only(left: 20)),
    Container(
    margin:
    EdgeInsets.only(left: 10, bottom: 50, top: 20),
    height: 100,
    width: 90,
    // color: Colors.blue,
    child: CircleAvatar(
    backgroundColor: Colors.black,
    radius: 80,
    // child: CircleAvatar(
    child: Image.asset('assets/doctorpp.png'),
    //   radius: 22,
    // ),
    ),
    //
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Container(
    margin: EdgeInsets.only(top: 25, left: 10),
    child: Text("Dr. Zain Blossom",
    style: GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.white)),
    ),
    ],
    ),
    Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    height: 20,
    margin: EdgeInsets.only(bottom: 11, top: 10),
    padding: EdgeInsets.only(left: 10),
    child: Text(
    ' Gynecologist, Mumbai ',
    style: TextStyle(
    fontSize: 18,
    color: Colors.white,
    ),
    ),
    ),

    //
    //
    ],
    ),
    //
    Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
    child: Row(
    //crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Container(
    height: 50,
    // color: Colors.white,
    margin: EdgeInsets.only(top: 14, right: 15),
    padding: EdgeInsets.only(left: 15),
    child: Text(
    ' Show Profile ',
    style: TextStyle(
    fontSize: 20,
    color: Colors.white,
    ),
    ),
    ),

    //
    //

    Container(
    height: 45,

    margin:
    EdgeInsets.only(bottom: 10, right: 15),
    child: ElevatedButton(
    child: Icon(
    Icons.arrow_circle_right_outlined,
    size: 30,
    ),
    style: ElevatedButton.styleFrom(
    primary:
    Colors.deepPurpleAccent.shade700,
    elevation: 0,
    ),
    onPressed: () {},
    ),
    // ),
    ),
    ],
    ),
    ),
    //
    ],
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: Colors.deepPurpleAccent,
    boxShadow: [
    BoxShadow(blurRadius: 5),
    ]),
    child: Row(
    children: [
    //Padding(padding: EdgeInsets.only(left: 20)),
    Container(
    margin:
    EdgeInsets.only(left: 10, bottom: 50, top: 20),
    height: 100,
    width: 90,
    // color: Colors.blue,
    child: CircleAvatar(
    backgroundColor: Colors.black,
    radius: 80,
    // child: CircleAvatar(
    child: Image.asset('assets/doctorpp.png'),
    //   radius: 22,
    // ),
    ),
    //
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Container(
    margin: EdgeInsets.only(top: 25, left: 10),
    child: Text("Dr. Zain Blossom",
    style: GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.white)),
    ),
    ],
    ),
    Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    height: 20,
    margin: EdgeInsets.only(bottom: 11, top: 10),
    padding: EdgeInsets.only(left: 10),
    child: Text(
    ' Gynecologist, Mumbai ',
    style: TextStyle(
    fontSize: 18,
    color: Colors.white,
    ),
    ),
    ),

    //
    //
    ],
    ),
    //
    Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
    child: Row(
    //crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Container(
    height: 50,
    // color: Colors.white,
    margin: EdgeInsets.only(top: 14, right: 15),
    padding: EdgeInsets.only(left: 15),
    child: Text(
    ' Show Profile ',
    style: TextStyle(
    fontSize: 20,
    color: Colors.white,
    ),
    ),
    ),

    //
    //

    Container(
    height: 45,

    margin:
    EdgeInsets.only(bottom: 10, right: 15),
    child: ElevatedButton(
    child: Icon(
    Icons.arrow_circle_right_outlined,
    size: 30,
    ),
    style: ElevatedButton.styleFrom(
    primary:
    Colors.deepPurpleAccent.shade700,
    elevation: 0,
    ),
    onPressed: () {},
    ),
    // ),
    ),
    ],
    ),
    ),
    //
    ],
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: Colors.deepPurpleAccent,
    boxShadow: [
    BoxShadow(blurRadius: 5),
    ]),
    child: Row(
    children: [
    //Padding(padding: EdgeInsets.only(left: 20)),
    Container(
    margin:
    EdgeInsets.only(left: 10, bottom: 50, top: 20),
    height: 100,
    width: 90,
    // color: Colors.blue,
    child: CircleAvatar(
    backgroundColor: Colors.black,
    radius: 80,
    // child: CircleAvatar(
    child: Image.asset('assets/doctorpp.png'),
    //   radius: 22,
    // ),
    ),
    //
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Container(
    margin: EdgeInsets.only(top: 25, left: 10),
    child: Text("Dr. Zain Blossom",
    style: GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.white)),
    ),
    ],
    ),
    Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    height: 20,
    margin: EdgeInsets.only(bottom: 11, top: 10),
    padding: EdgeInsets.only(left: 10),
    child: Text(
    ' Gynecologist, Mumbai ',
    style: TextStyle(
    fontSize: 18,
    color: Colors.white,
    ),
    ),
    ),

    //
    //
    ],
    ),
    //
    Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
    child: Row(
    //crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Container(
    height: 50,
    // color: Colors.white,
    margin: EdgeInsets.only(top: 14, right: 15),
    padding: EdgeInsets.only(left: 15),
    child: Text(
    ' Show Profile ',
    style: TextStyle(
    fontSize: 20,
    color: Colors.white,
    ),
    ),
    ),

    //
    //

    Container(
    height: 45,

    margin:
    EdgeInsets.only(bottom: 10, right: 15),
    child: ElevatedButton(
    child: Icon(
    Icons.arrow_circle_right_outlined,
    size: 30,
    ),
    style: ElevatedButton.styleFrom(
    primary:
    Colors.deepPurpleAccent.shade700,
    elevation: 0,
    ),
    onPressed: () {},
    ),
    // ),
    ),
    ],
    ),
    ),
    //
    ],
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    )
    ],
    ),
    );
  }
}

