import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';


class PregWeekInfo extends StatefulWidget {
  @override
  State<PregWeekInfo> createState() => _PregWeekInfoState();
}

class _PregWeekInfoState extends State<PregWeekInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      initialRoute: "/",

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,size: 25,),
            color: Colors.black,
            onPressed: () {
              // handle back button press
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search,size: 30,),
              color: Colors.black,
              onPressed: () {
                // handle search icon press
              },
            ),

          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(

            child: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text("Diet Plan",style: TextStyle(fontSize: 20,color: Colors.black),),
                    ],
                  ),
                  Divider(
                    height: 20,
                    color: Colors.white,
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 80,
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Text("Combination Infant",style: TextStyle(fontSize: 20,color: Colors.black))
                    ],
                  ),
                  Divider(
                    height: 20,
                    color: Colors.white,
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3.0,
                                  offset: Offset(0.0, 0.0),

                                ),
                              ]
                          ),
                        ),
                        Positioned(
                          top: 10,
                          bottom: 10,
                          right: 10,
                          left: 10,
                          child: Container(
                            height: 399,
                            width: 299,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(97, 0, 250, 0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Container(
                                height: 399,
                                width: 220,
                                child:Column(
                                  children: [
                                    Divider(
                                      height: 10,
                                      color: Color.fromRGBO(97, 0, 250, 0.0),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 240,
                                      child:
                                      Text("1-Month-Old Combination Infant",style: TextStyle(color: Colors.white,fontSize: 15),),
                                    ),
                                    Divider(
                                      height: 5,
                                      color: Color.fromRGBO(97, 0, 250, 0.0),
                                    ),
                                    Container(
                                      height: 299,
                                      width: 230,
                                      child:Column(
                                        children: [
                                          Text(
                                            '\u2022 5 a.m. — 3 ounces of expressed milk',style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),
                                          Text(
                                            '\u2022 8 a.m. — 3 ounces of expressed milk',style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),
                                          Text(
                                            '\u2022 11 a.m. — 3 ounces of expressed milk',style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),
                                          Text(
                                            '2 p.m. — 3 ounces of expressed milk',style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),
                                          Text(
                                            '5 p.m. — 3 ounces of expressed milk',style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),
                                          Text(
                                            '7 p.m. — 3 ounces of expressed milk',style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),
                                          Text(
                                            '9 p.m. — 3 ounces of expressed milk',style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),
                                          Text(
                                            '1 a.m. — 3 ounces of expressed milk',style: TextStyle(color: Colors.white,fontSize: 15),
                                          ),

                                        ],

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.white,
                  ),
                ],//children
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple.shade700,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
            label: "hi"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
            label: "hi"
            )
          ],
        ),
      ),
    );
  }
}
