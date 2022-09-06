import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:taskmints/dataclass/phone_country_code.dart';
import 'package:taskmints/stateProvide/signin_state.dart';
import 'package:taskmints/widget/footer_widget.dart';
import 'package:taskmints/widget/scaffoldwidget.dart';
import 'package:taskmints/widget/social_login_button.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  
 final countryCodes=countryCodeJson.map((e) => CountryCode.fromJson(e)).toList();
 
  final _phone=TextEditingController();
  final textFieldStyle= GoogleFonts.sourceSansPro(fontSize: 22,textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600));
  @override
  Widget build(BuildContext context) {
    
   CountryCode selectedCountyCode=context.watch<SignInState>().selectedPhoneCode;
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return ScaffoldWidget(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: screenH - 95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              'images/backarrow-icon.png',
                              width: 10,
                              height: 20,
                            ),
                          ),
                          Text('Sign In',style: Theme.of(context).textTheme.headline4,),
                          SizedBox(
                            width: 12,
                          )
                        ],
                      ),
                      SizedBox(height: 55,),
                      SocialLoginButton(
      
                        onTap: (){},
                        buttonText: 'Login with Google', 
                        socialImage: 'images/Google-Original.png'),
                      
                      SizedBox(
                      height: 24,
                      ),
                      SocialLoginButton(
                        
                        onTap: (){},
                        buttonText: 'Login with Twitter', 
                        socialImage: 'images/twitter.png',
                        height: 24.38),
                     
                      SizedBox(
                      height: 24,
                      ),
                       SocialLoginButton(
                        
                        onTap: (){},
                        buttonText: 'Login with Facebook', 
                        socialImage: 'images/Facebook-Original.png'),
                      
                     Padding(padding: EdgeInsets.symmetric(vertical: 45),
                     child: Text('Sign in with phone number',style: TextStyle(color: Colors.white),),
                     ),
                    
                     Row(
                      children: [
                        DropdownButtonHideUnderline(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.5),
                            width: 90,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade600,
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: DropdownButton<CountryCode>(
                               style: textFieldStyle,
                               
                               iconDisabledColor: Colors.white,
                               iconEnabledColor: Colors.white,
                               dropdownColor: Colors.grey.shade600,
                              value:selectedCountyCode,
                              items: countryCodes.map((e) => DropdownMenuItem<CountryCode>(value: e,child: Text(e.dialCode,) ,)).toList()
                             
                                            , onChanged: (dailCode){
                                context.read<SignInState>().changeCountryCode(dailCode);
                              }),
                          ),
                        ),
                        SizedBox(width: 10,),
                        SizedBox(
                          width: screenW-160,
                          // height: 48,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            style:textFieldStyle,
                          
                            controller: _phone,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(11),
                              isCollapsed: true,
                            border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(4)),
                            fillColor: Colors.grey.shade600,
                            filled: true
                            ),
                          ),
                        )
                      ],
                     ),
                     SizedBox(
                      height: 24,
                     ),
                     ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                      fixedSize: Size(screenW,47)
                     ),
                      child: Text('Receive OTP',style: Theme.of(context).textTheme.headline4,))
                  
                    ]),
              ),
              Center(child: FooterWidget())
            ],
          ),
        ),
      ),
    );
  }
}

