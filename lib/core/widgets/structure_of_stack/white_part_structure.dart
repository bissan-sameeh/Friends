import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';

import '../../utils/style_helper.dart';

class WhitePartStructure extends StatelessWidget {
  const WhitePartStructure({super.key, required this.widget, this.end=0, this.start=0, this.bottom=0, this.top, this.backgroundColor=kWhite});
  final Widget widget;
  final double? end;
  final double? start;
  final double? bottom;
  final double? top;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return  PositionedDirectional(
        end: end,
        top: top,
        start: start,
        bottom: bottom,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: radiusContainer,topLeft:radiusContainer ),
                color: backgroundColor),
            child: widget));
  }
}
