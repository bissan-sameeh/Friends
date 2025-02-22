import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/utils/style_helper.dart';
import 'package:pitstrainintgpart1/features/leaderboard/presentation/widgets/custom_player.dart';
import 'package:pitstrainintgpart1/features/quiz/domain/entites/friends_model/friend_model.dart';

import '../../../../../core/utils/date_picker.dart';
import '../../../../bnb/presentaion/widgets/home_widgets/custom_icon_text.dart';

class CustomPurple extends StatefulWidget {
  const CustomPurple({super.key});

  @override
  State<CustomPurple> createState() => _CustomPurpleState();
}

class _CustomPurpleState extends State<CustomPurple> {
  Duration duration = const Duration(days: 6, hours: 23, minutes: 0);
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
  points: 124), FriendModel(
  flag: 'flag',
  image: 'assets/images/person2_image.png',
  name: 'Brandon Matrovs',
  medal: 'assets/images/medal_gray.png',
  points: 124)

  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.h),
            padding:const EdgeInsets.all(16) ,
            decoration:buildBoxDecoration(color: const Color(0xffFFB380)) ,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 14.h,horizontal: 20.w),
                  decoration: buildBoxDecoration(color: const Color(0xffFF9B57)),
                  child: Text("#4",style: TextStyle(
                      fontSize:    24.sp,color: kWhite
                  ) ,),
                ),
                SizedBox(width: 16.w,),
                Expanded(child: Text("You are doing better than 60% of other players!",style: TextStyle(fontSize: 16.sp,color: kWhite),)),
              ],

            ),
          ),
          SizedBox(height: 16.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: const Color(0xff5144B6),

                ),
                child: CustomIconText(path: 'clock_icon', text: formatDuration(duration), textColor: kWhite,fontSize: 14,),
              ),
            ],
          ),

          SizedBox(
            height: 310.h,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                 Positioned(
                     top: 60.h,
                     left: 0,
                     child: CustomPlayer(path: friend[0].image, name: friend[0].name, pointQp: friend[0].points.toString(),)),
                 SizedBox(width: 20.w,),
                 Positioned(
                     top: 10.h,

                     child: CustomPlayer(path: friend[1].image, name: friend[1].name, pointQp: friend[1].points.toString(),isWinner: true,)),
                 SizedBox(width: 20.w,),

                Positioned(
                     top: 70.h,
                     right: 0,
                     child: CustomPlayer(path: friend[1].image, name: friend[1].name, pointQp: friend[1].points.toString(),)),
                 SizedBox(width: 20.w,),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      width: double.infinity,
                      child: Image.asset('assets/images/podium.png',fit: BoxFit.cover,height: 140.h,
                                            )),
                ),


              ],
            ),
          ),



        ],
      ),
    );
  }
}
