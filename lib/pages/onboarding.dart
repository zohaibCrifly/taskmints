import 'package:flutter/material.dart';
import 'package:taskmints/dataclass/onboadring_data.dart';
import 'package:taskmints/pages/myfeed.dart';
import 'package:taskmints/widget/footer_widget.dart';
import 'package:taskmints/widget/onboarding_pages.dart';
import 'package:taskmints/widget/scaffoldwidget.dart';

extension PageViewExtension on PageController {
  double get safePage {
    try {
       if(hasClients){
      return page!;
    }
    } catch (e) {
      
    }
      return 0;
  } 
}


class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller=PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double screenH=MediaQuery.of(context).size.height;
    double screenW=MediaQuery.of(context).size.width;
    return ScaffoldWidget(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 64).copyWith(bottom: 30),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 36),
                child: Text('Taskmints',style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if(_controller.safePage.round()!=0)
                    InkWell(onTap: (){
                      
                      _controller.previousPage(duration: Duration(milliseconds: 450), curve: Curves.ease);
                   
                    }, child:SizedBox(
                      width: 30,
                      height: 30,
                      child: Center(child: Image.asset('images/backarrow-icon.png',width: 10,height: 20,))), 
                   
                    )
                    else
                    SizedBox(height: 30,)
                    ,
                  ],
                ),
            ],
          ),
            
            SizedBox(
            
            height: screenH-370,
            // width: screenW-70,
            child:
             PageView(
              controller: _controller,
              children:onBoardingDataList.map((e) => OnBoardingPage(content: e)).toList(),
             onPageChanged: (change){
              setState(() {
                
              });
                 
             },
             
             )
            
          ),

          TextButton(
            onPressed: (){
               Navigator.pushReplacementNamed(context, 'myfeed');
            }, 
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Color(0xFF27AE60),fontSize: 14,letterSpacing: -.5,decoration: TextDecoration.underline)
            ),
            child: Text('Skip to my feed')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: 
                    List.generate(onBoardingDataList.length, (index) =>
                    AnimatedContainer(
                      margin: EdgeInsets.only(right: 12),
                      duration: Duration(milliseconds: 350),
                    width:(_controller.safePage ).round()==index?16: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color:(_controller.safePage ).round()  ==index?Color(0xFF27AE60) :Colors.white,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    )
                    )
                    
                  
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF27AE60),
                    fixedSize: Size(58, 34)
                  ),
                  onPressed: (){
                    if((_controller.safePage).round()<onBoardingDataList.length-1) {
                     
                      _controller.nextPage(duration: Duration(milliseconds: 450), curve: Curves.ease);
                    }else{
                      Navigator.pushReplacementNamed(context, 'myfeed');
                    }
                  }, child: Image.asset('images/nextarrow-icon.png',width: 18,height: 14,))
              ],
            ),

          FooterWidget()
      ],),
    ));
  }
}