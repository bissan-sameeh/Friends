import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/core/utils/style_helper.dart';
import 'package:pitstrainintgpart1/features/profile/domain/entites/performance_model.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/custom_bar_chart.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/custom_legend_item.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/custom_stats_container.dart';

import '../../../../../core/utils/constants.dart';
import '../custom_circle_percent_indicator.dart';

class StatsWidget extends StatefulWidget {
  const StatsWidget({super.key});

  @override
  State<StatsWidget> createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidget> with ImageHelper {
  String selectedMonth = 'Monthly';
  int totalQuizzes = 24;
  List<PerformanceModel> performance = [
    PerformanceModel(subject: 'Math', color: kLightPinkColor, percent: 27),
    PerformanceModel(
        subject: 'Sports', color: kTooLight2PurpleColor, percent: 80),
    PerformanceModel(subject: 'Music', color: kWhitePurpleColor, percent: 52)
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Percent Chart
            Container(
              decoration: buildBoxDecoration(color: kTooLightPurpleColor),
              child: Column(
                children: [
                  Row(children: [
                    Image.asset(
                      "assets/images/container_image.png",
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.only(
                          top: 15.h, bottom: 15.h, left: 12.w, right: 2.w),
                      margin: EdgeInsets.only(
                          top: 16.0.h, right: 15.w, bottom: 24.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: kWhite,
                      ),
                      child: PopupMenuButton(
                        onSelected: (value) =>
                            setState(() => selectedMonth = value),
                        itemBuilder: (BuildContext context) {
                          return months
                              .map((e) => PopupMenuItem(
                                      child: Text(
                                    e,
                                    style: TextStyle(
                                        fontSize: 16.sp, color: kBlack),
                                  )))
                              .toList();
                        },
                        child: Row(
                          children: [
                            Text(
                              selectedMonth,
                              style: TextStyle(color: kBlack, fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            appSvgImage(
                                path: 'arrow_down_icon',
                                height: 16.h,
                                width: 16.h),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  //percent of played quizzes
                  Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: 'You have played a total \n',
                            style: buildTextStyleStats(),
                            children: [
                              TextSpan(
                                  text: '$totalQuizzes quizzes ',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Theme.of(context).primaryColor,
                                  )),
                              TextSpan(
                                  text: 'this Month!',
                                  style: buildTextStyleStats()),
                            ])),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),

                  ///percent ind
                  const CustomCirclePercentIndicator(
                    percent: 37,
                  ),

                  //create and evaluate
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 24.0.h, horizontal: 16.w),
                    child: Row(
                      children: [
                        const CustomStatsContainer(
                            result: '5',
                            textFunctionName: 'Quiz Created',
                            path: 'edit_icon'),
                        SizedBox(
                          width: 16.w,
                        ),
                        CustomStatsContainer(
                          result: '21',
                          textFunctionName: 'Quiz Won',
                          path: 'evaluate_icon',
                          fontColor: kWhite,
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Bar chart
            SizedBox(
              height: 24.h,
            ),

            Container(
              decoration:
                  buildBoxDecoration(color: Theme.of(context).primaryColor),
              margin: EdgeInsets.only(bottom: 16.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Top performance by category',
                        style: TextStyle(color: kWhite, fontSize: 20.sp),
                      )),
                      // const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: kWhite.withOpacity(0.2)),
                        child: appSvgImage(
                            path: 'statistics_icon', width: 24, height: 24),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  //legend
                  Row(
                    children: List.generate(
                      performance.length,
                      (index) => Row(
                        children: [
                          CustomLegendItem(
                              text: performance[index].subject!,
                              color: performance[index].color!),
                          SizedBox(
                            width: 32.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),

                  ///Chart
                  const AspectRatio(
                    aspectRatio: 1.6,
                    child: CustomBarChart(),
                  ),
                  SizedBox(
                    height: 40.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
