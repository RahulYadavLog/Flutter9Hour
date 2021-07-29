import 'package:flutter/material.dart';
import 'package:samapleapp/pages/home_page.dart';
import 'package:samapleapp/pages/login_pages.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bringVegitable(thaila: true);
    return MaterialApp(
      // home:HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/login":(context)=>LoginPage(),
        "/home":(context)=> HomePage()
      },
    );

  }

  bringVegitable({@required bool thaila=false,int rupee=100})
  {

  }
}