import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_text_field.dart';


class PurplePartQuiz extends StatefulWidget {

  const PurplePartQuiz({super.key});

  @override
  State<PurplePartQuiz> createState() => _PurplePartQuizState();
}

class _PurplePartQuizState extends State<PurplePartQuiz> {
  late TextEditingController malController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    malController=TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    malController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width /3 -40.w,
            child: CustomTextField(controller: malController,hint: 'Mall',prefixIcon: 'search_icon',),
          ),
        ),
        const SizedBox(
          width: double.infinity,
        )
      ],
    );
  }
}
