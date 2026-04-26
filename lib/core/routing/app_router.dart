import 'package:flutter/material.dart';
import 'package:sallihli/core/routing/routes.dart';
import 'package:sallihli/features/Client_Home/ui/client_home_screen.dart';
import 'package:sallihli/features/post_job/ui/post_job_screen.dart';
import 'package:sallihli/features/tradesperson_profile/ui/Tradesperson_Public_Profile.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      // case Routes.splash:
      //   return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.clientHome:
        return MaterialPageRoute(builder: (_) => const ClientHomeScreen());
      case Routes.tradespersonPublicProfile:
        return MaterialPageRoute(
          builder: (_) => const TradespersonPublicProfileScreen(),
        );
      case Routes.postJopScreen:
        return MaterialPageRoute(builder: (_) => const PostJobScreen());
      default:
        return null;
    }
  }
}
