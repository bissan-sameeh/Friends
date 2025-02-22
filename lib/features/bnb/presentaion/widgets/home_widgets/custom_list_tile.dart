import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.leading,  this.trailing, this.isTrailing=true});
  final String leading;
  final String? trailing;
  final bool? isTrailing;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(leading,style: TextStyle(fontSize: 20.sp,color: Colors.black),),
        const Spacer(),
        if(isTrailing ==true ) Text(trailing!,style: TextStyle(fontSize: 14.sp,color: Theme.of(context).primaryColor),),

      ],
    );
  }
}
