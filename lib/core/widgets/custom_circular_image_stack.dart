
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_circular_image.dart';

class CustomCircularImageStack extends StatelessWidget with ImageHelper{
  const CustomCircularImageStack({
    super.key,
    this.height=56, this.width=56, this.path, this.flag, this.widthFlag=24, this.heightFlag=24, this.positionEnd=10, this.positionBottom=10, this.isWinner=false,
  });
  final double? height;
  final String? path;
  final String? flag;
  final double? width;
  final double? widthFlag;
  final double? heightFlag;
  final double? positionEnd;
  final double? positionBottom;
  final bool? isWinner;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior:  Clip.none,


      children: [

        CustomCircularImage(path: path!,height: height,width: width,),
        isWinner==true ?  PositionedDirectional(
            // top: 10,
          top: -15,
            start: 10,
            end: 10,
            child:Center(child: Image.asset('assets/images/medal_image.png',height: 40.h,width: 40.h))):SizedBox.shrink(),

        PositionedDirectional(
            bottom: positionEnd ,
             end:positionBottom,
            child:appSvgImage(path: flag!,height: heightFlag!.h,width: widthFlag!.h)),

      ],
    );
  }
}
