// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:register/screens/home_screen.dart';
import 'package:register/screens/tabs_screen.dart';

class CapabilitiesScreen extends StatelessWidget {
  static const String screenRoute = 'capabilities_screen';
  const CapabilitiesScreen({Key? key}) : super(key: key);
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
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               CircleAvatar(radius: 30,backgroundImage: AssetImage("images/rc.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
            ],
          ),
          SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("العنابر"),
                SizedBox(width: 150,),
                Text("غرف خاصة"),
              ],
            ),
          SizedBox(height: 10,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 60,backgroundImage: AssetImage("images/wa.png"), child: FlatButton(onPressed: (){Navigator.of(context).pushReplacementNamed(TabsScreen.screenRoute);}, child: Text(""),)),
                    SizedBox(width: 80,),
                    CircleAvatar(radius: 60,backgroundImage: AssetImage("images/pr.png"), child: FlatButton(onPressed: (){Navigator.of(context).pushReplacementNamed(TabsScreen.screenRoute);}, child: Text(""),)),
                  ],
                ),
     SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("السعة الكلية"),
                SizedBox(width: 5,),
                Text("100"),
                SizedBox(width: 100,),
                Text("السعة الكلية"),
                SizedBox(width: 5,),
                Text("100"),
              ],
            ),
     SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("المتوفر"),
                SizedBox(width: 5,),
                Text("20"),
                SizedBox(width: 135,),
                Text("المتوفر"),
                SizedBox(width: 5,),
                Text("10"),
              ],
            ),
          SizedBox(height: 40,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("عناية مركزة"),
                SizedBox(width: 135,),
                Text("حضانة اطفال"),
              ],
            ),
     SizedBox(height: 5,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 60,backgroundImage: AssetImage("images/icu.png"), child: FlatButton(onPressed: (){Navigator.of(context).pushReplacementNamed(TabsScreen.screenRoute);}, child: Text(""),)),
                    SizedBox(width: 80,),
                    CircleAvatar(radius: 60,backgroundImage: AssetImage("images/nr.png"), child: FlatButton(onPressed: (){Navigator.of(context).pushReplacementNamed(TabsScreen.screenRoute);}, child: Text(""),)),
                  ],
                ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("السعة الكلية"),
                SizedBox(width: 5,),
                Text("100"),
                SizedBox(width: 100,),
                Text("       "),
                Text("لايوجد"),
              ],
            ),
     SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("المتوفر"),
                SizedBox(width: 5,),
                Text("20"),
                SizedBox(width: 100,),
                Text("                          ")
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
