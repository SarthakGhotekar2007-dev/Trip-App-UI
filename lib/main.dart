import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:trip_app/Screens/welcome_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Trip App",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),

      home: 
      WelcomeScreen(),
    );
  }
}
