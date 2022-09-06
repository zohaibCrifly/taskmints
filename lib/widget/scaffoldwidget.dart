import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({Key? key,required this.body,this.backgroundColor,this.resizeToAvoidBottomInset}) : super(key: key);

  final Widget body;
  final bool? resizeToAvoidBottomInset;
  final Color?  backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor??Color(0xFF333333),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset??false,
      body: body,
    );
  }
}