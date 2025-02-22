import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/features/bnb/data/models/home_model/quiz_model.dart';

class CustomCard extends StatelessWidget with ImageHelper {
  const CustomCard({super.key, required this.quizModel});
  final QuizModel quizModel;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(width: 2.w,color: const Color(0xffEFEEFC))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              clipBehavior: Clip.none,

              child: Image.asset( quizModel.image,fit: BoxFit.cover,)),
          SizedBox(width: 16.w,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(quizModel.title,style: TextStyle(fontSize: 16.sp,),

              ),
              SizedBox(height:6.h ,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///Subject
                  Text(quizModel.subject,style: buildTextStyle(),),
                  SizedBox(width: 4.w,),
                  ///Points
                  Padding(
                    padding:  EdgeInsets.only(top: 4.0.h),
                    child: const Icon(Icons.circle,size: 5,color: kMediumGray,),
                  ),
                  SizedBox(width: 2.w,),
                  Text(quizModel.points,style: buildTextStyle(),),

                ],
              )
            ],
          )),
          appSvgImage(path: "arrow",height: 24.h,width: 24.h),

        ],
      ),
    );
  }

  TextStyle buildTextStyle() => TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: kMediumGray);
}
