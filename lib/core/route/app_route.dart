import 'package:get/get.dart';
import 'package:renti_host/view/screens/%20home/home_screen.dart';
import 'package:renti_host/view/screens/add_cars/add_cars_screen.dart';
import 'package:renti_host/view/screens/auth/forgot/forget_password/forgot_password_screen.dart';
import 'package:renti_host/view/screens/auth/forgot/new_password/new_password.dart';
import 'package:renti_host/view/screens/auth/forgot/otp/forgot_password_otp.dart';
import 'package:renti_host/view/screens/auth/kyc/kyc_email_verification/kyc_email_verification.dart';
import 'package:renti_host/view/screens/auth/kyc/kyc_first/kyc_screen.dart';
import 'package:renti_host/view/screens/auth/kyc/kyc_image/kyc_image_screen.dart';
import 'package:renti_host/view/screens/auth/kyc/kyc_number_verification/kyc_number_verification.dart';
import 'package:renti_host/view/screens/auth/signin/sign_in_screen.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_screen.dart';
import 'package:renti_host/view/screens/auth/signup_continue/sign_up_continue.dart';
import 'package:renti_host/view/screens/message/messages/messages_screen.dart';
import 'package:renti_host/view/screens/navbar/custom_navbar.dart';
import 'package:renti_host/view/screens/profile/profile_screen.dart';
import 'package:renti_host/view/screens/rent_request/user_request/user_request_screen.dart';
import 'package:renti_host/view/screens/search/search_screen.dart';
import 'package:renti_host/view/screens/select_language/select_language_screen.dart';
import 'package:renti_host/view/screens/splash/splash_screen.dart';

class AppRoute {

  static const String splashScreen = "/splash_screen";
  static const String selectLanguageScreen = "/select_language_screen";
  static const String signInScreen = "/sign_in_screen";
  static const String forgotPasswordScreen = "/forgot_password_screen";
  static const String forgotPasswordOTPScreen = "/forgot_password_otp";
  static const String newPasswordScreen = "/new_password";

  static const String signUpScreen = "/sign_up_screen";
  static const String signUpContinueScreen = "/sign_up_continue_screen";
  static const String kycScreen = "/kyc_screen";
  static const String kycImageScreen = "/kyc_upload_image";
  static const String kycNumberVerification = "/kyc_number_verification";
  static const String kycEmailVerification = "/kyc_email_verification";

  static const String navigation = "/navigation";
  static const String homeScreen = "/home_screen";
  static const String rentScreen = "/rent_screen";
  static const String messageScreen = "/message_screen";
  static const String profileScreen = "/profile_screen";

  static const String searchScreen = "/search_screen";
  static const String addCarsScreens = "/add_cars_screen";



  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: ()=>const SplashScreen()),
    GetPage(name: selectLanguageScreen, page: ()=> const SelectLanguageScreen()),
    GetPage(name: signInScreen, page: ()=> const SignInScreen()),
    GetPage(name: forgotPasswordScreen, page: ()=> const ForgotPasswordScreen()),
    GetPage(name: forgotPasswordOTPScreen, page: ()=> const ForgotPassOTP()),
    GetPage(name: newPasswordScreen, page: ()=> const NewPasswordScreen()),

    GetPage(name: signUpScreen, page: ()=> const SignUpScreen()),
    GetPage(name: signUpContinueScreen, page: ()=> const SignUpContinueScreen()),
    GetPage(name: kycScreen, page: ()=> const KYCScreen()),
    GetPage(name: kycImageScreen, page: ()=> const KYCImageScreen()),
    GetPage(name: kycNumberVerification, page: ()=> const KYCNumberVerification()),
    GetPage(name: kycEmailVerification, page: ()=> const KYCEmailVerification()),

    GetPage(name: navigation, page: ()=> const CustomNavBar()),
    GetPage(name: homeScreen, page: ()=> const HomeScreen()),
    GetPage(name: rentScreen, page: ()=> const UserRequestScreen()),
    GetPage(name: messageScreen, page: ()=> const MessageScreen()),
    GetPage(name: profileScreen, page: ()=> const ProfileScreen()),

    //Inner Screens
    GetPage(name: searchScreen, page: ()=> const SearchScreen()),
    GetPage(name: addCarsScreens, page: ()=> const AddCarsScreen()),
  ];
}