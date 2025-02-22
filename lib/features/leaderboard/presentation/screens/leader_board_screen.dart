import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_app_bar.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/purple_part_structure.dart';
import 'package:pitstrainintgpart1/features/leaderboard/presentation/widgets/leader_board/custom_purple.dart';
import 'package:pitstrainintgpart1/features/leaderboard/presentation/widgets/leader_board/white_leaderboard_part.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/structure_of_stack/white_part_structure.dart';
import '../widgets/custom_content_purple_part.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        
        children: [
          const CustomAppBar(title: 'LeaderBoard',),
            // SizedBox(height: 0,),
           Expanded(
             child: Stack(
               children: [
                 const PurplePartStructure(
                  widget: CustomContentPurplePart(subWidget: CustomPurple(),),
                         ),

           WhitePartStructure(
           end: 8,start: 8,bottom: 0,top: MediaQuery.of(context).size.height/1.5.h,             widget: const WhiteLeaderboardPart(


           ),

           backgroundColor: kTooLightPurpleWhiteBackground,
           ),

               ],
             ),
           ),
        ],
      ),
    );
  }
}
