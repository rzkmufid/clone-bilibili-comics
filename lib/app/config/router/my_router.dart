import 'package:bilibili_comics/app/config/router/my_routes.dart';
import 'package:bilibili_comics/app/modules/home/presentation/pages/home_details.dart';
import 'package:bilibili_comics/app/modules/home/presentation/pages/home_pages.dart';
import 'package:bilibili_comics/app/modules/main/presentation/pages/main_screen.dart';
import 'package:bilibili_comics/app/modules/profile/presentation/pages/profile_screen.dart';
import 'package:bilibili_comics/app/modules/splash/presentation/pages/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class MyRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static router() {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: '/home',
      routes: [
        GoRoute(
          path: '/splash',
          builder: (context, state) => const SplashPage(),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return MainScreen(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  name: MyRoutes.home,
                  path: '/home',
                  builder: (context, state) => const HomePages(),
                  routes: <RouteBase>[
                    GoRoute(
                      name: MyRoutes.homeDetails,
                      path: 'home-details/:nilai',
                      builder: (context, state) {
                        int nilai =
                            int.parse('${state.pathParameters["nilai"]}');
                        return HomeDetailScreens(
                          nilai: nilai,
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  name: MyRoutes.profile,
                  path: '/profile',
                  builder: (context, state) => const ProfileScreen(),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
