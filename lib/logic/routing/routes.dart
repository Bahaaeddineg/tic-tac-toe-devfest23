import 'package:flutter/material.dart';
import '../../constants/appRoutes.dart';
import '../../screens/MenuScreen/menuScr.dart';
import '../../screens/SplashScreen/splashscreen.dart';
import '../../screens/onePlayerScreen/onePlayerScr.dart';
import '../../screens/twoPlayersScreen/twoPlayersScr.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case singlePlayer:
        return MaterialPageRoute(
          builder: (context) => OnePlayerScreen(),
        );

      case twoPlayers:
        return MaterialPageRoute(
          builder: (context) => TwoPlayersScreen(),
        );
      case menu:
        return MaterialPageRoute(
          builder: (context) => MenuScreen(),
        );
    }
  }
}
