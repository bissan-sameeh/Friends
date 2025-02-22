import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';

class CustomLegendItem extends StatefulWidget {
  const CustomLegendItem({super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  State<CustomLegendItem> createState() => _CustomLegendItemState();
}

class _CustomLegendItemState extends State<CustomLegendItem> {
  @override
  Widget build(BuildContext context) {
    return  Row(

          children: [
            CircleAvatar(radius: 8.r,backgroundColor: widget.color),
            SizedBox(width: 7.w,),
            Text(widget.text,style: TextStyle(fontSize: 14.sp,color: kWhite),),
          ]


    );
  }
}
