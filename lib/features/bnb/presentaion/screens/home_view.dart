import 'package:flutter/material.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/purple_part_structure.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/white_part_structure.dart';
import 'package:pitstrainintgpart1/features/bnb/data/models/home_model/quiz_model.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/widgets/home_widgets/white_part.dart';

import '../widgets/home_widgets/purple_part.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<QuizModel> quiz=[
  QuizModel(title: "Statistics Math Quiz", subject: "Math", points: "12 Quizzes", image: "assets/images/stat_image.png"),
  QuizModel(title: "Integers Quiz", subject: "Math", points: "10 Quizzes", image: "assets/images/stat_image.png"),

  ];
  @override
  Widget build(BuildContext context) {
    return  Stack(
    children: [
      // Home part 1 purple part
      const PurplePartStructure(widget: PurplePart(),),
     WhitePartStructure(widget: WhitePart(quiz: quiz),  end: 0,
       start: 0,
       bottom: 0,

       top: MediaQuery.of(context).size.height *0.70,
     ) ,


    ],
    );
  }
}
