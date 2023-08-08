import 'package:get/get.dart';
import 'package:getx_mvvm/view/login/login_view.dart';
import 'routes_name.dart';
import '../../view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => const SplashScreen(),
            transitionDuration: const Duration(seconds: 2),
            transition: Transition.zoom),
        GetPage(
            name: RoutesName.loginView,
            page: () => const LoginView(),
            transitionDuration: const Duration(seconds: 2),
            transition: Transition.fade),
      ];
}
