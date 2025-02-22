import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_app_bar.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/purple_part_structure.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/white_part_structure.dart';
import 'package:pitstrainintgpart1/features/leaderboard/presentation/widgets/custom_content_white_part.dart';

import '../../../../core/utils/style_helper.dart';
import '../widgets/custom_content_purple_part.dart';

class LeadershipScreen extends StatefulWidget {
  const LeadershipScreen({super.key});

  @override
  State<LeadershipScreen> createState() => _LeadershipScreenState();
}

class _LeadershipScreenState extends State<LeadershipScreen> with ImageHelper{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:    Column(
        
        children: [
          const CustomAppBar(title: 'LeaderBoard',),
          Expanded(
            child: Stack(
              children: [
                const PurplePartStructure(widget: CustomContentPurplePart(),),
                 WhitePartStructure(widget:  const CustomContentWhitePart(),end: 8,start: 8,bottom: 0,top: MediaQuery.of(context).size.height/14.h,backgroundColor: kTooLightPurpleWhiteBackground,),
            
              ],
            ),
          ),
        ],
      ),
    );
  }

}
