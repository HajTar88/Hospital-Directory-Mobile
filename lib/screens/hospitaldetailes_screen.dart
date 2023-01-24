// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:register/screens/capabilities_screen.dart';
import 'package:register/screens/hospital_doctor_screen.dart';
import 'package:register/screens/home_screen.dart';
import 'package:register/screens/tabs_screen.dart';

class Hospitaldetailes_screen extends StatelessWidget {
  static const String screenRoute = 'hospitaldetailes_screen';
  const Hospitaldetailes_screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
          ),
        title:  Align(
        alignment: Alignment.centerLeft,
        child: Image.asset("images/DIRECTORY LOdGO-02.png",width: 70,)),
        ),
        body: Column(children: [
          SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 60,backgroundImage: AssetImage("images/ca.png"), child: FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  CapabilitiesScreen()));// signup
              }, child: Text(""),)),
                    ],
                  ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(onPressed: (){}, child: Text("الامكانيات")),
              ],
            ),
          SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 60,backgroundImage: AssetImage("images/ba.png"), child: FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  HospitalDoctorScreen()));}, child: Text(""),)),
                    SizedBox(width: 65,),
                    CircleAvatar(radius: 60,backgroundImage: AssetImage("images/sc.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(onPressed: (){}, child: Text("اطفال")),
                SizedBox(width: 100,),
                FlatButton(onPressed: (){}, child: Text("عظام")),
              ],
            ),
     SizedBox(height: 50,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 60,backgroundImage: AssetImage("images/htr.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
                    SizedBox(width: 65,),
                    CircleAvatar(radius: 60,backgroundImage: AssetImage("images/te.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
                  ],
                ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(onPressed: (){}, child: Text("قلب")),
                SizedBox(width: 100,),
                FlatButton(onPressed: (){}, child: Text("الاسنان")),
              ],
            ),
        ],)
      ),
    );
  }
}
/*            Row(
              children: [
                CircleAvatar(radius: 50,backgroundImage: AssetImage("images/ho.png"), child: FlatButton(onPressed: (){Navigator.of(context).pushReplacementNamed(TabsScreen.screenRoute);}, child: Text(""),)),
                SizedBox(width: 65,),
                CircleAvatar(radius: 50,backgroundImage: AssetImage("images/tr.png"), child: FlatButton(onPressed: (){Navigator.of(context).pushReplacementNamed(TabsScreen.screenRoute);}, child: Text(""),)),
              ],
            ),*/ 
