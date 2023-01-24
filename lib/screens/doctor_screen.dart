// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:register/screens/appointment_screen.dart';
import 'package:register/screens/consultation_screen.dart';


class DoctorScreen extends StatelessWidget {
  static const String screenRoute = 'doctor_screen';
  const DoctorScreen({Key? key}) : super(key: key);
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
                body: Column(children: [
          const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 60,backgroundImage: const AssetImage("images/Hg.jpg"), child: FlatButton(onPressed: (){}, child: const Text(""),)),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Lorem Ipsum is simply dummy of\n printing and typesetting industry. \ndummy text ever since the 1500s,")
                    ],
                  ),
                  const SizedBox(height: 70,),
                          Row(
          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  ConsultationScreen()));}, child: Image.asset('images/cons.png', width: 100, ),),
                    SizedBox(width: 60,),
                    FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  AppointmentScreen()));}, child: Image.asset('images/apo.png', width: 100, ),),                  
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  ConsultationScreen()));}, child: const Text("طلب استشارة")),
                const SizedBox(width: 100,),
                FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  AppointmentScreen()));}, child: const Text("حجز موعد")),
              ],
            ),
                ])
    ));}}