// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:register/screens/hospitaldetailes_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String screenRoute = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) =>  DefaultTabController(length: 3, 
  child: Padding(
    padding: const EdgeInsets.all(0.0),
    child: Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, bottom:       
              TabBar(tabs: [
        Column(children: [Container(child: CircleAvatar(radius: 30,backgroundImage: AssetImage("images/kh.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),),SizedBox(height: 5,), Container(child: Text("الخرطوم", style: TextStyle(color: Colors.black),),)],),
        Column(children: [Container(child: CircleAvatar(radius: 30,backgroundImage: AssetImage("images/bh.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),),SizedBox(height: 5,), Container(child: Text("بحري", style: TextStyle(color: Colors.black),),)],),
        Column(children: [Container(child: CircleAvatar(radius: 30,backgroundImage: AssetImage("images/om.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),),SizedBox(height: 5,), Container(child: Text("امدرمان", style: TextStyle(color: Colors.black),),)],)
      ],),),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
        child: TabBarView(children: [
            Column(
              children: [
                FlatButton(              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Hospitaldetailes_screen  ()));// signup
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
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('رويال كير'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('الفيصل'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('فضيل'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('المعلم'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
              ],
            ),
            Column(
              children: [
                FlatButton(              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Hospitaldetailes_screen  ()));// signup
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
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('البراحة'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('شرق النيل'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('حاج الصافي'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('احمد قاسم'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
              ],
            ),
            Column(
              children: [
                FlatButton(              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Hospitaldetailes_screen  ()));// signup
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
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('امدرمان'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('السلاح الطبي'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('اسيا'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
                FlatButton(onPressed: (){print("object");}, child: 
                Card(  
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(  
                      mainAxisSize: MainAxisSize.min,  
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[  
                        const ListTile(  
                          minVerticalPadding: 25,
                          leading: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('علياء'),
                          ),
                          title: Align(alignment: Alignment.center, child: Text("0992603256")),
                          trailing: Image(image: AssetImage("images/rc.png")),  
                        ),  
                      ],  
                    ),  
                  )
                  ),
                  SizedBox(height: 20,),
              ],
            )
        ],),
      ),
    ),
  )
  );
}
/*Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 50,backgroundImage: AssetImage("images/kh.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
                SizedBox(width: 20,),
                CircleAvatar(radius: 50,backgroundImage: AssetImage("images/bh.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
                SizedBox(width: 20,),
                CircleAvatar(radius: 50,backgroundImage: AssetImage("images/om.png"), child: FlatButton(onPressed: (){}, child: Text(""),)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  FlatButton(onPressed: (){}, child: Text("الخرطوم")),
                  SizedBox(width: 35,),
                  FlatButton(onPressed: (){}, child: Text("بحري")),
                  SizedBox(width: 35,),
                  FlatButton(onPressed: (){}, child: Text("امدرمان"))
              ],
            ),
          ),
          Column(
            children: [
              FlatButton(              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  Hospitaldetailes_screen  ()));// signup
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
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text('رويال كير'),
                        ),
                        title: Align(alignment: Alignment.center, child: Text("0992603256")),
                        trailing: Image(image: AssetImage("images/rc.png")),  
                      ),  
                    ],  
                  ),  
                )
                ),
                SizedBox(height: 20,),
              FlatButton(onPressed: (){print("object");}, child: 
              Card(  
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Column(  
                    mainAxisSize: MainAxisSize.min,  
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[  
                      const ListTile(  
                        minVerticalPadding: 25,
                        leading: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text('رويال كير'),
                        ),
                        title: Align(alignment: Alignment.center, child: Text("0992603256")),
                        trailing: Image(image: AssetImage("images/rc.png")),  
                      ),  
                    ],  
                  ),  
                )
                ),
                SizedBox(height: 20,),
              FlatButton(onPressed: (){print("object");}, child: 
              Card(  
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Column(  
                    mainAxisSize: MainAxisSize.min,  
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[  
                      const ListTile(  
                        minVerticalPadding: 25,
                        leading: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text('رويال كير'),
                        ),
                        title: Align(alignment: Alignment.center, child: Text("0992603256")),
                        trailing: Image(image: AssetImage("images/rc.png")),  
                      ),  
                    ],  
                  ),  
                )
                ),
                SizedBox(height: 20,),
              FlatButton(onPressed: (){print("object");}, child: 
              Card(  
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Column(  
                    mainAxisSize: MainAxisSize.min,  
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[  
                      const ListTile(  
                        minVerticalPadding: 25,
                        leading: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text('رويال كير'),
                        ),
                        title: Align(alignment: Alignment.center, child: Text("0992603256")),
                        trailing: Image(image: AssetImage("images/rc.png")),  
                      ),  
                    ],  
                  ),  
                )
                ),
                SizedBox(height: 20,),
            ],
          )
        ],
      ), */