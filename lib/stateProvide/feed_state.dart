import 'package:flutter/cupertino.dart';
import 'package:taskmints/dataclass/feed_data.dart';

class FeedState with ChangeNotifier{
  List<FeedData> _feedList=feedDataList;

  List<FeedData> get feedList=>_feedList;
}