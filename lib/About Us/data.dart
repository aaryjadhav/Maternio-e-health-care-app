import 'package:url_launcher/url_launcher.dart';

class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
      this.position, {
        required this.name,
        required this.iconImage,
        required this.description,
        required this.images,
      });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,

      name: 'Aary\nJadhav',
      iconImage: 'assets/aarypp.png',
      description:
      "\u2022 Name:- Aary Vijay Jadhav\n\u2022 Group No:-3\n\u2022 Class:- TYCO-1\n\u2022 Roll No:- 1816\n\u2022 College:- Bhausaheb Vartak Polytechnic, Vasai(W), Palghar- 401202",
      images: [
        'https://i.postimg.cc/VkhRCD6T/Untitled-design-13.png',
        'https://i.postimg.cc/y8DGtJ3M/Untitled-design-19.png',
        'https://i.postimg.cc/W38ShjJm/Untitled-design-20.png',
      ]),
  PlanetInfo(2,
      name: 'Devang Dhadaniya',
      iconImage: 'assets/devangpp.png',
      description:
      "\u2022 Name:- Devang Rajnikant Dhadaniya\n\u2022 Group No:-3\n\u2022 Class:- TYCO-1\n\u2022 Roll No:- 1820\n\u2022 College:- Bhausaheb Vartak Polytechnic, Vasai(W), Palghar- 401202",
      images: [
        'https://i.postimg.cc/dQXrnLvk/Untitled-design-14.png',
        'https://i.postimg.cc/j52n4rF4/Untitled-design-15.png',
      ]),
];
