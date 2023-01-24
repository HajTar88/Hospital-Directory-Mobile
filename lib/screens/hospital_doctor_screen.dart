// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:register/screens/doctor_screen.dart';
import 'hospitaldetailes_screen.dart';



class HospitalDoctorScreen extends StatefulWidget {
   static const String screenRoute = 'hospital_doctor_screen'; 
  const HospitalDoctorScreen({Key? key}) : super(key: key);

  @override
  State<HospitalDoctorScreen> createState() => _HospitalDoctorScreenState();
}

class _HospitalDoctorScreenState extends State<HospitalDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Column(
          children: [
            SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 30,backgroundImage: AssetImage("images/ba.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
                    SizedBox(width: 200,),
                    CircleAvatar(radius: 30,backgroundImage: AssetImage("images/rc.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
                  ],
                ),
            SizedBox(height: 40,),
                FlatButton(              onPressed: (){Navigator.of(context).pushNamed(DoctorScreen.screenRoute);
              }, child: 
              Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Column(  
                    mainAxisSize: MainAxisSize.min,  
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[  
                      const ListTile(  
                        minVerticalPadding: 25,
                        leading: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text('الحاج المختار'),
                        ),
                        title: Align(alignment: Alignment.center, child: Text("استشاري اطفال\n دكتوراة جراحة قلب")),
                        trailing:CircleAvatar(radius: 30, backgroundImage: AssetImage("images/Hg.jpg"),),  
                      ),  
                    ],  
                  ),  
                )
                ),
                            SizedBox(height: 10,),
                FlatButton(              onPressed: (){              }, child: 
              Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Column(  
                    mainAxisSize: MainAxisSize.min,  
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[  
                      const ListTile(  
                        minVerticalPadding: 25,
                        leading: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text('الحاج المختار'),
                        ),
                        title: Align(alignment: Alignment.center, child: Text("استشاري اطفال\n دكتوراة جراحة قلب")),
                        trailing:CircleAvatar(radius: 30, backgroundImage: AssetImage("images/Hg.jpg"),),  
                      ),  
                    ],  
                  ),  
                )
                ),
                                            SizedBox(height: 10,),
                FlatButton(              onPressed: (){
              }, child: 
              Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Column(  
                    mainAxisSize: MainAxisSize.min,  
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[  
                      const ListTile(  
                        minVerticalPadding: 25,
                        leading: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text('الحاج المختار'),
                        ),
                        title: Align(alignment: Alignment.center, child: Text("استشاري اطفال\n دكتوراة جراحة قلب")),
                        trailing:CircleAvatar(radius: 30, backgroundImage: AssetImage("images/Hg.jpg"),),  
                      ),  
                    ],  
                  ),  
                )
                ),
        ]),
    );
  }
}