
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
typedef SelectedItem=Function(int);
class CustomTimeContainer extends StatelessWidget {
  const CustomTimeContainer({
    super.key, required this.text, required this.onTap, required this.index, required this.selectedContainer,
  });
  final String text;
  final SelectedItem onTap;
  final int index;
  final bool selectedContainer;

  @override
  Widget build(BuildContext context) {
    // bool selected=index==index;
    return InkWell(
      onTap: () => onTap(index),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 48.5.w,vertical:8.h ),
        decoration:selectedContainer ? BoxDecoration(borderRadius: BorderRadius.circular(16.r),
          color:  kLightPurpleColor,

        ):null,
        child: Text(text,style: TextStyle(color: kWhite,fontSize: 16.sp),),
      ),
    );
  }
}
