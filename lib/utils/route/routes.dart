import 'package:flutter/material.dart';
import 'package:small_home_application/utils/route/routes_name.dart';
import 'package:small_home_application/view/device_active_screen.dart';
import 'package:small_home_application/view/home_screen.dart';
import 'package:small_home_application/view/lamp_screen.dart';
import 'package:small_home_application/view/living_room_screen.dart';
import 'package:small_home_application/view/parent_screen.dart';
import 'package:small_home_application/view/room_screen.dart';
import 'package:small_home_application/view/splash_screen.dart';


class Routes {
  static MaterialPageRoute genarateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.splashScreen:
        return MaterialPageRoute(
          builder: (context) =>  const SplashScreen(),
        );
      case RoutesName.parentScreen:
        return MaterialPageRoute(builder: (context) => const ParentScreen(),);
        case RoutesName.deviceActiveScreen:
        return MaterialPageRoute(builder: (context) => const DeviceActiveScreen(),);
      case RoutesName.roomScreen:
        return MaterialPageRoute(
          builder: (context) => const RoomScreen(),
        );
        case RoutesName.lampScreen:
        return MaterialPageRoute(
          builder: (context) => const LampScreen(),
        );
        case RoutesName.livingRoomScreen:
        return MaterialPageRoute(
          builder: (context) => const LivingScreenRoom(),
        );
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
