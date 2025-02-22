import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/features/friends/presentation/widgets/custom_friend_info.dart';
import 'package:pitstrainintgpart1/features/quiz/domain/entites/friends_model/friend_model.dart';

class WhiteLeaderboardPart extends StatefulWidget {
  const WhiteLeaderboardPart({super.key});

  @override
  State<WhiteLeaderboardPart> createState() => _WhiteLeaderboardPartState();
}

class _WhiteLeaderboardPartState extends State<WhiteLeaderboardPart> {
  List<FriendModel> friend = [
    FriendModel(
        image: 'assets/images/person_image.png',
        name: 'Maren Workman',
        flag: 'flag',
        points: 325),
    FriendModel(
        flag: 'flag',
        image: 'assets/images/person2_image.png',
        name: 'Brandon Matrovs',
        points: 124),
    FriendModel(
        flag: 'flag',
        image: 'assets/images/person_image.png',
        points: 124, name: 'Brandon Matrovs'),
    FriendModel(
        flag: 'flag',
        image: 'assets/images/person_image.png',
        name: 'Brandon Matrovs',
        points: 124),
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 16.w),
        itemBuilder: (context, index) {
          return CustomFriendInfo(friendModel: friend[index],isLeadShipScreen: true,text: (index + 1).toString(),) ;
        },
        separatorBuilder: (context, index) {
          return SizedBox(height:16.h ,);
        },
        itemCount: friend.length);
  }
}
