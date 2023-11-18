import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/signin/sign_in_repo/sign_in_repo.dart';
import 'package:renti_host/view/screens/auth/signin/sign_in_response_model/sign_in_response_model.dart';

class SignInController extends GetxController {
  SignInRepo signInRepo;

  SignInController({required this.signInRepo});

  /* TextEditingController emailController = TextEditingController(text: "jarsh@gmail.com");
  TextEditingController passwordController = TextEditingController(text: "1qazxsw2");*/

  TextEditingController emailController =
      TextEditingController();
  TextEditingController passwordController =
      TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  bool remember = false;
  bool isSubmit = false;

  //Sign In Function that call for Authentication
  Future<void> signInUser() async {
    //Is SignIn Button Clicked then value is change to True
    isSubmit = true;
    update();

    //Call Api Using ApiResponseModel That is Use for the formatting the data
    ApiResponseModel responseModel = await signInRepo.signInUser(
        email: emailController.text.toString(),
        password: passwordController.text.toString());

    if (kDebugMode) {
      print(responseModel.statusCode);
      print(emailController.text);
      print(passwordController.text);
    }

    if (responseModel.statusCode == 200) {
      SignInResponseModel signInResponseModel = SignInResponseModel.fromJson(jsonDecode(responseModel.responseJson));
      await gotoNextStep(signInResponseModel);
    } else if (responseModel.statusCode == 401) {
      isSubmit = false;
      update();
      Utils.snackBar("Error".tr, "Invalid Email or password is not correct!".tr);
    } else if (responseModel.statusCode == 503) {
      isSubmit = false;
      update();
      Utils.snackBar("Error".tr, "Connection Error".tr);
    }
    isSubmit = false;
    update();
  }

  gotoNextStep(SignInResponseModel signInResponseModel) async {
    bool emailVerified = signInResponseModel.user?.emailVerified == false ? false : true;

    bool approved = signInResponseModel.user?.approved == false ? false : true;

    bool isBanned = signInResponseModel.user?.isBanned == "false" ? false : true;

    await signInRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.userIdKey, signInResponseModel.user?.id.toString() ?? "");

    await signInRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.accessTokenKey, signInResponseModel.accessToken ?? "");

    await signInRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.accessTokenType, "Bearer");

    await signInRepo.apiService.sharedPreferences.setString(
        SharedPreferenceHelper.userEmailKey,
        signInResponseModel.user?.email.toString() ?? "");
    await signInRepo.apiService.sharedPreferences.setString(
        SharedPreferenceHelper.userPhoneNumberKey,
        signInResponseModel.user?.phoneNumber.toString() ?? "");
    await signInRepo.apiService.sharedPreferences.setString(
        SharedPreferenceHelper.userNameKey,
        signInResponseModel.user?.fullName.toString() ?? "");

    if (emailVerified == false) {
      Get.offNamed(AppRoute.forgotPasswordOTPScreen);
    }

    if (emailVerified == true && approved == true) {
      signInRepo.apiService.sharedPreferences.setBool(SharedPreferenceHelper.rememberMeKey, true);
      clearData();
      Get.offAllNamed(AppRoute.navigation);
      Utils.snackBar("Successful".tr, "Successfully Signed In".tr);
    } else if (approved == false) {
      Utils.popUp("Please wait for admin approve to log in".tr, () => Get.back());
    } else if (isBanned == true) {
      Utils.snackBar("Successful".tr, "You Have Been Banned By Admin".tr);
    } else {
      Utils.snackBar("Error".tr, "Enter valid Email and Password".tr);
    }
  }

  changeRememberMe() {
    remember = !remember;
    update();
  }

  clearData() {
    remember = false;
    isSubmit = false;
    emailController.text = "";
    passwordController.text = "";
  }
}
