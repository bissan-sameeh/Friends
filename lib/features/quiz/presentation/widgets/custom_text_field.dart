import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';

import '../../../../core/utils/style_helper.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.controller, required this.hint, this.onTap, required this.prefixIcon});
  final TextEditingController controller;
  final String hint;
  final Function()? onTap;
  final String prefixIcon;


  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> with ImageHelper{
  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller:widget.controller ,
      onTap: widget.onTap,

      decoration: InputDecoration(
        fillColor: kBoldPurpleColor,
        filled: true,
        hintText: widget.hint,
        prefixIconConstraints:const BoxConstraints(),
        contentPadding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 16.w),
        hintStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: kTooLightGray,
        ),
        prefixStyle: const TextStyle(color: kTooLightGray),
        prefixIcon: Padding(
          padding:  EdgeInsets.only(left: 9.0.w),
          child: appSvgImage(path: widget.prefixIcon,height: 24.h,width: 24.h),
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder()
      ),
    );
  }


  }

