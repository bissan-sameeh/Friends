import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pitstrainintgpart1/core/utils/constants.dart';
import 'package:pitstrainintgpart1/features/main_screen.dart';
import 'package:pitstrainintgpart1/features/quiz/presentation/screens/discover_screen.dart';

import 'core/routers/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',

          theme: ThemeData(
              primaryColor: kMediumPurpleColor,
              useMaterial3: true,
              // scaffoldBackgroundColor: kWhite.withOpacity(0.5),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              fontFamily: 'Rubik',


          ),
          onGenerateRoute: generateRoute,

          home: MainScreen(),
        );
      },
    );
  }

}
