
import 'package:flutter/material.dart';
import 'package:pitstrainintgpart1/core/routers/routes.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/screens/home_view.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/screens/search_view.dart';
import 'package:pitstrainintgpart1/features/bnb/presentaion/screens/statistics_view.dart';
import 'package:pitstrainintgpart1/features/leaderboard/presentation/screens/leader_board_screen.dart';
import 'package:pitstrainintgpart1/features/leaderboard/presentation/screens/leadership_screen.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/profile_widgets/details_widget.dart';
import 'package:pitstrainintgpart1/features/profile/presentation/widgets/profile_widgets/stats_widget.dart';

import '../../features/main_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.mainScreen:
      return _getPageRoute(
        routeName: settings.name!,
        screen: const MainScreen(
          duration: Duration(seconds: 3),
        ),
      );
    case Routes.homeView:
      return _getPageRoute(
        routeName: settings.name!,
        screen: const HomeView(),
      );   case Routes.searchView:
      return _getPageRoute(
        routeName: settings.name!,
        screen: const SearchView(),
      );   case Routes.statisticsScreen:
      return _getPageRoute(
        routeName: settings.name!,
        screen: const StatisticsView(),
      );
      case Routes.statsScreen:
      return _getPageRoute(
        routeName: settings.name!,
        screen: const StatsWidget(),
      );
      case Routes.detailsScreen:
      return _getPageRoute(
        routeName: settings.name!,
        screen: const DetailsWidget(),
      );
      case Routes.leaderboardScreen:
      return _getPageRoute(
        routeName: settings.name!,
        screen: const LeaderBoardScreen(),
      );



    //


    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No Route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({
  required String routeName,
  required Widget screen,
}) {
  return PageTransition(
    child: screen,
    type: PageTransitionType.rightToLeft,
  );
}

enum PageTransitionType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
}

class PageTransition extends PageRouteBuilder {
  final Widget child;
  final PageTransitionType type;
  final Curve curve;
  final Alignment alignment;
  final Duration duration;

  PageTransition({
    required this.child,
    this.type = PageTransitionType.downToUp,
    this.curve = Curves.linear,
    this.alignment = Alignment.center,
    this.duration = const Duration(milliseconds: 300),
  }) : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return child;
          },
          transitionDuration: duration,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            switch (type) {
              case PageTransitionType.fade:
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              case PageTransitionType.rightToLeft:
                return SlideTransition(
                  transformHitTests: false,
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(-1.0, 0.0),
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                );

              case PageTransitionType.downToUp:
                return SlideTransition(
                  transformHitTests: false,
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(0.0, -1.0),
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                );

              case PageTransitionType.rightToLeftWithFade:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset.zero,
                        end: const Offset(-1.0, 0.0),
                      ).animate(secondaryAnimation),
                      child: child,
                    ),
                  ),
                );

              default:
                return FadeTransition(opacity: animation, child: child);
            }
          },
        );
}
