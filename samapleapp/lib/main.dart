import 'package:flutter/material.dart';
import 'package:samapleapp/pages/cart_page.dart';
import 'package:samapleapp/pages/home_page.dart';
import 'package:samapleapp/pages/login_pages.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:samapleapp/utils/route_s.dart';
import 'package:samapleapp/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bringVegitable(thaila: true);
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      // home:HomePage(),
      // themeMode: ThemeMode.system,
      // theme: MyThemes.lightTheme(context),
      // darkTheme: MyThemes.darkTheme(context),

     //for dark theme
themeMode: ThemeMode.dark,
      theme: MyThemes.darkTheme(context),
      darkTheme: MyThemes.darkTheme(context),

      initialRoute: MyRoutes.loginRoutes,
      routes: {
        MyRoutes.loginRoutes:(context)=>LoginPage(),
        MyRoutes.homeRoutes:(context)=> HomePage(),
        MyRoutes.cartRoutes:(context)=> CartPage()
      },
    );

  }

  // bringVegitable(required bool thaila=false,int rupee=100)
  // {

  // }
}