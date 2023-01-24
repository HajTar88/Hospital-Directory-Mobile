// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:register/doctor_screen/doctor_login_screen.dart';
import 'package:register/screens/login_screen.dart';
import 'package:register/screens/registration_screen.dart';

class MainScreen extends StatelessWidget {
  static const String screenRoute = 'main_screen';
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 50,backgroundImage: AssetImage("images/pa.png"), child: FlatButton(onPressed: (){Navigator.of(context).pushReplacementNamed(LoginScreen.screenRoute);}, child: Text(""),)),
                SizedBox(width: 60,),
                CircleAvatar(radius: 50,backgroundImage: AssetImage("images/do.png"), child: FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  DoctorLoginScreen()));}, child: Text(""),)),
              ],
            ),
              Row(
                children: [
                  SizedBox(width: 15,),
                    FlatButton(onPressed: (){Navigator.pushReplacementNamed(context, LoginScreen.screenRoute);}, child: Text("مريض")),
                    SizedBox(width: 65,),
                    FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  DoctorLoginScreen()));}, child: Text("طبيب")),
                ],
              ),
                      ],
        ),
      ),
    );
  }
}
