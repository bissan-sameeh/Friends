import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_circular_image_stack.dart';
import 'package:pitstrainintgpart1/features/quiz/domain/entites/friends_model/friend_model.dart';

import '../../../../core/widgets/custom_circular_image.dart';

class CustomPlayer extends StatefulWidget {
  const CustomPlayer({super.key, required this.path, required this.name, required this.pointQp, this.isWinner=false});
  final String path;
  final String name;
  final bool? isWinner;
  final String pointQp;
  @override
  State<CustomPlayer> createState() => _CustomPlayerState();
}

class _CustomPlayerState extends State<CustomPlayer> {
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
  ];

  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        CustomCircularImageStack(path: widget.path,height: 56,width: 56,isWinner: widget.isWinner,flag: friend[0].flag,
        positionEnd: 0,
          positionBottom: 0,
        ),
        SizedBox(height: 16.h,),
        FittedBox(child: Text(widget.name,style: TextStyle(fontSize: 14.sp,color: kWhite),)),
        SizedBox(height: 4.h,),
        Container(
    padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
    decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: kLightPurpleColor,



        ),
   child: Row(
     children: [
       Text('${widget.pointQp} QP',style: TextStyle(color: kWhite,fontSize: 12.sp),),

     ],
   ),
        ),

      ],
    );
  }
}
