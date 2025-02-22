import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/routers/router.dart';
import 'package:pitstrainintgpart1/features/quiz/domain/entites/friends_model/friend_model.dart';

import '../../../friends/presentation/widgets/custom_friend_info.dart';

class CustomContentWhitePart extends StatefulWidget {
  const CustomContentWhitePart({super.key});

  @override
  State<CustomContentWhitePart> createState() => _CustomContentWhitePartState();
}

class _CustomContentWhitePartState extends State<CustomContentWhitePart> {
  List<FriendModel> friend = [
    FriendModel(
        image: 'assets/images/person_image.png',
        name: 'Maren Workman',
        flag: 'flag',
        medal: 'assets/images/medal_image.png',
        points: 325),
    FriendModel(
        flag: 'flag',
        image: 'assets/images/person2_image.png',
        name: 'Brandon Matrovs',
        medal: 'assets/images/medal_gray.png',
        points: 124),
    FriendModel(
        flag: 'flag',
        image: 'assets/images/person_image.png',
        name: 'Brandon Matrovs',
        medal: 'assets/images/medal_star.png',
        points: 124), FriendModel(
        flag: 'flag',
        image: 'assets/images/person_image.png',
        name: 'Brandon Matrovs',
        points: 124),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => NavigationRoutes().jump(context,Routes.leaderboardScreen),
                    child: CustomFriendInfo(
                      friendModel: friend[index],
                      isLeadShipScreen: true,
                      text: (index+1).toString(),
                      medalImage: friend[index].medal,
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemCount: 4)
          ],
        ),
      ),
    );
  }
}
