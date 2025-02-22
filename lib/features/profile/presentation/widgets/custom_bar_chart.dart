import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        minY: 0,
        maxY: 100,

        barGroups: [
          BarChartGroupData(
            x: 0,

            barRods: [
              buildBarChartRodData(color: kLightPinkColor, toy: 30),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              buildBarChartRodData(color: kWhitePurpleColor, toy: 80),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              buildBarChartRodData(color: kTooLight2PurpleColor, toy: 60),

            ],
          ),
        ],

        gridData: FlGridData(
          drawVerticalLine: false,
          // verticalInterval: 25,

          // show: true,
          horizontalInterval: 25,
          getDrawingHorizontalLine: (value) {
           if( [0, 25, 50, 75, 100].contains(value.toInt())) {
             return FlLine(
                color: Colors.grey.withOpacity(0.5),
                strokeWidth: 1,
                dashArray: [10, 6],
              );
           }
           return const FlLine(
               color: Colors.transparent,
               strokeWidth: 0,
           );

          },
        ),

        borderData: FlBorderData(show: false),

        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 45, // المسافة بين الأرقام والرسوم
              getTitlesWidget: (value, meta) {
                if ([0, 25, 50, 75, 100].contains(value.toInt())) {
                  return Text(
                    ' ${value.toInt().toString()}%',
                    style: const TextStyle(color: kWhite, fontSize: 14),
                  );
                }
                return Container();
              },
              interval: 25,
            ),
          ),

          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                List<String> labels = ['3/10', '6/10', '8/10'];
                return Padding(
                  padding:  EdgeInsets.only(top: 8.h,bottom: 8.h),
                  child:Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Column(
                          mainAxisSize: MainAxisSize.min,

                          children:[ Text(
                          labels[value.toInt()],
                          style:  TextStyle(color: kWhite, fontSize: 14.sp),
                        ),
                          SizedBox(height: 4.h,),
                          FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 4.0),
                              child: Text("Questions\nAnswered",            textAlign: TextAlign.center,
                                  style: TextStyle(color: kWhite.withOpacity(0.5), fontWeight: FontWeight.w400,fontSize: 10.sp)),
                            ),
                          )
                      ]),
                    ],
                  ),
                );
              },
            ),
          ),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
      ),
    );
  }

  BarChartRodData buildBarChartRodData({required double toy, required Color color}) {
    return BarChartRodData(
                toY: toy,
                color:color,
                width: 36,
                borderRadius: BorderRadius.circular(12),

              );
  }
}
