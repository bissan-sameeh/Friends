import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';
typedef SelectedItem= Function(int);
class CustomChoicedPages extends StatefulWidget {
  const CustomChoicedPages({super.key, required this.listPages, required this.index, required this.onTap});
 final List<String> listPages;
 final int index;
 final SelectedItem onTap;

  @override
  State<CustomChoicedPages> createState() => _CustomChoicedPagesState();
}

class _CustomChoicedPagesState extends State<CustomChoicedPages> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.listPages.map((item){
        int index=widget.listPages.indexOf(item);
        bool selected=widget.index == index;
        return   InkWell(
                onTap: () => widget.onTap(index),

          child: Column(
mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(item,style: TextStyle(color: selected ?Theme.of(context).primaryColor:kMediumGray,fontSize:14.sp,fontWeight:selected?FontWeight.bold: FontWeight.w400),),
              if(selected ) SizedBox(height:7.h ,),
              if(selected) CircleAvatar(radius: 5.h,backgroundColor: Theme.of(context).primaryColor,)
            ],),
        );

    }).toList()


    );
  }
}
