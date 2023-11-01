import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/forgot/forget_password/forget_password_model/foget_password_model.dart';
import 'package:renti_host/view/screens/auth/forgot/otp/otp_model/otp_model.dart';
import 'package:renti_host/view/screens/auth/forgot/otp/otp_repo/otp_repo.dart';

class OtpController extends GetxController{
  OtpRepo otpRepo;
  OtpController({required this.otpRepo});
  TextEditingController otpController = TextEditingController();
  bool isSubmit = false;
  bool isResend = false;

  Future<void> otpVerify() async{
    isSubmit = true;
    update();

    ApiResponseModel responseModel = await otpRepo.otpVerifyResult(otp: otpController.text.trim().toString());
    if (kDebugMode) {
      print("status code: ${responseModel.statusCode}");
    }
    if(responseModel.statusCode == 200){
      OtpModel otpModel = OtpModel.fromJson(jsonDecode(responseModel.responseJson));
      if (kDebugMode) {
        print("Data: ${otpModel.message}");
      }
      Get.offAndToNamed(AppRoute.newPasswordScreen);
      isSubmit = false;
      update();
      Utils.snackBar("Successful", "OTP Verify Successful");
    } else{
      OtpModel otpModel = OtpModel.fromJson(jsonDecode(responseModel.responseJson));
      isSubmit = false;
      update();
      Utils.snackBar(otpModel.message??"Error","Error");
    }
    isSubmit = false;
    update();
  }

  Future<void> resendOtpVerify() async{
    isResend = true;
    update();
    ApiResponseModel responseModel = await otpRepo.resendOtpVerifyResult();
    if (kDebugMode) {
      print("status code: ${responseModel.statusCode}");
    }
    if(responseModel.statusCode == 201){
      ForgetPassModel forgetPassModel = ForgetPassModel.fromJson(jsonDecode(responseModel.responseJson));
      Utils.snackBar("Successful".tr,forgetPassModel.message.toString());
    }
    else{
      ForgetPassModel forgetPassModel = ForgetPassModel.fromJson(jsonDecode(responseModel.responseJson));
      Utils.snackBar("Error".tr,forgetPassModel.message.toString());
    }
    isResend = false;
    update();
  }
}