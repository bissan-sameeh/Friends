import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/core/utils/style_helper.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_choiced_pages.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_circular_image_stack.dart';
import 'package:pitstrainintgpart1/features/profile/domain/entites/info_model.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/profile_widgets/badge_widgets.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/custom_column_info.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/profile_widgets/details_widget.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/profile_widgets/stats_widget.dart';

import '../../../../core/routers/router.dart';

class ContentWhitePart extends StatefulWidget {
  const ContentWhitePart({super.key});

  @override
  State<ContentWhitePart> createState() => _ContentWhitePartState();
}

class _ContentWhitePartState extends State<ContentWhitePart> with ImageHelper {
  List<InfoModel> info = [
    InfoModel(icon: 'star_icon', text: 'Points', unit: '590'),
    InfoModel(icon: 'language_icon', text: 'WORLD RANK', unit: '#1,438'),
    InfoModel(icon: 'rank_icon', text: 'LOCAL RANK', unit: '#56')
  ];

  int selectedIndex=0;
  List<String> pages=[
    Routes.badgeScreen,
    Routes.statsScreen,
    Routes.detailsScreen,
    
  ];
  List<String> pagesName=['Badge','Stats','Details'];
  


  @override
  Widget build(BuildContext context) {

      return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          PositionedDirectional(
            top: -40,
            child: Center(
              child: CustomCircularImageStack(
                height: 100.h,
                width: 100.h,
                path: 'assets/images/person_image.png',
                flag: 'flag',
                heightFlag: 30.h,
                widthFlag: 37.w,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                const Center(
                  child: Text(
                    "Madelyn Dias",
                    style: TextStyle(color: Color(0xff0C092A), fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
   //             SizedBox(height: 24.h),
               // Info Card
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 16.h,top: 24.h),
                  decoration: buildBoxDecoration(color: Theme.of(context).primaryColor),
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(info.length, (index) {
                        return Row(
                          children: [
                            CustomColumnInfo(
                              path: info[index].icon,
                              word: info[index].text,
                              unit: info[index].unit,
                            ),
                            if (index != info.length - 1) //0 !=2 , 1!= 2 , 2!=2 false
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                                child: Container(
                                  decoration:BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        kWhite.withOpacity(0.1),
                                        kWhite.withOpacity(0.5),
                                        kWhite.withOpacity(0.1),
                                      ],
                                      stops: const [0.1, 0.5, 0.9],
                                    ),

                                  ),
                                  child: const VerticalDivider(
                                    indent: 2,
                                    width: 0.8,
                                  ),
                                ),
                              ),
                          ],
                        );
                      }),
                    ),
                  ),
                ),

                // Pages and Images
                Padding(
                  padding:  EdgeInsets.only(left: 56.0.w,right: 52.w),
                  child: CustomChoicedPages(listPages: pagesName, index: selectedIndex, onTap: (newIndex) {
                    setState(() =>
                     selectedIndex=newIndex
                    );
//                    NavigationRoutes().jump(context, pages[selectedIndex]);
                  },),
                ),

                SizedBox(height: 16.h,),

                selectedIndex==0 ?
                const BadgeWidget() :selectedIndex==1 ? const StatsWidget(): const DetailsWidget()

              ],
            ),
          ),
        ],
      );
    }

  }

