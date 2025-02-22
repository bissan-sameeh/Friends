
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/purple_part_structure.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/white_part_structure.dart';
import 'package:pitstrainintgpart1/features/quiz/presentation/widgets/quiz_widgets/purple_part/purple_part_quiz.dart';
import 'package:pitstrainintgpart1/features/quiz/presentation/widgets/quiz_widgets/white_part/white_part_quiz.dart';

import '../../../../core/utils/image_helper.dart';
class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> with ImageHelper {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: buildAppBar(context),
      
      body:  Stack(

        children: [
          const PurplePartStructure(widget: PurplePartQuiz()),
         WhitePartStructure(widget:  const WhitePartQuiz(),     end: 8.w,
           start: 8.w,
           bottom: 8.h,
           top: MediaQuery.of(context).size.height / 8,),

        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
    centerTitle: true,
    title:  Text("Discover",style: TextStyle(fontSize: 24.sp,color: kWhite),textAlign: TextAlign.center,),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),

        child: Icon(Icons.arrow_back,size: 24.h,color: kWhite,),
      ),

    );
  }
}
