import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/core/utils/style_helper.dart';

class CustomStatsContainer extends StatelessWidget with ImageHelper {
  const CustomStatsContainer({
    super.key, required this.result, required this.textFunctionName, required this.path, this.fontColor=kBlack, this.backgroundColor,
  });
  final String result;
  final String textFunctionName;
  final String path;
  final Color? fontColor;
  final Color? backgroundColor;



  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
        decoration: buildBoxDecoration(color: backgroundColor ??kWhite),
        child:Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(result,style: TextStyle(fontSize: 32.sp,color: fontColor,fontWeight: FontWeight.bold),),
                const Spacer(),
                   appSvgImage(path: path,height: 24,width: 24,color: fontColor),

              ],
            ),
            SizedBox(height:16.h ,),
            Text(textFunctionName,style: TextStyle(fontSize: 14.sp,color: fontColor,),),


          ],
        ) ,

      ),

    );
  }
}
