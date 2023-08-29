import 'package:get/get.dart';
import 'package:renti_host/view/screens/splash/splash_screen.dart';

class AppRoute {

  static const String splashScreen = "/splash_screen";

  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: ()=>const SplashScreen()),

  ];
}