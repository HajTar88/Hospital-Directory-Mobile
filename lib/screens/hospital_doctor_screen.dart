// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:register/screens/doctor_screen.dart';
import 'hospitaldetailes_screen.dart';
import 'package:dio/dio.dart';
import 'recipe_card.dart';



class HospitalDoctorScreen extends StatefulWidget {
   static const String screenRoute = 'hospital_doctor_screen'; 
  const HospitalDoctorScreen({Key? key}) : super(key: key);

  @override
  State<HospitalDoctorScreen> createState() => _HospitalDoctorScreenState();
}
  var jsonList;
class _HospitalDoctorScreenState extends State<HospitalDoctorScreen> {

 Future fetchPhotos() async {
  var res = await Dio().get("http://192.168.43.8:9000/api/doctors");
  if (res.statusCode == 200) {
    setState(() {
      jsonList = res.data["cont"] as List;
    });
  } else {
    print(res.statusCode);
  }

// var res = await http.get(Uri.parse("http://192.168.43.8:8000/api/hospitals"));
//   if (res.statusCode == 200) {
//     var obj =jsonDecode(res.body);
//     print(obj[1]['hospital_name']);
// return obj; 
// }
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPhotos();
  }
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
        body: TextButton(
          onPressed: () { Navigator.of(context).pushNamed(DoctorScreen.screenRoute); },
          child: FutureBuilder(
            future: fetchPhotos(),
            builder: (ctx, AsyncSnapshot snapShot) {
                  if (snapShot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
              itemBuilder: ((context, index){
                return RecipeCard(
                  title: jsonList[index]['doctor_name'],
                 cookTime: jsonList[index]['phone'], 
                rating: jsonList[index]['address'], 
                thumbnailUrl: 'images/Hg.jpg');
              }),
              itemCount: jsonList == null?0:jsonList.length,
              );
                  }
            }
          ),
        )              
    );
  }
}



















