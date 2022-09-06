import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskmints/dataclass/feed_data.dart';
import 'package:taskmints/pages/signin.dart';
import 'package:taskmints/stateProvide/feed_state.dart';
import 'package:taskmints/widget/feed_card.dart';
import 'package:taskmints/widget/scaffoldwidget.dart';

class MyFeed extends StatelessWidget {
  const MyFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ScaffoldWidget(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 35).copyWith(bottom: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    
                    onTap: (){},
                    child: Image.asset('images/list-icon.png',width: 32,height: 32,),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
                  },
                   style: ElevatedButton.styleFrom(
                    primary: Color(0xFF27AE60),
                    fixedSize: Size(54, 31),
                    padding: EdgeInsets.zero
                   ),
                   child: Text('Login',style: TextStyle(fontSize: 14,letterSpacing: -.5),))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children:context.watch<FeedState>().feedList.map((e) => FeedCard(feed: e)).toList() 
                
              )
            ],
          ),
        ),
      ),
    );
  }
}