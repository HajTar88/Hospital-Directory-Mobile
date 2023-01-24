// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:register/screens/home_screen.dart';
import 'package:register/screens/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:register/screens/schedule_screen.dart';
import 'package:register/screens/search_screen.dart';
import 'package:register/screens/selection_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';
/*class TabsScreen extends StatefulWidget {
    static const String screenRoute = 'tabs_screen';
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items:
        const <BottomNavigationBarItem>[
        //active color use on first
    
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,  ), activeIcon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.date_range_rounded ,   color: Colors.black,  ), activeIcon: Icon(Icons.date_range_rounded)),
        BottomNavigationBarItem(icon: Icon(Icons.qr_code,  color: Colors.black,  ), activeIcon: Icon(Icons.qr_code)),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,  color: Colors.black,  ), activeIcon: Icon(Icons.notifications)),
        BottomNavigationBarItem(icon: Icon(Icons.person,  color: Colors.black,  ), activeIcon: Icon(Icons.person))
        ],
      ) ,
          tabBuilder: (context , index) {
            switch (index) {
              case 0:
    
                return CupertinoTabView(builder:  (context) {
                  return CupertinoPageScaffold(child: HomeScreen(),);
                });
              case 1:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child:Container(child: Text("page dates "),),);
                });
              case 2:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child:Container(child: Text("page dates "),), );
                });
              case 3:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child: Container(child: Text("page dates "),), );
                });
              case 4:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child: Container(child: Text("page dates "),),);
                });
              default:
                CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child:HomeScreen());
                });
    
            }; return Container();
          }
      ),
    );
}}*/


































class TabsScreen extends StatefulWidget {
  static const String screenRoute = 'tabs_screen';
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }
  int _selectedScreenIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    NotificationsScreen(),
    SearchScreen(),
    ScheduleScreen(),
  ];
  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Align(
        alignment: Alignment.centerLeft,
        child: Image.asset("images/DIRECTORY LOdGO-02.png",width: 70,)),
      ),
      drawer: Drawer(
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("images/Hg.jpg"), ),
            accountName: Text("الحاج المختار"),
            accountEmail: null,
            ),
           ListTile(title: FlatButton(onPressed: () {Navigator.pushReplacementNamed(context, MainScreen.screenRoute);},child: Text("الرئيسية")), leading: Icon(Icons.home),),
           ListTile(title: FlatButton(onPressed: () {},child: Text("الملف الشخصي")), leading: Icon(Icons.person),),
           ListTile(title: FlatButton(onPressed: () {},child: Text("الاعدادات")), leading: Icon(Icons.settings),),
           ListTile(title: FlatButton(onPressed: () {},child: Text("حولنا")), leading: Icon(Icons.question_mark),),
        ]),
      ),
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar:BottomNavigationBar( 
        backgroundColor: Colors.black,
        onTap: _selectScreen,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedScreenIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'schedule',
          ),
        ],
      ) ,
    );
    
  }
}