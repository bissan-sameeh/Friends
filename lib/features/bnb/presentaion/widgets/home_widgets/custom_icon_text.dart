import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';

class CustomIconText extends StatelessWidget with ImageHelper {
  const CustomIconText({super.key, required this.path, required this.text, this.height=20, this.width=20, this.fontSize=18, required this.textColor});
  final String path;
  final String text;
  final Color textColor;
  final double? height;
  final double? width;
  final double? fontSize;


  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        appSvgImage( path: path,height: height,width: width),
        SizedBox(width:8.w ,),
        Text(text,style: TextStyle(fontSize: fontSize?.sp,color: textColor),)
      ],
    );
  }
}
