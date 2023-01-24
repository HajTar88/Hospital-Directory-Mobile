import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

final  List<String> genderItems = [
  'الاربعاء 10:30 - 14:30',
  'الاحد 10:30 - 14:30',
];

class ConsultationScreen extends StatelessWidget {
  static const String screenRoute = 'consultation_screen';
  const ConsultationScreen({Key? key}) : super(key: key);
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
                      mainAxisAlignment:MainAxisAlignment.center,

          children: [
           Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 80 ),
          child: TextField(
          decoration: InputDecoration(
          hintText: 'الاستشارة',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
          enabledBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.blueAccent, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(32.0)),),
          contentPadding: EdgeInsets.symmetric(vertical: 50.0,horizontal:30.0),
          ),
          ),
          ),
          Container(
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
            child: Text("ارسال",
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