import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/forgot/new_password/new_password_repo/new_password_repo.dart';

class ResetPasswordController extends GetxController {
  ResetPasswordRepo resetPasswordRepo;
  ResetPasswordController({required this.resetPasswordRepo});

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  bool isSubmit = false;

  Future<void> forgetPassword() async {
    isSubmit = true;
    update();

    ApiResponseModel responseModel = await resetPasswordRepo.resetPasswordResult(password: passwordController.text.trim().toString());
    if (kDebugMode) {
      print("status code: ${responseModel.statusCode}");
    }

    if (responseModel.statusCode == 200) {
      isSubmit = false;
      update();
      Get.offAndToNamed(AppRoute.signInScreen);
      Utils.snackBar("Successful", "Password Reset Successful");
    } else {
      isSubmit = false;
      update();
      Utils.snackBar("Error", "Somethings went wrong");
    }
    isSubmit = false;
    update();
  }
}