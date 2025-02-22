import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_circular_image.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/widgets/home_widgets/custom_icon_text.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/style_helper.dart';

class PurplePart extends StatelessWidget with ImageHelper{
  const PurplePart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8,top: 28),
      child: Column(
      children: [
                ///Greeting
        Row(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomIconText(path: 'sun_icon', text: 'Good Morning',width: 20,height: 20,fontSize: 12, textColor: kLightPinkColor,),
                // Row(
                //   children: [
                //     appSvgImage(path: 'sun_icon',color:kLightPinkColor ),
                //     SizedBox(width: 1.5.w,),
                //     Text("Good Morning",style: TextStyle(
                //       letterSpacing: 0.4,
                //       fontSize: 12.sp,
                //       color: kLightPinkColor,
                //       fontWeight: FontWeight.w500,
                //
                //     ),)
                //   ],
                // ),
                SizedBox(height:4.h ,),
                Text("Madelyn Dias",style: TextStyle(color: kWhite,fontSize: 24.sp,),),

              ],
            ),
            const Spacer(),
           const  CustomCircularImage(path:'assets/images/person_image.png'),
          ],

        ),
        SizedBox(height: 24.h,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 16.h),
          decoration: buildBoxDecoration(color: kLightPinkColor),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("RECENT QUIZ",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color:  kBoldPinkColor.withOpacity(0.5),
                letterSpacing: 0.8
                ),),
                SizedBox(
                  height: 4.h ,
                ),
                 const CustomIconText(path: "headphone_icon", text: 'A Basic Music Quiz',width: 24,height: 24, textColor: kBoldPinkColor)
              ],
            ),
            const Spacer(),

            ///chart
            ///
          ],
        ),
        ),
        SizedBox(height:24.h ,),
        Container(
          padding: EdgeInsets.only(top: 16.w,right: 16.w,left: 16.w),
          decoration: buildBoxDecoration(color:kWhite.withOpacity(0.1)),
        child: Column(
          children: [
            Row(

             children: [
                 const CustomCircularImage(path:'assets/images/person_image.png'),
                 Expanded(

                     child: Padding(
                       padding:  EdgeInsets.only(right: 30.0.w),
                       child: Text("FEATURED",style:kHomeMediumTextStyle ,textAlign: TextAlign.center,),
                     )),

             ],
            ),
            SizedBox(height: 4.h,),
            Padding(
              padding:  EdgeInsets.only(left: 24.0.w),
              child: Text("Take part in challenges\n with friends or other\n players",textAlign:TextAlign.center,style: TextStyle(fontSize: 18.sp,color: kWhite),),
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
       crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 16.w),
                  decoration: buildBoxDecoration(color: kWhite),
                  child:CustomIconText(path: "find_friends", text: "Find Friends", textColor: Theme.of(context).primaryColor,fontSize: 14,)
                  ),
                ),
                SizedBox(width: 11.w,),
                const Padding(
                  padding: EdgeInsets.only(bottom: 24.0),
                  child: CustomCircularImage(path: 'assets/images/person_image3.png'),
                ),
              //  SizedBox(height: 24.h,),

              ],
            )

          ],
        ),
        )

      ],
          ),
    );
    
  }
}
