import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/utils/style_helper.dart';

class CustomCirclePercentIndicator extends StatelessWidget {
  const CustomCirclePercentIndicator({super.key, required this.percent});
  final int percent;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CircularPercentIndicator(
        radius: 100,
        lineWidth: 20.0,
        percent: 0.7,
        center: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(text: '$percent',style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: kBlack,
            fontSize: 24,),
              children: [
                TextSpan(text: '/50',style: buildTextStylePercentIndicator())
              ]
              ),

            ),
            SizedBox(height: 16.h,),
            Text('quiz played',style: buildTextStylePercentIndicator(),)
          ],
        ),
    progressColor: Theme.of(context).primaryColor,
    backgroundColor: kWhite,
    circularStrokeCap: CircularStrokeCap.round,
    ));
  }

}
