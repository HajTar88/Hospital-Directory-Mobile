// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:register/screens/home_screen.dart';
import 'package:register/screens/tabs_screen.dart';
import 'package:register/screens/transfer_screen.dart';

class SelectionScreen extends StatelessWidget {
  static const String screenRoute = 'selection_screen';
  const SelectionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align( child: CircleAvatar(radius: 50,backgroundImage: AssetImage("images/ho.png"), child: FlatButton(onPressed: (){Navigator.of(context).pushReplacementNamed(TabsScreen.screenRoute);}, child: Text(""),))),
                  SizedBox(width: 65,),
                  CircleAvatar(radius: 50,backgroundImage: AssetImage("images/tr.png"), child: FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  TransferScreen()));}, child: Text(""),)),
                ],
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 0,),
                      FlatButton(onPressed: (){Navigator.pushReplacementNamed(context, TabsScreen.screenRoute);}, child: Text("المستشفيات ")),
                      SizedBox(width: 65,),
                      FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  TransferScreen()));}, child: Text("طلب تحويل")),
                  ],
                ),
                        ],
          ),
        ),
      ),
    );
  }
}
