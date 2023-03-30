import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Main screens/navbar.dart';

void main() {
  runApp(baby_info());
}

class baby_info extends StatefulWidget {
  @override
  State<baby_info>createState() => _baby_infoState();
}

class _baby_infoState extends State<baby_info>{
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
                      "Baby’s Growth & Develpoment",
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
                        backgroundImage: AssetImage('assets/babypp.png'),
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
                                  "Infants (0-1 year of age)",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(fontSize: 18),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Following are some things you, as a parent, can do to help your baby during this time: \n \u2022 Talk to your baby. She will find your voice calming. \n \u2022 Answer when your baby makes sounds by repeating the sounds and adding words. This will help him learn to use language. \n \u2022 Spend time cuddling and holding your baby. This will help him feel cared for and secure. \n \u2022 Make sure you always put your baby to sleep on her back to prevent sudden infant death syndrome (commonly known as SIDS). \n \u2022 Protect your baby and family from secondhand smoke. Do not allow anyone to smoke in your home. \n \u2022 Vaccines (shots) are important to protect your child’s health and safety. \n \u2022Breast milk meets all your baby’s needs for about the first 6 months of life. Between 6 and 12 months of age, your baby will learn about new tastes and textures with healthy solid food, but breast milk should still be an important source of nutrition. \n \u2022 Feed your baby slowly and patiently, encourage your baby to try new tastes but without force, and watch closely to see if he’s still hungry. \n \u2022 Make sure your child gets the recommended amount of sleep each night: For infants 4-12 months, 12–16 hours per 24 hours (including naps)",
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
    )
    );
  }
}
