import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taskmints/pages/onboarding.dart';
import 'package:taskmints/widget/scaffoldwidget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    
    super.initState();
    Timer(
     const Duration(seconds: 3), ()=>
        Navigator.pushReplacementNamed(context, 'onboarding')
    );
  }
  @override
  Widget build(BuildContext context) {
    double screenW=MediaQuery.of(context).size.width;
    double screenH=MediaQuery.of(context).size.height;
    return ScaffoldWidget(body: SizedBox(
      width: screenW,
      height: screenH,
      child: Center(
        child: Text('Taskmints',style: Theme.of(context).textTheme.headline1,),
      ),
    ));
  }
}