import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_card.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/widgets/home_widgets/custom_list_tile.dart';
import 'package:pitstrainintgpart1/features/quiz/domain/entites/friends_model/friend_model.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_choiced_pages.dart';

import '../../../../../bnb/data/models/home_model/quiz_model.dart';
import '../../../../../friends/presentation/widgets/custom_friend_info.dart';

class WhitePartQuiz extends StatefulWidget {
  const WhitePartQuiz({super.key});

  @override
  State<WhitePartQuiz> createState() => _WhitePartQuizState();
}

class _WhitePartQuizState extends State<WhitePartQuiz> {
  List<String> nameTopicPages = ['Top', 'Quiz', 'Categories', 'Friends'];
  List<QuizModel> quiz = [
    QuizModel(
        title: "Statistics Math Quiz",
        subject: "Math",
        points: "12 Quizzes",
        image: "assets/images/stat_image.png"),
    QuizModel(
        title: "Integers Quiz",
        subject: "Math",
        points: "10 Quizzes",
        image: "assets/images/stat_image.png"),
  ];
  List<FriendModel> friend = [
    FriendModel(
        image: 'assets/images/person_image.png',
        name: 'Maren Workman',
        flag: 'flag',
        points: 325),
    FriendModel(
      flag: 'flag',
        image: 'assets/images/person2_image.png',
        name: 'Brandon Matrovs',
        points: 124),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 32.w, left: 32.w, top: 40.h),
      decoration: BoxDecoration(
          color: kWhite, borderRadius: BorderRadius.circular(32.r)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomChoicedPages(
                    listPages: nameTopicPages,
                    index: selectedIndex,
                    onTap: (int itemIndex) {
                      setState(() {
                        selectedIndex = itemIndex;
                      });
                    },
                  ),
            SizedBox(height: 24.h,),
            const CustomListTile(leading: 'Quiz', trailing: 'see all'),
            ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
                // physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomCard(quizModel: quiz[index]);
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 16.h,
                    ),
                itemCount: 2),

            // Friends
            const CustomListTile(
              leading: 'Friends',
              isTrailing: false,
            ),

            ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomFriendInfo(friendModel: friend[index]);
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 16.h,
                    ),
                itemCount: 2),
          ],
        ),
      ),
    );
  }
}
