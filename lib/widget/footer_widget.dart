import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Privacy Policy | Terms and Conditions',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white.withOpacity(.8)));
  }
}