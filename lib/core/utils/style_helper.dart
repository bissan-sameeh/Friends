import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';

BoxDecoration buildBoxDecoration({required Color color}) {
  return  BoxDecoration(
    color: color,
      borderRadius: BorderRadius.circular(20.r),
  );
}

TextStyle kHomeMediumTextStyle=TextStyle(
    fontSize: 14.sp,
  color: Colors.white
);
TextStyle kHomeTextStyle=TextStyle(
    fontSize: 14.sp
);

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: kLightPurpleColor,width: 1.w),

  );}

Radius radiusContainer=Radius.circular(32.r);

TextStyle buildTextStyleStats() => TextStyle(fontSize: 20.sp,color: kBlack);
TextStyle buildTextStylePercentIndicator() => TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: kBlack.withOpacity(0.5));
TextStyle buildTextStyleAppBar() => TextStyle(fontSize: 24.sp,color: kWhite);

