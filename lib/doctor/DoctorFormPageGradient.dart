// ignore_for_file: prefer_const_constructors, file_names, prefer_final_fields, use_build_context_synchronously, deprecated_member_use, body_might_complete_normally_nullable, unnecessary_null_comparison, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

import '../Main screens/home.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController _date = TextEditingController();
  TextEditingController timestrt = TextEditingController();
  TextEditingController timeend = TextEditingController();
  bool agree = false;
  final formkey = GlobalKey<FormState>();
  Time _time = Time(hour: 11, minute: 30);

  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  void initState() {
    timestrt.text = "";
    timeend.text = "";
    super.initState();
  }

  String _radioBtnVal = "male";
  _handleChange(String? value) {
    setState(() {
      _radioBtnVal = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              //----------------------------------------------------------------
              Stack(
                children: [
                  ClipPath(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff6100FF), Color(0xff8F00FF)])),
                    ),
                    clipper: CustomClipPath(),
                  ),

                  //Profile Text -----------------------------------------------
                  Padding(
                    padding: const EdgeInsets.only(top: 65),
                    child: Center(
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  //----------------------
                  Padding(
                    padding: const EdgeInsets.only(top: 110),
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 104,
                            height: 104,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(0, 4))
                                ]),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: Color(0xff6DAC67),
                                shape: BoxShape.circle,
                                border:
                                Border.all(width: 2, color: Colors.white),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(Icons.edit,
                                    color: Colors.white, size: 14),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //Name TextField -------------------------------------------------
              SizedBox(height: 5),
              labelText('Name'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Enter Correct Name';
                    } else {
                      return null;
                    }
                  },
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: getDecoration("Name", false),
                ),
              ),

              //Birth Date Field -----------------------------------------------
              labelText("Birth Date"),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  readOnly: true,
                  controller: _date,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Select Your Birth Date';
                    } else {
                      return null;
                    }
                  },
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  onTap: (() async {
                    var date = DateTime.now();
                    DateTime? pickdate = await showDatePicker(
                        context: context,
                        //made so that doctor minimum age should be 20
                        initialDate:
                        DateTime(date.year - 20, date.month, date.day),
                        firstDate:
                        DateTime(date.year - 80, date.month, date.day),
                        lastDate:
                        DateTime(date.year - 20, date.month, date.day),
                        helpText: 'Select Your Birth Date',
                        builder: (context, child) {
                          return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.light(
                                  primary: Color(
                                      0xff6100FF), // header background color
                                  onPrimary: Colors.white, // header text color
                                  onSurface: Colors.black, // body text color
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    primary:
                                    Color(0xff6100FF), // button text color
                                  ),
                                ),
                              ),
                              child: child!);
                        });
                    if (pickdate != null) {
                      setState(() {
                        _date.text = DateFormat('dd-MM-yyyy').format(pickdate);
                      });
                    }
                  }),
                  cursorColor: Colors.black,
                  decoration: getDecoration("Select Your D.O.B", true),
                ),
              ),

              //Gender Radio Button---------------------------------------------
              labelText("Gender"),
              Row(
                children: [
                  SizedBox(width: 30),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        _handleChange('male');
                      },
                      child: Container(
                        height: 46,
                        // width: 150,
                        decoration: BoxDecoration(
                            color: _radioBtnVal == 'male'
                                ? Colors.grey.shade100
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: _radioBtnVal == 'male' ? 1.5 : 1,
                                color: _radioBtnVal == 'male'
                                    ? Colors.black
                                    : Colors.grey.shade600)),
                        child: Row(
                          children: [
                            Radio(
                              activeColor: Colors.black,
                              value: 'male',
                              groupValue: _radioBtnVal,
                              onChanged: _handleChange,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  color: _radioBtnVal == 'male'
                                      ? Colors.black
                                      : Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: GestureDetector(
                        onTap: () {
                          _handleChange('female');
                        },
                        child: Container(
                          height: 46,
                          // width: 150,
                          decoration: BoxDecoration(
                              color: _radioBtnVal == 'female'
                                  ? Colors.grey.shade100
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: _radioBtnVal == 'female' ? 1.5 : 1,
                                  color: _radioBtnVal == 'female'
                                      ? Colors.black
                                      : Colors.grey.shade600)),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: Colors.black,
                                value: 'female',
                                groupValue: _radioBtnVal,
                                onChanged: _handleChange,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    color: _radioBtnVal == 'female'
                                        ? Colors.black
                                        : Colors.grey.shade600),
                              )
                            ],
                          ),
                        )),
                  ),
                  SizedBox(width: 30),
                ],
              ),
              SizedBox(height: 12),

              //Mobile Number TextField ----------------------------------------
              labelText('Mobile Number'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                      return 'Enter Correct Mobile Number';
                    } else {
                      return null;
                    }
                  },
                  // maxLines: lines,
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: getDecoration("xxxxxxxxxx", false),
                ),
              ),

              //Qualification TextField ----------------------------------------
              labelText('Qualification'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Qualification';
                    } else {
                      return null;
                    }
                  },
                  // maxLines: lines,
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: getDecoration("Enter Your Qualification", false),
                ),
              ),

              //Hospital/Clinic Name TextField ---------------------------------
              labelText('Hospital/Clinic Name'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Please Enter Hospital/Clinic Name';
                    } else {
                      return null;
                    }
                  },
                  // maxLines: lines,
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration:
                  getDecoration("Enter Your Hospital/Clinic Name", false),
                ),
              ),

              //Hospital/Clinic Address TextField ------------------------------
              labelText('Hospital/Clinic Address'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  maxLines: 2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Hospital/Clinic Address';
                    } else {
                      return null;
                    }
                  },
                  // maxLines: lines,
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: getDecoration(
                      "Enter Your Hospital/Clinic Address", false),
                ),
              ),

              //City TextField -------------------------------------------------
              labelText('City'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Please Enter Your City Name';
                    } else {
                      return null;
                    }
                  },
                  // maxLines: lines,
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: getDecoration("Enter Your City Name", false),
                ),
              ),

              //Country TextField ----------------------------------------------
              labelText('Country'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Please Enter Your Country';
                    } else {
                      return null;
                    }
                  },
                  // maxLines: lines,
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: getDecoration("Enter Your Country", false),
                ),
              ),

              //Zip/Postal Code TextField --------------------------------------
              labelText('Zip/Postal Code'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]{6}$').hasMatch(value)) {
                      return 'Enter Correct Zip/Postal Code';
                    } else {
                      return null;
                    }
                  },
                  // maxLines: lines,
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: getDecoration("xxxxxx", false),
                ),
              ),

              //Residential Address TextField ----------------------------------
              labelText('Residential Address'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 12),
                child: TextFormField(
                  maxLines: 2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Residential Address';
                    } else {
                      return null;
                    }
                  },
                  // maxLines: lines,
                  enableSuggestions: true,
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration:
                  getDecoration("Enter Your Residential Address", false),
                ),
              ),

              //Working Time TextFeild -----------------------------------------
              labelText("Working Hours"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 30),
                  Flexible(
                    child: TextFormField(
                      controller: timestrt,
                      readOnly: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Select Time';
                        } else {
                          return null;
                        }
                      },
                      onTap: (() async {
                        Navigator.of(context).push(
                          showPicker(
                            context: context,
                            value: _time,
                            is24HrFormat: false,
                            elevation: 1,
                            isInlinePicker: false,
                            onChange: onTimeChanged,
                            accentColor: Color(0xff6100FF),
                            cancelStyle: TextStyle(
                                color: Color(0xff6100FF),
                                fontWeight: FontWeight.w600),
                            okStyle: TextStyle(
                                color: Color(0xff6100FF),
                                fontWeight: FontWeight.w600),
                            minuteInterval: TimePickerInterval.FIVE,
                            onChangeDateTime: (DateTime dateTime) {
                              if (_time != null) {
                                DateTime parsedTime = DateFormat.jm()
                                    .parse(_time.format(context).toString());
                                String formattedTime =
                                DateFormat('HH:mm').format(parsedTime);
                                setState(() {
                                  timestrt.text = formattedTime;
                                });
                              }
                            },
                          ),
                        );
                      }),
                      cursorColor: Colors.black,
                      decoration: getDecoration("Starting", true),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: TextFormField(
                        controller: timeend,
                        readOnly: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Select Time";
                          } else {
                            return null;
                          }
                        },
                        onTap: (() async {
                          Navigator.of(context).push(
                            showPicker(
                              context: context,
                              value: _time,
                              is24HrFormat: false,
                              elevation: 1,
                              isInlinePicker: false,
                              onChange: onTimeChanged,
                              accentColor: Color(0xff6100FF),
                              cancelStyle: TextStyle(
                                  color: Color(0xff6100FF),
                                  fontWeight: FontWeight.w600),
                              okStyle: TextStyle(
                                  color: Color(0xff6100FF),
                                  fontWeight: FontWeight.w600),
                              minuteInterval: TimePickerInterval.FIVE,
                              onChangeDateTime: (DateTime dateTime) {
                                if (_time != null) {
                                  DateTime parsedTime = DateFormat.jm()
                                      .parse(_time.format(context).toString());
                                  String formattedTime =
                                  DateFormat('HH:mm').format(parsedTime);
                                  setState(() {
                                    timeend.text = formattedTime;
                                  });
                                }
                              },
                            ),
                          );
                        }),
                        cursorColor: Colors.black,
                        decoration: getDecoration("Closing", true)),
                  ),
                  SizedBox(width: 30),
                ],
              ),

              //Save Profile Button --------------------------------------------
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 35, 30, 1),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: agree
                          ? () {
                        setState(() {
                          if (formkey.currentState!.validate()) {
                             Navigator.push(
                                 context,
                               MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }
                        });
                      }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff6100FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 10.0,
                      ),
                      child: Center(
                        child: Text(
                          'Save Profile',
                          style: TextStyle(fontSize: 18),
                        ),
                      )),
                ),
              ),

              //T&C Checkbox ---------------------------------------------------
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Transform.scale(
                    scale: 0.8,
                    child: Checkbox(
                      activeColor: Color(0xff6100FF),
                      value: agree,
                      onChanged: (value) {
                        setState(() {
                          agree = value ?? false;
                        });
                      },
                    ),
                  ),
                  Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'I have read and accepted ',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade800)),
                            TextSpan(
                                text: 'Terms & Conditions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Terms & Conditions',
                                              style: TextStyle(
                                                  color: Color(0xff6100FF),
                                                  fontSize: 20),
                                            ),
                                            content: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra mauris vitae bibendum maximus. Nunc vel ligula non urna semper convallis vel nec libero. Mauris ut fringilla risus. Morbi cursus nulla nec ex mattis lobortis. Nulla facilisi. Morbi a libero tellus. Praesent vehicula felis at elit posuere placerat. Morbi vitae molestie justo.',
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontSize: 14),
                                            ),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    'Close',
                                                    style: TextStyle(
                                                        color: Color(0xff6100FF)),
                                                  ))
                                            ],
                                          );
                                        });
                                  },
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff6100FF),
                                    fontWeight: FontWeight.w600))
                          ]))),
                ],
              )
              //----------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }

  //Widget ---------------------------------------------------------------------
  //InputDecoration Text
  InputDecoration getDecoration(String hintText, bool suficon) {
    return InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        // prefix: Padding(padding: EdgeInsets.only(left: 0)),
        isDense: true,
        suffixIcon: suficon == false
            ? null
            : Icon(
          Icons.arrow_drop_down,
          color: Colors.grey.shade600,
          size: 28,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.circular(10)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff6100FF), width: 1.5),
            borderRadius: BorderRadius.circular(10)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.circular(10)),
        hintText: hintText,
        errorStyle: TextStyle(
          color: Color(0xff6100FF),
          fontSize: 12,
          height: 0.6,
        ));
  }

  //Label Text
  Widget labelText(String labeltext) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, bottom: 1),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: labeltext,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              TextSpan(
                  text: '*',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6100FF))),
            ])),
      ),
    );
  }
//----------------------------------------------------------------------------
}

//Semicircle Clippath ----------------------------------------------------------
class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
