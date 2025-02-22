import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/routers/router.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/core/utils/style_helper.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, this.path, this.title});
 final  String? path;
 final String? title;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>with ImageHelper  {
  @override
  Widget build(BuildContext context) {
    return  Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 30.h,bottom:16,left: 8.w,right: 8.w),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.transparent, width: 0), // إزالة أي خط سفلي
            ),
          color: Theme.of(context).primaryColor,
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(

            onTap: () => NavigationRoutes().pop(context),
            child: Padding(
              padding:  EdgeInsets.only(left: 8.0.w),
              child:  Icon(Icons.arrow_back,color: kWhite,size: 24.h,),
            ),
          ),
         widget.title!=null ? Expanded(child: Center(child: Text(widget.title!,style: buildTextStyleAppBar(),))):SizedBox.shrink(),
          if(widget.path!=null)  appSvgImage(path: widget.path!)

        ],
      ),
    );
  }
}
