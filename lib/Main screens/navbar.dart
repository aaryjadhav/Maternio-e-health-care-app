import 'package:flutter/material.dart';
import 'package:maternio_1/Main%20screens/notifications.dart';


import '../Ambulance/ambulance.dart';
import '../Babysitter/babysittersearch.dart';
import '../doctor/doctorsearch.dart';
import '../doctor/profile.dart';
import 'home.dart';


class BottomNavBar extends StatelessWidget {
  int currentindexvalue = 0;
  BottomNavBar(this.currentindexvalue);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.black87,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          // primaryColor: Colors.red,
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.deepPurpleAccent))),
      child: BottomNavigationBar(
        backgroundColor: Colors.black87,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emergency_outlined),
            label: 'Ambulance',

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        currentIndex: currentindexvalue,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.white,
        onTap: (int index) {
          currentindexvalue = index;
          if (index == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          }
          if (index == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ambulance()));
          }

          if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  doctorsearch()));
          }
          if (index == 3) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  Profile()));
          }
        },
      ),
    );
  }
}