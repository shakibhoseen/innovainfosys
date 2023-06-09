import 'package:flutter/material.dart';
import 'package:small_home_application/utils/route/routes_name.dart';
import 'package:small_home_application/view/home_screen.dart';
import 'package:small_home_application/view/parent_screen.dart';


class Routes {
  static MaterialPageRoute genarateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      // case RoutesName.loginScreen:
      //   return MaterialPageRoute(
      //     builder: (context) =>  const LoginScreen(),
      //   );
      case RoutesName.parentScreen:
        return MaterialPageRoute(builder: (context) => const ParentScreen(),);
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("No page route define"),
            ),
          );
        });
    }
  }
}
