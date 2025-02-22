import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';

import '../../../../core/utils/constants.dart';

class CustomColumnInfo extends StatelessWidget with ImageHelper {
  const CustomColumnInfo({super.key, required this.path, required this.word, required this.unit});
  final String path;
  final String word;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return      Column(
      children: [
        appSvgImage(path: path,height:24.h,width: 24.h )   ,
        SizedBox(height: 3.h,),
        Text(word,style: TextStyle(fontSize: 12.sp,color:
        kWhite.withOpacity(0.2),letterSpacing: 0.04),),
        SizedBox(height: 3.h,),
        Text(unit,style: const TextStyle(fontWeight: FontWeight.w700,color: kWhite),)
      ],
    );
  }
}
