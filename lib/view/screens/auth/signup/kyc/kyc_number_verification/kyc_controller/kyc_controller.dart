import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/signup/kyc/kyc_number_verification/kyc_email_veri_repo/kyc_email_veri_repo.dart';

class KycController extends GetxController{
  VerifyEmailRepo verifyEmailRepo;
  KycController({required this.verifyEmailRepo});

  bool isSubmit = false;
  bool isResend = false;

  Future<void> emailVerify(String otp) async{
    isSubmit = true;
    update();

    ApiResponseModel responseModel = await verifyEmailRepo.emailVerifyResult(otp: otp);
    if (kDebugMode) {
      print("status code: ${responseModel.statusCode}");
    }
    if(responseModel.statusCode == 200){
      isSubmit = false;
      update();
      Get.offAllNamed(AppRoute.signInScreen);
      Utils.snackBar("Successful".tr,"Email verify successful".tr);
    }
    else{
      isSubmit = false;
      update();
      Utils.snackBar("Error".tr,"Failed to email verify".tr);
    }
  }

  Future<void> resendEmailVerify() async{
    isResend = true;
    update();
    ApiResponseModel responseModel = await verifyEmailRepo.resendOtpVerifyResult();
    if (kDebugMode) {
      print("status code: ${responseModel.statusCode}");
    }
    if(responseModel.statusCode == 201){
      isResend = false;
      update();
      Utils.snackBar("Successful".tr,"OTP Resend Successful".tr);
    }
    else{
      isResend = false;
      update();
      Utils.snackBar("Error".tr,"OTP Resend Failed".tr);
    }
    isResend = false;
    update();
  }
}