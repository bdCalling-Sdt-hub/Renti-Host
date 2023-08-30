import 'package:get/get.dart';
import 'package:renti_host/view/screens/%20home/home/home_screen.dart';
import 'package:renti_host/view/screens/auth/forgot_password/forgot_password_screen.dart';
import 'package:renti_host/view/screens/auth/signin/sign_in_screen.dart';
import 'package:renti_host/view/screens/select_language/select_language_screen.dart';
import 'package:renti_host/view/screens/splash/splash_screen.dart';

class AppRoute {

  static const String splashScreen = "/splash_screen";
  static const String selectLanguageScreen = "/select_language_screen";
  static const String signInScreen = "/sign_in_screen";
  static const String forgotPasswordScreen = "/forgot_password_screen";


  static const String homeScreen = "/home_screen";

  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: ()=>const SplashScreen()),
    GetPage(name: selectLanguageScreen, page: ()=> const SelectLanguageScreen()),
    GetPage(name: signInScreen, page: ()=> const SignInScreen()),
    GetPage(name: forgotPasswordScreen, page: ()=> const ForgotPasswordScreen()),

    GetPage(name: homeScreen, page: ()=> const HomeScreen()),
  ];
}