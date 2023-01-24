// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_new

import 'package:flutter/material.dart';
import 'package:register/screens/login_screen.dart';
import 'package:register/screens/splash_screen.dart';
class RegistrationScreen extends StatefulWidget {
  static const String screenRoute = 'registration_screen';
  const RegistrationScreen({Key? key}) : super(key: key);

  @override 
    State<StatefulWidget> createState() => InitState();
}
  class InitState extends State<RegistrationScreen> {
    @override
    Widget build(BuildContext context){
      return InitWidget();
    }
Widget InitWidget(){
return Scaffold(
  body: SingleChildScrollView(
    child: Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
            color: Color.fromARGB(255, 94, 104, 255),
            gradient: LinearGradient(
              colors: [(Color.fromARGB(255, 94, 104, 255)), (Color.fromARGB(255, 94, 104, 255))],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset("images/DIRECTORY LOdGO-02.png"),
                  width: 200,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.bottomRight,

                )
              ],
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
              icon: Icon(
                Icons.person,
                color:Color.fromARGB(255, 94, 104, 255),
              ),
              hintText: "الاسم",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 30 ),
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
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color:Color.fromARGB(255, 94, 104, 255),
              ),
              hintText: "البريد الالكتروني",
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
              icon: Icon(
                Icons.vpn_key,
                color:Color.fromARGB(255, 94, 104, 255),
              ),
              hintText: "كلمة السر",
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
              icon: Icon(
                Icons.vpn_key,
                color:Color.fromARGB(255, 94, 104, 255),
              ),
              hintText: "تاكيد كلمة السر",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
           margin: EdgeInsets.only(left: 20, right: 20, top: 30),
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
            child: MaterialButton(onPressed: () {Navigator.pushReplacementNamed(context, LoginScreen.screenRoute);},
            child: Text("أنشاء حساب",
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800
            ),
            ),
            )
        ),
      ],
    ),
  ),
);
}
}