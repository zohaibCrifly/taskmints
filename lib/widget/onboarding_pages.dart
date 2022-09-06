import 'package:flutter/material.dart';
import 'package:taskmints/dataclass/onboadring_data.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key,required this.content}) : super(key: key);
  final OnBoardingData content;
  @override
  Widget build(BuildContext context) {
    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(content.title,style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.center,),
                          SizedBox(height: 16,),
                          Text(content.description,
                          style: Theme.of(context).textTheme.headline3,textAlign: TextAlign.center,
                          ),
                           
                          ],
                      );
  }
}
// class OnBoardingPage2 extends StatelessWidget {
//   const OnBoardingPage2({Key? key,required this.content}) : super(key: key);
//   final OnBoardingData content;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(content.title,style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.center,),
//                           SizedBox(height: 16,),
//                           Text(content.description,
//                           style: Theme.of(context).textTheme.headline3,textAlign: TextAlign.center,
//                           ),
                           
//                           ],
//                       );
//   }
// }
// class OnBoardingPage3 extends StatelessWidget {
//   const OnBoardingPage3({Key? key,required this.content}) : super(key: key);
//   final OnBoardingData content;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(content.title,style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.center,),
//                           SizedBox(height: 16,),
//                           Text(content.description,
//                           style: Theme.of(context).textTheme.headline3,textAlign: TextAlign.center,
//                           ),
                           
//                           ],
//                       );
//   }
// }