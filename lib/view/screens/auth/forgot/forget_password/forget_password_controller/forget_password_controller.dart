import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/forgot/forget_password/forget_password_model/foget_password_model.dart';
import 'package:renti_host/view/screens/auth/forgot/forget_password/forget_password_repo/forget_password_repo.dart';

class ForgetPasswordController extends GetxController {
  ForgetPasswordRepo forgetPasswordRepo;
  ForgetPasswordController({required this.forgetPasswordRepo});

  final TextEditingController emailController = TextEditingController();
  bool isSubmit = false;

  Future<void> forgetPassword() async {
    isSubmit = true;
    update();

    ApiResponseModel responseModel = await forgetPasswordRepo.forgetPasswordResult(email: emailController.text.trim().toString());

    if (responseModel.statusCode == 201) {
      isSubmit = false;
      update();
      await forgetPasswordRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.userEmailKey, emailController.text.trim().toString());
      Get.offAndToNamed(AppRoute.forgotPasswordOTPScreen);
      if (kDebugMode) {
        print("status code: ${responseModel.statusCode}");
      }
    } else {
      isSubmit = false;
      update();
      ForgetPassModel forgetPasswordModel = ForgetPassModel.fromJson(jsonDecode(responseModel.responseJson));
      Utils.snackBar("Error", forgetPasswordModel.message.toString());
      if (kDebugMode) {
        print("status code: ${responseModel.statusCode}");
      }
    }
    isSubmit = false;
    update();
  }
}
