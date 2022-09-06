import 'package:flutter/material.dart';
import 'package:taskmints/dataclass/feed_data.dart';
class FeedCard extends StatelessWidget {
  const FeedCard({Key? key,required this.feed}) : super(key: key);
  
  final FeedData feed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.all(15).copyWith(top: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1,color: feed.borderColor)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1,color: Colors.white),
                      image: DecorationImage(image: AssetImage(feed.profileImage,),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(width: 12,),
                  Text(feed.userName,style: Theme.of(context).textTheme.headline5,)
                ],
              ),
            
              InkWell(
                onTap: (){},
                child: Image.asset('images/DotsThreeVertical.png',width: 32,height: 32,),
              )
            ],
          ),
            SizedBox(height: 12,),
          Text(feed.descrition,style: Theme.of(context).textTheme.headline3,),
            SizedBox(height: 17,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                     Image.asset('images/location.png',width:18 ,height: 18,),
                     SizedBox(width: 13,),
                     Text(feed.address,style: Theme.of(context).textTheme.headline6,)
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                     Image.asset('images/Money.png',width:18 ,height: 18,),
                     SizedBox(width: 13,),
                     Text('\$${feed.price}',style: Theme.of(context).textTheme.headline6,)
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                     Image.asset('images/completTime.png',width:18 ,height: 18,),
                     SizedBox(width: 13,),
                      Text(feed.completeTime,style: Theme.of(context).textTheme.headline6,)
                  ],
                ),
                
              ],
            ),
             InkWell(
              borderRadius: BorderRadius.circular(8),
               onTap: (){},
               child: Container(
                
                 width: 38,
                 height: 34,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   border: Border.all(width: 1,color: Colors.white)
                 ),
                 child: Center(
                   child: Image.asset('images/nextarrow-icon.png',width: 18,height: 14,),
                 ),
               ),
             )
          ],)  
        ],
      ),
    );
  }
}