// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:register/screens/appointment_screen.dart';
import 'package:register/screens/capabilities_screen.dart';
import 'package:register/screens/consultation_screen.dart';
import 'package:register/doctor_screen/doctor_login_screen.dart';
import 'package:register/screens/doctor_screen.dart';
import 'package:register/screens/hospital_doctor_screen.dart';
import 'package:register/screens/home_screen.dart';
import 'package:register/screens/hospitaldetailes_screen.dart';
import 'package:register/screens/login_screen.dart';
import 'package:register/screens/main_screen.dart';
import 'package:register/screens/registration_screen.dart';
import 'package:register/screens/selection_screen.dart';
import 'package:register/screens/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:register/screens/tabs_screen.dart';
import 'package:register/screens/transfer_screen.dart';

import 'doctor_screen/doctor_home_screen.dart';
import 'doctor_screen/doctor_tabs_screen.dart';
void main() {
  runApp(MyApp());
}
  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      localizationsDelegates: [
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: [
    Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
  ],
  initialRoute: MainScreen.screenRoute,
  routes: {
    MainScreen.screenRoute:(context) => MainScreen(),
    LoginScreen.screenRoute:(context) => LoginScreen(),
    RegistrationScreen.screenRoute:(context) => RegistrationScreen(),
    HomeScreen.screenRoute:(context) => HomeScreen(),
    TabsScreen.screenRoute:(context) => TabsScreen(),
    SelectionScreen.screenRoute:(context) => SelectionScreen(),
    Hospitaldetailes_screen.screenRoute:(context) => Hospitaldetailes_screen(),
    CapabilitiesScreen.screenRoute:(context) => CapabilitiesScreen(),
    HospitalDoctorScreen.screenRoute:(context) => HospitalDoctorScreen(),
    DoctorScreen.screenRoute:(context) => DoctorScreen(),
    AppointmentScreen.screenRoute:(context) => AppointmentScreen(),
    ConsultationScreen.screenRoute:(context) => ConsultationScreen(),
    TransferScreen.screenRoute:(context) => TransferScreen(),
    DoctorLoginScreen.screenRoute:(context) => DoctorScreen(),
    DoctorTabsScreen.screenRoute:(context) => DoctorTabsScreen(),
    DoctorHomeScreen.screenRoute:(context) => DoctorHomeScreen(),
  },

    );
  }
  }