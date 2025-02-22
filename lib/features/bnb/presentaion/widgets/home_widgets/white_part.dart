
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/features/bnb/data/models/home_model/quiz_model.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/widgets/home_widgets/custom_list_tile.dart';

import '../../../../../core/widgets/custom_card.dart';

class WhitePart extends StatelessWidget {
  const WhitePart({
    super.key, required this.quiz,
  });
  final List<QuizModel> quiz;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomListTile(leading :'Live Quizzes', trailing: 'See all',),
            SizedBox(height: 16.h,),

            ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),

                itemBuilder: (context, index) {
               return CustomCard(quizModel: quiz[index],);
            }, separatorBuilder: (context, index) => SizedBox(height: 16.h,), itemCount: 2)


          ],
        ),
      ),
    );
  }

  Radius buildRadius() => Radius.circular(32.r);
}
