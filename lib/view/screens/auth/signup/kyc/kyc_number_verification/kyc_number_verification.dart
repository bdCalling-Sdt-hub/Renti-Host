import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/screens/auth/signup/kyc/kyc_number_verification/kyc_controller/kyc_controller.dart';
import 'package:renti_host/view/screens/auth/signup/kyc/kyc_number_verification/kyc_email_veri_repo/kyc_email_veri_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class KYCNumberVerification extends StatefulWidget {
  const KYCNumberVerification({super.key});

  @override
  State<KYCNumberVerification> createState() => _KYCNumberVerificationState();
}

class _KYCNumberVerificationState extends State<KYCNumberVerification> {

  final formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(VerifyEmailRepo(apiService: Get.find()));
    Get.put(KycController(verifyEmailRepo: Get.find()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: GetBuilder<KycController>(
        builder: (controller) {
          return Scaffold(
            extendBody: true,
            backgroundColor: AppColors.blueNormal,
            appBar: CustomAppBar(appBarContent: CustomBack(text: "Email Verification".tr)),
            body: Form(
              key: formKey,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) =>
                    CustomContainer(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "weSentEmail".tr,
                              fontSize: 16,
                              textAlign: TextAlign.start,
                              bottom: 24,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 100,
                                width: 100,
                                padding: const EdgeInsets.all(25),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF000B90),
                                ),
                                child: const CustomImage(imageSrc: AppIcons.otpIcon),
                              ),
                            ),
                            const SizedBox(height: 40),
                            PinCodeTextField(
                              length: 4,
                              onCompleted: (value) {
                                setState(() {
                                  otpController.text = value.toString();
                                });
                              },
                              obscureText: false,
                              keyboardType: TextInputType.number,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              textStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackNormal),
                              pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(8),
                                  disabledColor: Colors.blue,
                                  fieldHeight: 56,
                                  fieldWidth: 44,
                                  activeColor: AppColors.whiteNormalActive,
                                  inactiveColor: AppColors.whiteNormalActive,
                                  activeFillColor: AppColors.whiteNormalActive,
                                  inactiveFillColor: AppColors.whiteNormalActive,
                                  selectedFillColor: AppColors.whiteNormalActive,
                                  selectedColor: AppColors.whiteNormalActive),
                              controller: otpController,
                              backgroundColor: Colors.transparent,
                              enableActiveFill: false,
                              appContext: context,
                              autoDismissKeyboard: true,
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomText(text: "Did not get the OTP?".tr),
                                GestureDetector(
                                  onTap: () {
                                    controller.resendEmailVerify();
                                  },
                                  child: controller.isResend
                                      ? const Row(
                                    children: [
                                      Icon(Icons.check_circle_outline_outlined,size: 25,color: AppColors.blueNormal),
                                      Icon(Icons.check_circle_outline_outlined,size: 25,color: AppColors.blueNormal),
                                    ],
                                  ) : CustomText(
                                    text: "Resend OTP".tr,
                                    color: AppColors.blueNormal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
            ),
            bottomNavigationBar: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: controller.isSubmit
                  ?const Center(child: CircularProgressIndicator(),)
                  : CustomElevatedButton(
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      controller.emailVerify(otpController.text);
                    }
                  },
                  titleText: "Verify".tr),
            ),
          );
        }
      ),
    );
  }
}
