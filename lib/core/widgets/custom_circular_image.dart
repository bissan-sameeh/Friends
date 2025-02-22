
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularImage extends StatelessWidget {
  const CustomCircularImage({
    super.key, required this.path, this.width=56, this.height=56,
  });
  final String path;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(50.r),
        child: Image.asset(path,height: height,width: height,));
  }
}
