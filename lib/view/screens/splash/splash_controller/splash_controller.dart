import 'package:get/get.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  // Function to check if the user is logged in
  Future<bool> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('email');
    return accessToken != null;
  }

  // Function to logout and clear the access token
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('email');
  }

  Future<void> setRememberMe() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(SharedPreferenceHelper.rememberMeKey, false);
  }

  Future<void> isLogIn() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString(SharedPreferenceHelper.accessTokenKey);
    if(accessToken != null){
      Get.offAllNamed(AppRoute.navigation);
    }
    else{

    }
  }
}
