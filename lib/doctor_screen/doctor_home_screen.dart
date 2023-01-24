// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';

class DoctorHomeScreen extends StatefulWidget {
    static const String screenRoute = 'doctor_home_screen';
  const DoctorHomeScreen({Key? key}) : super(key: key);

  @override
  State<DoctorHomeScreen> createState() => _DoctorHomeScreenState();
}

class _DoctorHomeScreenState extends State<DoctorHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 50,backgroundImage: const AssetImage("images/Hg.jpg"), child: FlatButton(onPressed: (){}, child: const Text(""),)),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text("د.الحاج المختار",
            style: const TextStyle(
              fontSize: 30,
            ),
            ),
            
          ],),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text(  'الاربعاء 10:30 - 14:30'"\n"'الاحد    10:30 - 14:30',
            style: const TextStyle(
              fontSize: 30,
            ),
            
            )
          ],),
        ]
      )
    );
  }
}