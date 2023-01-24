import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

final  List<String> genderItems = [
  'الاربعاء 10:30 - 14:30',
  'الاحد 10:30 - 14:30',
];

class AppointmentScreen extends StatelessWidget {
  static const String screenRoute = 'appointment_screen';
  const AppointmentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
                      appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
          ),
        title:  Align(
        alignment: Alignment.centerLeft,
        child: Image.asset("images/DIRECTORY LOdGO-02.png",width: 70,)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                          Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 50 ),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [BoxShadow(
              blurRadius: 50,
              color: Color(0xffEEEEEE)
            )
            ]
          ),
          alignment: Alignment.center,
          child: TextField(
            obscureText: true,
            cursorColor: Color.fromARGB(255, 93, 104, 255),
            decoration: InputDecoration(
              hintText: "الاسم",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
          Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20 ),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [BoxShadow(
              blurRadius: 50,
              color: Color(0xffEEEEEE)
            )
            ]
          ),
          alignment: Alignment.center,
          child: TextField(
            obscureText: true,
            cursorColor: Color.fromARGB(255, 93, 104, 255),
            decoration: InputDecoration(
              hintText: "رقم الهاتف",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
           margin: EdgeInsets.only(left: 20, right: 20, top: 30),
           child: DropdownButtonFormField2(
              decoration: InputDecoration(
                //Add isDense true and zero Padding.
                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                //Add more decoration as you want here
                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
              ),
              isExpanded: true,
              hint: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'اختر التاريخ ',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 30,
              buttonHeight: 60,
              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              items: genderItems.map((item) =>
                      DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                                           .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select gender.';
                }
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
              },
            ),
        ),
                        Container(
           margin: EdgeInsets.only(left: 20, right: 20, top: 90),
            padding: EdgeInsets.only(left: 20, right: 20,),
            alignment: Alignment.center,
            height: 54,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 94, 104, 255),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [BoxShadow(
              blurRadius: 50,
              color: Color(0xffEEEEEE)
            )]
            ),
            child: TextButton(onPressed: () {},
            child: Text("حجز موعد",
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800
            ),
            ),
            )
        ),
        ]
        ),
        )
        );
  }}