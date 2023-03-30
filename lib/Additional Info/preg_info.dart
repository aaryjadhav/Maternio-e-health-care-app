
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Main screens/navbar.dart';

void main() {
  runApp(preg_info());
}

class preg_info extends StatefulWidget {
  @override
  State<preg_info>createState() => _preg_infoState();
}

class _preg_infoState extends State<preg_info> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Data',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 20),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              children: [
                Container(
                  child: Column(children: [
                    Text(
                      "Tips for Pregnant Woman",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage: AssetImage('assets/pregnantpp.png'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 350,
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          border: Border.all(width: 7, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurpleAccent.shade100),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Text(
                                  " \u2022 Eat breakfast every day. \n \u2022 Eat foods high in fiber, and drink fluids (particularly water) to avoid constipation. \n \u2022 Avoid alcohol, raw or undercooked fish, fish high in mercury, undercooked meat and poultry, and soft cheeses. \n \u2022 Do moderate-intensity aerobic activity at least 150 minutes a week during your pregnancy. \n \u2022 Choose moderate activities that aren’t likely to hurt you, such as walking or water or chair aerobics. \n \u2022 Stop exercising if you feel dizzy, short of breath, tired, or sick to your stomach. \n \u2022 Consuming healthy foods and low-calorie beverages, particularly water, and the appropriate number of calories may help you and your baby gain the proper amount of weight.",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Text(
                                  "Note :- The data provided may not be accurate so please confront to doctor once",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(fontSize: 18),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
          bottomNavigationBar: BottomNavBar(2),
    ));
  }
}
