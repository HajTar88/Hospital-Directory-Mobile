/**.dart */
// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class DoctorNotificationsScreen extends StatefulWidget {
  const DoctorNotificationsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorNotificationsScreen> createState() => _DoctorNotificationsScreenState();
}

class _DoctorNotificationsScreenState extends State<DoctorNotificationsScreen> {
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
                trailing: TextButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      actions: [
                        FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                        FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("الغاء"))
                      ],
                      title: Text("استشارة"),
                      content:Text("استخدم الدواء كل ثمان ساعات"),
                    );
                  });
                },
                child:Icon(Icons.mail_outline),
                ),
                title: Text("استشارة 1"),
              ),
            ),
            SizedBox(height: 10,),
         Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: ListTile(
            trailing: TextButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  backgroundColor: Colors.white,
                  actions: [
                    FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                    FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("الغاء"))
                  ],
                  title: Text("title"),
                  content:Text("content of text"),
                );
              });
            },
            child:Icon(Icons.mail_outline),
            ),
                title: Text("استشارة 2"),
          ),
        ),
            SizedBox(height: 10,),
          Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: ListTile(
            trailing: TextButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  backgroundColor: Colors.white,
                  actions: [
                    FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                    FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("الغاء"))
                  ],
                  title: Text("title"),
                  content:Text("content of text"),
                );
              });
            },
            child:Icon(Icons.mail_outline),
            ),
                title: Text("استشارة 3"),
          ),
        ),
            SizedBox(height: 10,),
         Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: ListTile(
            trailing: TextButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  backgroundColor: Colors.white,
                  actions: [
                    FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("تم")),
                    FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("الغاء"))
                  ],
                  title: Text("title"),
                  content:Text("content of text"),
                );
              });
            },
            child:Icon(Icons.mail_outline),
            ),
                title: Text("استشارة 4"),
          ),
        ),
          ],
        ),
      )
    );
  }
}
/*      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter title",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35.0),
                  borderSide: const BorderSide(),
                ),
                //fillColor: Colors.green
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Enter body",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35.0),
                  borderSide: BorderSide(),
                ),
                //fillColor: Colors.green
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "SEND NOTIFICATION",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  )))),
            )
          ],
        ),
      ),*/ 