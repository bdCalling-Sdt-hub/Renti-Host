import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/auth/signup/sign_up_controller/sign_up_controller.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class SignUpAuthSection extends StatefulWidget {
  const SignUpAuthSection({super.key});

  @override
  State<SignUpAuthSection> createState() => _SignUpAuthSectionState();
}

class _SignUpAuthSectionState extends State<SignUpAuthSection> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Full name And TextField
            CustomText(text: "Full Name".tr, bottom: 12),
            CustomTextField(
              textEditingController: controller.fullNameController,
              hintText: "Enter full name".tr,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                }return null;
              },
            ),

            //Email and TextField
            CustomText(
              text: "Email".tr,
              top: 16,
              bottom: 12,
            ),
            CustomTextField(
              textEditingController: controller.emailController,
              textInputAction: TextInputAction.done,
              hintText: "Enter email".tr,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(controller.emailController.text)) {
                  return "Please enter your valid email".tr;
                } else {
                  return null;
                }
              },
            ),

            //Gender Selection
            CustomText(text: "Gender".tr, top: 16, bottom: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                controller.genderList.length,
                (index) => GestureDetector(
                  onTap: () => controller.changeGender(index),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        padding: const EdgeInsetsDirectional.all(0.5),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: AppColors.blackNormal.withOpacity(0.2),
                            ),
                            shape: BoxShape.circle),
                        child: Container(
                          decoration: BoxDecoration(
                              color: index == controller.selectedGender
                                  ? AppColors.blueDark
                                  : Colors.transparent,
                              shape: BoxShape.circle),
                        ),
                      ),
                      CustomText(text: controller.genderList[index].tr, left: 8),
                    ],
                  ),
                ),
              ),
            ),

            //Date Of Birth
            CustomText(text: "Date of Birth".tr, top: 16, bottom: 12),

            CustomTextField(
              hintText: "DD/MM/YY".tr,
              readOnly: true,
              textEditingController: controller.dateController,
              textInputAction: TextInputAction.next,
              inputTextStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.blackNormal,
              ),
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  color: AppColors.whiteNormalActive),

              onTap: ()=>controller.dateOfBirthPicker(context),
            ),

            //Password Text and TextField
            CustomText(text: "Password".tr, bottom: 12, top: 16),
            CustomTextField(
              textEditingController: controller.passwordController,
              isPassword: true,
              isPrefixIcon: true,
              hintText: "Enter password".tr,
              keyboardType: TextInputType.visiblePassword,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                } else if (value.length < 6) {
                  return "Password should be more than 6 characters".tr;
                }
                return null;
              },
            ),

            //Confirm Password Text and TextField
            CustomText(text: "Confirm Password".tr, bottom: 12, top: 16),
            CustomTextField(
              textEditingController: controller.confirmPasswordController,
              isPassword: true,
              textInputAction: TextInputAction.done,
              isPrefixIcon: true,
              hintText: "Confirm Password".tr,
              keyboardType: TextInputType.visiblePassword,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  color: AppColors.whiteNormalActive),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can not be empty".tr;
                } else if (value.length < 6) {
                  return "Password should be more than 6 characters".tr;
                } else if (controller.confirmPasswordController.text !=
                    controller.passwordController.text) {
                  return "Password doesn't match".tr;
                } else {
                  return null;
                }
              },
            ),

            const SizedBox(height: 24),

            CustomElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setDataToLocalStore(controller,
                        fullName: controller.fullNameController.text,
                        email: controller.emailController.text,
                        gender: controller.genderList[controller.selectedGender].toString(),
                        dob: controller.dateController.text,
                        password: controller.confirmPasswordController.text);
                  }
                },
                titleText: "Continue".tr,
                buttonWidth: double.maxFinite,
                buttonHeight: 48)
          ],
        ),
      ),
    );
  }

  setDataToLocalStore(SignUpController signUpController,
      {required String fullName,
      required String email,
      required String gender,
      required String dob,
      required String password}) async {
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.fullName, fullName);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.email, email);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.gender, gender);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.dob, dob);
    await signUpController.signUpRepo.apiService.sharedPreferences
        .setString(SharedPreferenceHelper.password, password);

    Get.toNamed(AppRoute.signUpContinueScreen);
  }
}
