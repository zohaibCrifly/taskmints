import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:taskmints/pages/myfeed.dart';
import 'package:taskmints/pages/onboarding.dart';
import 'package:taskmints/pages/signin.dart';
import 'package:taskmints/stateProvide/feed_state.dart';
import 'package:taskmints/stateProvide/signin_state.dart';
import 'package:taskmints/pages/splashpage.dart';

void main() {
  runApp(MultiProvider(providers: [
ChangeNotifierProvider(create: (_)=>SignInState()),
ChangeNotifierProvider(create: (_)=>FeedState()),
  ],
    
    child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskmints',
      initialRoute: '/',
      routes: {
        '/':(context) => SplashPage(),
        'onboarding':(context) => OnBoarding(),
        'myfeed':(context) => MyFeed(),
        'login':(context) => SignIn()
      },
      theme: ThemeData(
        fontFamily: GoogleFonts.manrope().fontFamily,
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF27AE60),fontSize: 36,fontWeight: FontWeight.w800)),
          headline2: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700,letterSpacing: -.5,height: 1.5),
          headline3: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: -.5,height: 1.5),
          headline4: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: -.5,height: 1.5),
          headline5: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal,letterSpacing: -.5,height: 1.5),
          headline6: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.normal,letterSpacing: -.5,height: 1.5),
          // headline3: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF27AE60),fontSize: 18,fontWeight: FontWeight.w800)),
          
        ),
        
       
      ),
    );
  }
}

