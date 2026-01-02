import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:learning_getx/resources/routes/routes_name.dart';
import 'package:learning_getx/view/login/login_screen.dart';
import 'package:learning_getx/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 250),
    ),
    GetPage(
      name: RoutesName.loginScreen,
      page: () => LoginScreen(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 250),
    ),
  ];
}
