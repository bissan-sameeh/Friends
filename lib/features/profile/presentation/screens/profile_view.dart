import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/core/widgets/custom_app_bar.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/purple_part_structure.dart';
import 'package:pitstrainintgpart1/core/widgets/structure_of_stack/white_part_structure.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/content_white_part.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>with ImageHelper{
  @override
  Widget build(BuildContext context) {
    return


       Scaffold(
         backgroundColor: Theme.of(context).primaryColor,


         body: Column(
          children: [
            const CustomAppBar(

              path: 'setting_icon',
            ),
            Expanded(
              child: Stack(
                  children: [
                    const PurplePartStructure(),
                     WhitePartStructure(widget: const ContentWhitePart(),bottom: 0,top: MediaQuery.of(context).size.height /15 ,start: 8,end: 8,)
                  ],

                ),
            ),
          ],

             ),
       );

  }
}
