import 'package:flutter/material.dart';
import 'package:pitstrainintgpart1/core/utils/image_helper.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/screens/home_view.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/screens/search_view.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/screens/statistics_view.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/screens/profile_view.dart';
import 'package:pitstrainintgpart1/features/quiz/presentation/screens/discover_screen.dart';

import '../core/utils/constants.dart';
import 'leaderboard/presentation/screens/leadership_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, Duration? duration});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with ImageHelper {
  int selectedIndex = 0;

  List<Widget> barScreens = [
    const HomeView(),
    const LeadershipScreen(),
    const DiscoverScreen(),
    // const StatisticsView(),
    const ProfileView(),
  ];

  List<BottomNavigationBarItem> get navBar => [
        BottomNavigationBarItem(
            icon: appSvgImage(
                path: 'home_icon',
                width: 24,
                height: 24,
                color: checkIndexColor(0) ? Colors.black : kLightGray),
            label: "Home"),
        BottomNavigationBarItem(
            icon: appSvgImage(
                path: 'search_icon',
                width: 24,
                height: 24,
                color: checkIndexColor(1) ? Colors.black : kLightGray),
            label: "Search"),
        BottomNavigationBarItem(
            icon: appSvgImage(
                path: 'statistics_icon',
                width: 24,
                height: 24,
                color: checkIndexColor(2) ? Colors.black : kLightGray),
            label: "Statistics"),
        BottomNavigationBarItem(
            icon: appSvgImage(
                path: 'profile_icon',
                width: 24,
                height: 24,
                color: checkIndexColor(3) ? Colors.black : kLightGray),
            label: "Profile")
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: barScreens[selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: Theme.of(context).primaryColor,
          // mini: true,
          child: const Icon(
            Icons.add,
            color: kWhite,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:  ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              boxShadow:
                  
              [
                BoxShadow(
                  offset: Offset(0,-10),
                  blurRadius: 40,
                  spreadRadius: 0,

                  color: Color(0xff062B2D1A),
                )
              ],
              
              // borderRadius: BorderRadius.circular(15),
            ),
            child: BottomAppBar(
                color: kWhite,
                

                height: 90,

                shape: const CircularNotchedRectangle(


                  ),


                elevation: 0,
                notchMargin: 9,
                clipBehavior: Clip.antiAlias,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4,(index) =>  InkWell(
                    onTap: () => setState(() {
                     selectedIndex = index;
                       print(selectedIndex);
                   }),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: navBar[index].icon,
                    ),
                  ))

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 8.0),
                    //   child: Icon(
                        // elevation: 0,
                        //
                        //   type: BottomNavigationBarType.fixed,
                        //   showSelectedLabels: false,
                        //   showUnselectedLabels: false,
                        //   backgroundColor: Colors.white,
                        //   selectedItemColor: Colors.black,
                        //   unselectedIconTheme:
                        //       const IconThemeData(color: kLightGray),
                        //   onTap: (index) => setState(() {
                        //         selectedIndex = index;
                        //         print(selectedIndex);
                        //       }),
                        //   currentIndex: selectedIndex,
                        //   items: navBar

                ),
                        ),
          ),

                  ),

              );

  }

  bool checkIndexColor(int index) => selectedIndex == index;
}
