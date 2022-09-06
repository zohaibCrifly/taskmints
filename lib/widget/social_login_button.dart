import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({Key? key,required this.buttonText,required this.socialImage,this.onTap,this.height}) : super(key: key);
  final Function()? onTap;
  final String socialImage;
  final String buttonText;
  final double? height;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
                      onTap: onTap,
                      borderRadius: BorderRadius.circular(3),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 9,horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(width: 1,color: Colors.white)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         Image.asset(socialImage,width: 30,height: height??30,),
                         Text(buttonText,style: Theme.of(context).textTheme.headline4,),
                         SizedBox(width: 30,)
                          ],
                        ) ,
                        
                      ),
                    );
  }
}