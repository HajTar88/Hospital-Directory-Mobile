// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DoctorScheduleScreen extends StatefulWidget {
  const DoctorScheduleScreen({Key? key}) : super(key: key);

  @override
  State<DoctorScheduleScreen> createState() => _DoctorScheduleScreenState();
}

class _DoctorScheduleScreenState extends State<DoctorScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 200, 20, 0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: ListTile(
               trailing : TextButton(onPressed: (){
                 showDialog(context: context, builder: (context){
                   return AlertDialog(
                     backgroundColor: Colors.white,
                     actions: [
                       FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                     ],
                     title: Text("حجز"),
                     content:Text("تم الحذف بنجاح"),
                   );
                 });
               },
               child:Icon(Icons.one_x_mobiledata),
               ),
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        actions: [
                          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("الغاء"))
                        ],
                        title: Text("حجز"),
                        content:Text(""),
                      );
                    });
                  },
                  child:Icon(Icons.ramp_right),
                  ),
                ),
                leading: Text("حجز 1"),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: ListTile(
               trailing : TextButton(onPressed: (){
                 showDialog(context: context, builder: (context){
                   return AlertDialog(
                     backgroundColor: Colors.white,
                     actions: [
                       FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                     ],
                     title: Text("حجز"),
                     content:Text("تم الحذف بنجاح"),
                   );
                 });
               },
               child:Icon(Icons.delete),
               ),
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        actions: [
                          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("الغاء"))
                        ],
                        title: Text("حجز"),
                        content:Text(""),
                      );
                    });
                  },
                  child:Icon(Icons.edit),
                  ),
                ),
                leading: Text("حجز 1"),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: ListTile(
               trailing : TextButton(onPressed: (){
                 showDialog(context: context, builder: (context){
                   return AlertDialog(
                     backgroundColor: Colors.white,
                     actions: [
                       FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                     ],
                     title: Text("حجز"),
                     content:Text("تم الحذف بنجاح"),
                   );
                 });
               },
               child:Icon(Icons.delete),
               ),
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        actions: [
                          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("الغاء"))
                        ],
                        title: Text("حجز"),
                        content:Text(""),
                      );
                    });
                  },
                  child:Icon(Icons.edit),
                  ),
                ),
                leading: Text("حجز 1"),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: ListTile(
               trailing : TextButton(onPressed: (){
                 showDialog(context: context, builder: (context){
                   return AlertDialog(
                     backgroundColor: Colors.white,
                     actions: [
                       FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                     ],
                     title: Text("حجز"),
                     content:Text("تم الحذف بنجاح"),
                   );
                 });
               },
               child:Icon(Icons.delete),
               ),
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        actions: [
                          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("الغاء"))
                        ],
                        title: Text("حجز"),
                        content:Text(""),
                      );
                    });
                  },
                  child:Icon(Icons.edit),
                  ),
                ),
                leading: Text("حجز 1"),
              ),
            ),
          ],
        ),
      )
    );
  }
}