import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:maternio_1/Main%20screens/welcome_screen.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState(){
    super.initState();
    _controller=AnimationController(vsync: this);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.network(
              "https://assets9.lottiefiles.com/packages/lf20_cUG5w8.json",
              controller: _controller , onLoaded: (compos) {
                _controller
              ..duration = compos.duration
              ..forward().then((value) async {
                if (await FirebaseAuth.instance.currentUser != null) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()));
                } else {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                }
              });
          }),
          Center(
              child: Text("MATERNIO",
                  style: GoogleFonts.akshar(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent)))
        ]));
  }
}
