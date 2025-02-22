import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/style_helper.dart';
import 'package:pitstrainintgpart1/features/quiz/domain/entites/friends_model/friend_model.dart';

import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/widgets/custom_circular_image_stack.dart';

class CustomFriendInfo extends StatelessWidget {
  const CustomFriendInfo(
      {super.key,
      required this.friendModel,
      this.isLeadShipScreen = false,
      this.text,
      this.medalImage,
      });

  final FriendModel friendModel;
  final bool? isLeadShipScreen;
  final String? text;
  final String? medalImage;
 // final String? imageMedal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isLeadShipScreen == true
          ? EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h)
          : null,
      decoration:
          isLeadShipScreen == true ? buildBoxDecoration(color: kWhite) : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isLeadShipScreen!)
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 9.w),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWhite,
                  border: Border.all(width: 1.5, color: kTooLightGray)),
              child: Center(
                  child: Text(
                text!,
                style: TextStyle(color: kMediumGray, fontSize: 12.sp),
                textAlign: TextAlign.center,
              )),
            ),
          if (isLeadShipScreen!)
            SizedBox(
              width: 16.w,
            ),
          CustomCircularImageStack(
            path: friendModel.image,
            flag: friendModel.flag,
            positionBottom: 0,
            positionEnd: 0,
          ),
          SizedBox(
            width: 24.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  friendModel.name,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  '${friendModel.points} points',
                  style: TextStyle(fontSize: 16.sp, color: kMediumGray),
                ),
              ],
            ),
          ),
          if (isLeadShipScreen! && medalImage != null)
            Image.asset(
              medalImage!,
              fit: BoxFit.contain,
              height: 40.h,
              width: 40.w,
            )
        ],
      ),
    );
  }
}
