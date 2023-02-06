import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
final  List<String> genderItems = [
  'الاربعاء 10:30 - 14:30',
  'الاحد 10:30 - 14:30',
];

class ConsultationScreen extends StatelessWidget {
  static const String screenRoute = 'consultation_screen';
  const ConsultationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController consultationController = TextEditingController();
    void cons(String counseling_text) async {
      try {
        Response response = await post(Uri.parse('http://192.168.43.8:8000/api/consultations'),
        body: {
          'counseling_text' : counseling_text,
        }
        );
        if (response.statusCode == 200) {
          print("Send Successfully");
        } else {
          print("Failed");
        }
      } catch (e) {
        print(e.toString());
      }
    }
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
                      mainAxisAlignment:MainAxisAlignment.center,

          children: [
           Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 80 ),
          child: TextField(
            controller: consultationController,
          decoration: InputDecoration(
          hintText: 'الاستشارة',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
          enabledBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.blueAccent, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(32.0)),),
          contentPadding: EdgeInsets.symmetric(vertical: 50.0,horizontal:30.0),
          ),
          ),
          ),
          Container(
          ),
                        Container(
           margin: EdgeInsets.only(left: 20, right: 20, top: 90),
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
            child: TextButton(onPressed: () {
              cons(consultationController.text.toString());
               Navigator.pop(context);

            },
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