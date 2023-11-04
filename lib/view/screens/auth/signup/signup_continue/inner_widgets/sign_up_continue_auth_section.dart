import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field can not be empty".tr;
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),

            //Address Text and TextField
            CustomText(text: "Address".tr, top: 16, bottom: 12),
            CustomTextField(
              textEditingController: controller.addressController,
              textInputAction: TextInputAction.next,
              hintText: "Enter your address".tr,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }
                return null;
              },
            ),

            const CustomText(text: "Country", top: 16, bottom: 12),
            CustomTextField(
              textEditingController: controller.countryController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              hintText: "Type country name",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }
                return null;
              },
            ),

            const CustomText(text: "City", top: 16, bottom: 12),
            CustomTextField(
              textEditingController: controller.cityController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              hintText: "Type city name",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }
                return null;
              },
            ),

            const CustomText(text: "State", top: 16, bottom: 12),
            CustomTextField(
              textEditingController: controller.stateController,
              keyboardType: TextInputType.text,
              hintText: "Type state name",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }
                return null;
              },
            ),

            const CustomText(text: "Lane no.", top: 16, bottom: 12),
            CustomTextField(
              textEditingController: controller.laneController,
              keyboardType: TextInputType.streetAddress,
              hintText: "Type lane no.",
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }
                return null;
              },
            ),

            const CustomText(text: "Postal Code", top: 16, bottom: 12),
            CustomTextField(
              textEditingController: controller.postalController,
              keyboardType: TextInputType.text,
              hintText: "Type postal code",
              textInputAction: TextInputAction.done,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }
                return null;
              },
            ),

            const SizedBox(height: 44),

            CustomElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setDataToLocalStore(controller,
                        phoneNumber: "${controller.phoneCode} ${controller.phoneNumberController.text}",
                        address: controller.addressController.text,
                        country: controller.countryController.text,
                        city: controller.cityController.text,
                        state: controller.stateController.text,
                        lane: controller.stateController.text,
                        postal: controller.postalController.text);
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
      {required String phoneNumber,
      required String address,
      required String country,
      required String city,
      required String state,
      required String lane,
      required String postal}) async {
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.phoneNumber, phoneNumber);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.address, address);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.country, country);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.city, city);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.state, state);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.lane, lane);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.postal, postal);

    if (kDebugMode) {
      print("phone number: $phoneNumber\n");
    }
    if (kDebugMode) {
      print("address: $address\n");
    }
    Get.toNamed(AppRoute.signUpBankScreen);
  }
}
