import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';



class TransferScreen extends StatelessWidget {
  static const String screenRoute = 'transfer_screen';
  const TransferScreen({Key? key}) : super(key: key);
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                          Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 10 ),
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
              hintText: "المستشفي الحالي",
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
              hintText: "المستشفي المراد التحويل اليها",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
                   Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20 ),
          child: TextField(
          decoration: InputDecoration(
          hintText: 'الاسباب',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
          enabledBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(32.0)),),
          contentPadding: EdgeInsets.symmetric(vertical: 50.0,horizontal:30.0),
          ),
          ),
          ),

                        Container(
           margin: EdgeInsets.only(left: 20, right: 20, top: 70),
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
            child: TextButton(onPressed: () {},
            child: Text("ارسال",
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800
            ),
            ),
            )
        ),
        ]
        ),
        )
        );
  }}