import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedData {
  String profileImage;
  String userName;
  String descrition;
  String address;
  int price;
  String completeTime;
  Color borderColor;

  FeedData(
      {required this.profileImage,
      required this.userName,
      required this.descrition,
      required this.address,
      required this.price,
      required this.completeTime,
      required this.borderColor});
}

List<FeedData> feedDataList = [
  FeedData(
    profileImage: 'images/profile.jpg',
    userName: 'John Smith',
    descrition:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida urna ut quis nibh semper',
    address: 'San Francisco',
    price: 2000,
    completeTime: 'Complete by Friday, 22/03/2021',
    borderColor: Color(0xFFEB5757),
  ),
  FeedData(
    profileImage: 'images/profile.jpg',
    userName: 'John Smith',
    descrition:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida urna ut quis nibh semper',
    address: 'San Francisco',
    price: 2000,
    completeTime: 'Complete by Friday, 22/03/2021',
    borderColor:  Color(0xFFF2C94C),
  ),
  FeedData(
    profileImage: 'images/profile.jpg',
    userName: 'John Smith',
    descrition:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida urna ut quis nibh semper',
    address: 'San Francisco',
    price: 2000,
    completeTime: 'Complete by Friday, 22/03/2021',
    borderColor: Color(0xFF2D9CDB),
  ),
  FeedData(
    profileImage: 'images/profile.jpg',
    userName: 'John Smith',
    descrition:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida urna ut quis nibh semper',
    address: 'San Francisco',
    price: 2000,
    completeTime: 'Complete by Friday, 22/03/2021',
    borderColor: Color(0xFF9B51E0),
  ),
];

// List<Color> feedBorderColor = [
//   Color(0xFFEB5757),
//   Color(0xFFF2C94C),
//   Color(0xFF2D9CDB),
//   Color(0xFF9B51E0),
// ];
