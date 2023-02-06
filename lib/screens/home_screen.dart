// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:register/screens/hospitaldetailes_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:register/screens/recipe_card.dart';

class HomeScreen extends StatefulWidget {
  static const String screenRoute = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
var jsonList;
class _HomeScreenState extends State<HomeScreen> {
 Future fetchPhotos() async {
  var res = await Dio().get("http://192.168.43.8:8000/api/hospitals");
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
  Widget build(BuildContext context) =>  DefaultTabController(length: 4, 
  child: Padding(
    padding: const EdgeInsets.all(0.0),
    child: Scaffold(
      body: TextButton(
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> Hospitaldetailes_screen())); },
        child: GridView.builder(
          itemCount: jsonList == null?0:jsonList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3/2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 10,
            ), 
          itemBuilder: (ctx, index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
              child: RecipeCard(
                title: jsonList[index]['hospital_name'],
                rating: jsonList[index]['hospital_address'],
                cookTime: jsonList[index]['phone'],
                thumbnailUrl: 'images/kh.png',
              ),
            );
          },
          ),
      ),
  )));
      

}
