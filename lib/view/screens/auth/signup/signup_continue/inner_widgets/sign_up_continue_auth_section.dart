import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_controller/sign_up_controller.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class SignUpContinueAuthSection extends StatefulWidget {
  const SignUpContinueAuthSection({super.key});

  @override
  State<SignUpContinueAuthSection> createState() =>
      _SignUpContinueAuthSectionState();
}

class _SignUpContinueAuthSectionState extends State<SignUpContinueAuthSection> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) => Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Phone Number".tr, bottom: 12),
            //Country Flag and Enter Phone Number TextField
            SizedBox(
              height: 56,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.whiteLight,
                      border: Border.all(
                          color: AppColors.whiteDark,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    child: const Row(
                      children: [
                        CustomImage(imageSrc: AppImages.flagImage, size: 40),
                        CustomText(
                            text: "+52",
                            left: 10,
                            color: AppColors.whiteNormalActive)
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      textEditingController: controller.phoneNumberController,
                      keyboardType: TextInputType.phone,
                      hintText: "Enter phone number".tr,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteNormalActive),
                    ),
                  ),
                ],
              ),
            ),

            //Address Text and TextField
            CustomText(text: "Address".tr, top: 16, bottom: 12),
            Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.whiteNormalActive),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.whiteLight),
              child: CustomTextField(
                textEditingController: controller.addressController,
                textInputAction: TextInputAction.done,
                fieldBorderColor: AppColors.whiteLight,
                hintText: "Enter your address".tr,
                hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteNormalActive),
              ),
            ),

            const CustomText(text: "Country", top: 16,bottom: 12),
            CustomTextField(
              textEditingController: controller.countryController,
              keyboardType: TextInputType.phone,
              hintText: "Type country name",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
            ),

            const CustomText(text: "City", top: 16,bottom: 12),
            CustomTextField(
              textEditingController: controller.cityController,
              keyboardType: TextInputType.phone,
              hintText: "Type city name",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
            ),

            const CustomText(text: "State", top: 16,bottom: 12),
            CustomTextField(
              textEditingController: controller.stateController,
              keyboardType: TextInputType.phone,
              hintText: "Type state name",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
            ),

            const CustomText(text: "Lane no.", top: 16,bottom: 12),
            CustomTextField(
              textEditingController: controller.laneController,
              keyboardType: TextInputType.phone,
              hintText: "Type lane no.",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
            ),

            const CustomText(text: "Postal Code", top: 16,bottom: 12),
            CustomTextField(
              textEditingController: controller.postalController,
              keyboardType: TextInputType.phone,
              hintText: "Type postal code",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
            ),

            const SizedBox(height: 44),

            CustomElevatedButton(
                onPressed: () {
                  if (controller.phoneNumberController.text.isNotEmpty &&
                      controller.addressController.text.isNotEmpty) {
                    setDataToLocalStore(controller,
                        phoneNumber: "${controller.phoneCode} ${controller.phoneNumberController.text}",
                        address: controller.addressController.text,
                    country: controller.countryController.text,
                    city:  controller.cityController.text,
                    state:  controller.stateController.text,
                    lane: controller.stateController.text,
                    postal: controller.postalController.text);
                  } else {
                    Utils.snackBar("Error","InputField Can't be Empty".tr);
                  }
                },
                buttonHeight: 48,
                buttonWidth: double.maxFinite,
                titleText: "Continue".tr),
          ],
        ),
      ),
    );
  }

  setDataToLocalStore(SignUpController signUpController,
      {required String phoneNumber, required String address,
        required String country, required String city,
        required String state, required String lane, required String postal}) async {
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.phoneNumber, phoneNumber);
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.address, address);
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.country, country);
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.city, city);
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.state, state);
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.lane, lane);
    await signUpController.signUpRepo.apiService.sharedPreferences.setString(SharedPreferenceHelper.postal, postal);

    if (kDebugMode) {
      print("phone number: $phoneNumber\n");
    }
    if (kDebugMode) {
      print("address: $address\n");
    }
    Get.toNamed(AppRoute.signUpBankScreen);
  }
}
