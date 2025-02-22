import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custome_time_container.dart';

class CustomContentPurplePart extends StatefulWidget {
  const CustomContentPurplePart({super.key, this.subWidget});
  final Widget? subWidget;

  @override
  State<CustomContentPurplePart> createState() =>
      _CustomContentPurplePartState();
}

class _CustomContentPurplePartState extends State<CustomContentPurplePart> {
  int selectedItem = 0;
  bool selectedContainer = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).primaryColor,
          width: double.infinity,
          padding: EdgeInsets.only(left: 20.0.w,right: 20.w,bottom: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTimeContainer(
                index: 0,
                text: 'Weekly',
                onTap: (int value) {
                  setState(() {
                    selectedItem = value;

                    selectedContainer = selectedItem == 0;
                  });
                },
                selectedContainer: selectedContainer,
              ),
              CustomTimeContainer(
                index: 0,
                text: 'All Time',
                onTap: (int value) {
                  setState(() {
                    selectedItem = value;
                    selectedContainer = selectedItem == 1;
                  });
                },
                selectedContainer: !selectedContainer,
              ),
            ],
          ),
        ),
       widget.subWidget!=null ? widget.subWidget!:const SizedBox.shrink(),
      ],
    );
  }
}
