import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants.dart';

class BadgeWidget extends StatefulWidget {
  const BadgeWidget({super.key});

  @override
  State<BadgeWidget> createState() => _BadgeWidgetState();
}

class _BadgeWidgetState extends State<BadgeWidget> {
  List<String> images=List.generate(6, (index) => 'assets/images/image${index+1}.png',);


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing:24.w ,crossAxisSpacing: 24.h,

        ),
        itemBuilder: (BuildContext context, int index) {

          return Container(

              decoration: const BoxDecoration(color: kWhite,),
              child: Image.asset(images[index],fit: BoxFit.cover,));
        },
        itemCount: 6,



      ),
    );
  }
}
